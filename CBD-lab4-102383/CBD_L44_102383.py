from neo4j import GraphDatabase

class CBD_L44_102383:
    def __init__(self, uri, user, password):
        self.driver = GraphDatabase.driver(uri, auth=(user, password))
        
    def close(self):
        self.driver.close()
        
    
    def insert_data(self):
        with self.driver.session() as session:
            session.run("""
                LOAD CSV WITH HEADERS
                FROM "file:///GBvideos.csv" AS Row
                MERGE (video:VIDEO {video_id: Row.video_id})
                SET video.title=Row.title, video.views=Row.views, video.likes=Row.likes, video.dislikes=Row.dislikes,
                video.comment_count=Row.comment_count, video.description=Row.description
                MERGE (author:Author {authors_name:Row.channel_title})                       
            """)
    
    def insert_rels(self):
        with self.driver.session() as session:
            session.run("""
                LOAD CSV WITH HEADERS
                FROM "file:///GBvideos.csv" AS Row
                MATCH (author:Author {authors_name:Row.channel_title}), (video:VIDEO {video_id: Row.video_id})
                CREATE (author)-[:PUBLISHED {publish_time: Row.publish_time}]->(video)
            """)
            session.run("""
                LOAD CSV WITH HEADERS
                FROM "file:///GBvideos.csv" AS Row
                MATCH (author:Author {authors_name:Row.channel_title}), (video:VIDEO {video_id: Row.video_id})
                CREATE (author)-[:TRENDING {trending_date: Row.trending_date}]->(video)
            """)
            
    def query(self, query):
        f = open("CBD_L44c_output.txt", "a")
        res = self.driver.session().run(query)
        f.write("\nQuery: {}\n".format(query))
        
        results=[r for r in res.data()]
        
        for r in results:
            f.write(f"\t{r}\n")
        
        
if __name__ == "__main__":
    try:
        bd = CBD_L44_102383("bolt://localhost:7687", "neo4j", "password")
        bd.insert_data()
        
        # query 1
        q1 = ("match (video: VIDEO) return video.title as title, video.likes as likes;")
        res1 = bd.query(q1)
        
        # query 2
        q2 = ("match (author:Author)-[:PUBLISHED]->(video: VIDEO) return video.title as title, video.views as views, author.authors_name as author  order by views desc limit 1;")
        res2 = bd.query(q2)
        
        # query 3
        q3 = ("match (author:Author)-[:PUBLISHED]->(video: VIDEO) return author.authors_name as author, count(video) as n_videos;")
        res3 = bd.query(q3)
        
        # query 4
        q4 = ("match (author:Author)-[relation:TRENDING]->(video: VIDEO) where  relation.trending_date = '18.22.02' return author.authors_name as author, video.title as title;")
        res4 = bd.query(q4)
        
        # query 5
        q5 = ("match (author:Author)-[:PUBLISHED]->(video: VIDEO) where  author.authors_name = 'Taylor Swift' return distinct video.title as title, video.likes as likes order by likes desc limit 5;")
        res5 = bd.query(q5)
        
        # query 6
        q6 = ("match (video: VIDEO) return distinct video.title as title, video.description as description, video.comment_count as comment_count order by video.comment_count asc;")
        res6 = bd.query(q6)
        
        # query 7
        q7 = ("match (author:Author)-[relation:TRENDING]-(video:VIDEO) with relation.trending_date as trending_date, count(video) as n_videos return trending_date, n_videos order by n_videos desc limit 1;")
        res7 = bd.query(q7)
        
        # query 8
        q8 = ("match (author:Author)-[relation:PUBLISHED]-(video:VIDEO) where video.title contains 'Google' return distinct author.authors_name as author, video.title as title;")
        res8 = bd.query(q8)
        
        # query 9
        q9 = ("match (author:Author)-[:PUBLISHED]-(video:VIDEO) where video.description = ' ' return distinct author.authors_name as author, video.title as title;")
        res9 = bd.query(q9)
        
        # query 10
        q10 = ("match (author:Author)-[:PUBLISHED]-(video:VIDEO)  where video.views ='9815' return distinct author.authors_name as author, video.title as title;")
        res10 = bd.query(q10)
        
        bd.close()
    except Exception as e:
        print("Something went wrong... ", e)