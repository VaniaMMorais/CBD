package com.lab2.alineaC;

import com.mongodb.client.MongoClients;

import com.mongodb.client.FindIterable;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import static com.mongodb.client.model.Filters.*;
import com.mongodb.client.model.Projections;

import org.bson.Document;

public class Main {
    public static void main(String[] args) {
        MongoClient mongoClient = MongoClients.create();
        MongoDatabase db = mongoClient.getDatabase("CBD");
        MongoCollection<Document> collection = db.getCollection("restaurants");

        /* 1st QUERY */
        //4. Indique o total de restaurantes localizados no Bronx.
        //db.restaurants.find({localidade:"Bronx"}).count()
        Document condition = new Document("localidade","Bronx");
        FindIterable<Document> it1 = collection.find(condition);
        MongoCursor<Document> cursor1 = it1.iterator();
        int count = 0;
        while (cursor1.hasNext()) {
            System.out.println(cursor1.next().toJson());
            count++;
        }
        System.out.println("Count: "+count);

        /* 2nd QUERY */
        //5. Apresente os primeiros 15 restaurantes localizados no Bronx, ordenados por
        //ordem crescente de nome.
        System.out.println("2nd QUERY");
        Document condition2 = new Document("localidade","Bronx");
        FindIterable<Document> it2 = collection.find(condition2);
        MongoCursor<Document> cursor2 = it2.sort(new Document("nome",1)).limit(15).iterator();
        int count2 = 0;
        while (cursor2.hasNext()) {
            System.out.println(cursor2.next().toJson());
            count2++;
        }
        System.out.println("Count: "+count2);

        /* 3rd QUERY */
        //6. Liste todos os restaurantes que tenham pelo menos um score superior a 85.
        System.out.println("3rd QUERY");
        FindIterable<Document> it3 = collection.find(gte("grades.score",85));
        MongoCursor<Document> cursor3 = it3.iterator();
        int count3 = 0;
        while (cursor3.hasNext()) {
            System.out.println(cursor3.next().toJson());
            count3++;
        }
        System.out.println("Count: "+count3);
        
        /* 4th QUERY */
        //8. Indique os restaurantes com latitude inferior a -95,7.
        System.out.println("4th QUERY");
        FindIterable<Document> it4 = collection.find(lt("address.coord.0",-95.7));
        MongoCursor<Document> cursor4 = it4.iterator();
        int count4 = 0;
        while (cursor4.hasNext()) {
            System.out.println(cursor4.next().toJson());
            count4++;
        }
        System.out.println("Count: "+count4);

        /* 5th QUERY */
        //Liste o nome, a localidade e a gastronomia dos restaurantes que pertencem ao Bronx e cuja gastronomia é do tipo "American" ou "Chinese".
        System.out.println("5th QUERY");

        FindIterable<Document> it5 = collection.find(and(eq("localidade", "Bronx") , or(eq("gastronomia", "American"), eq("gastronomia", "Chinese")))).projection(Projections.include("nome" , "localidade", "gastronomia"));
        MongoCursor<Document> cursor5 = it5.iterator();
        int count5 = 0;
        while (cursor5.hasNext()){
            System.out.println(cursor5.next().toJson());
            count5 ++;
        }
        System.out.println("Count: " + count5);
    
    }
}
