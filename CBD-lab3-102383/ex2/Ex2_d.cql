--1. Últimos 3 comentários introduzidos para um vídeos:
SELECT * FROM comentarios_por_video WHERE video_id = 0a21e2ec-bc52-440e-9ad5-2b2f7c1b545e ORDER BY momento_temporal DESC LIMIT 3;

--2. Listas das tags de determinado vídeo:
SELECT tags FROM videos WHERE video_id = 0a21e2ec-bc52-440e-9ad5-2b2f7c1b545e;

--3. Todos os vídeos com tag Aveiro:
-- Primeiro cria-se uma nova tabela para esta query mais específica:
CREATE TABLE videos_by_tag (
    tag text,
    video_id uuid,
    PRIMARY KEY (tag, video_id)
);
-- Depois insere-se os dados:
INSERT INTO videos_by_tag (tag, video_id) VALUES ('Aveiro', 0a21e2ec-bc52-440e-9ad5-2b2f7c1b545e);
-- Por fim é que escrevemos a query:
SELECT * FROM videos_by_tag WHERE tag = 'Aveiro';

--4. Os últimos 5 eventos de determinado vídeo realizados por um utilizador:
SELECT * FROM eventos WHERE video_id = 0a21e2ec-bc52-440e-9ad5-2b2f7c1b545e AND username_utlizador = 'bob' ORDER BY registo_temporal DESC LIMIT 5;

--5. Videos partilhados por determinado utilizador num determinado periodo de tempo:
SELECT * FROM videos WHERE username_autor = 'bob' AND selo_temporal >= '2022-08-01' AND selo_temporal < '2022-09-01' ALLOW FILTERING;

--6. Os últimos 10 vídeos, ordenados inversamente pela data da partilhada:
-- 

--7. Todos os seguidores de determinado vídeo:
SELECT follower_usernames FROM video_followers WHERE video_id = 0a21e2ec-bc52-440e-9ad5-2b2f7c1b545e;

--8. Todos os comentários que determinado utilizador está a seguir:
--

--9. os 5 vídeos com maior rating:
--

--10. Uma query que retorne todos os vídeos e que mostre claramente a forma pela qual estão ordenados:
-- O cassandra não permite ordenação global sem restrição na chave de partição.

--11. Lista com as Tags existentes e o número de vídeos catalogados com cada uma delas
