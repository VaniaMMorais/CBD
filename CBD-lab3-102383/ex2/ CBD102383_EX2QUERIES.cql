-- 1
select * from videos_comentarios where id_video = 10 limit 3;

-- 2
select tags from videos where id = 4;

-- 3
select * from tags_por_video where tag = 'Aveiro';

-- 4
select tipo from eventos where id_video = 1 and utilizador = 'teresa' limit 5;

-- 5
select * from videos_por_autor where autor = 'vania' and data = '2022-12-04 19:31:21.559';

-- 6
-- nao dá para fazer porque na tabela videos a partition key é id, logo não é possível ordenar os videos, visto que apenas é possível obter um vídeo (através do id)

-- 7
select * from followers where id_video = 11;

-- 8
select * from comentario_por_follower where follower = 'vania';

-- 9
-- apenas dá para fazer os 5 maiores ratings de um video, porque a partition key é id_video

-- 10
select token(id), nome from videos;
-- os hash values sao distribuidos por 4 nós, onde em cada nó existe um range de hash values

-- 11
-- Só dá para contar uma coluna de cada vez como no exemplo abaixo
select count(*) as num_videos, tag from tags_por_video where tag = 'Jogos';

-- 12 Contar quantos vídeos têm rating igual a 5. É usado o "ALLOW FILTERING" porque não é possível fazer a query sem ele.
select count(*) as num, valor from ratings where valor = 5 ALLOW FILTERING ;

