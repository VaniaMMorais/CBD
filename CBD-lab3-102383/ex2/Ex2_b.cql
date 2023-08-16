-- Inserir dados na tabela utilizadores
-- Nomes gerados em https://pt.fakenamegenerator.com/gen-random-us-pt.php
INSERT INTO utilizadores (username, nome, email, selo_temporal) VALUES('alice', 'Alice Smith', 'alice@example.com', toTimestamp(now()));
INSERT INTO utilizadores (username, nome, email, selo_temporal) VALUES('bob', 'Bob Johnson', 'bob@example.com', toTimestamp(now()));
INSERT INTO utilizadores (username, nome, email, selo_temporal) VALUES('Sodous', 'Cynthia M. McCandless', 'CynthiaMMcCandless@armyspy.com', toTimestamp(now()));
INSERT INTO utilizadores (username, nome, email, selo_temporal) VALUES('bob', 'Bob Johnson', 'bob@example.com', toTimestamp(now()));
INSERT INTO utilizadores (username, nome, email, selo_temporal) VALUES('Sosaer', 'Charlie Brown', 'charlie@example.com', toTimestamp(now()));
INSERT INTO utilizadores (username, nome, email, selo_temporal) VALUES('Hopeca', 'Alan T. Doolittle', 'AlanTDoolittle@armyspy.com', toTimestamp(now()));
INSERT INTO utilizadores (username, nome, email, selo_temporal) VALUES('Xexihu', 'Melba P. Thomas', 'MelbaPThomas@rhyta.com', toTimestamp(now()));
INSERT INTO utilizadores (username, nome, email, selo_temporal) VALUES('Teipus', 'Mary H. Hagy', 'MaryHHagy@jourrapide.com', toTimestamp(now()));
INSERT INTO utilizadores (username, nome, email, selo_temporal) VALUES('Anwimu', 'Sharon H. Searle', 'SharonHSearle@jourrapide.com', toTimestamp(now()));
INSERT INTO utilizadores (username, nome, email, selo_temporal) VALUES('Tupeor', 'Jennifer O. Kist', 'JenniferOKist@teleworm.us', toTimestamp(now()));
INSERT INTO utilizadores (username, nome, email, selo_temporal) VALUES('Lusona', 'Chad B. Smith', 'ChadBSmith@jourrapide.com', toTimestamp(now()));
INSERT INTO utilizadores (username, nome, email, selo_temporal) VALUES('Usxuma', 'Racquel J. Christian', 'RacquelJChristian@jourrapide.com', toTimestamp(now()));
INSERT INTO utilizadores (username, nome, email, selo_temporal) VALUES('Pyagal', 'Amanda G. Hayden', 'AmandaGHayden@dayrep.com', toTimestamp(now()));
INSERT INTO utilizadores (username, nome, email, selo_temporal) VALUES('Wulepo', 'Clinton A. Yuen', 'ClintonAYuen@teleworm.us', toTimestamp(now()));
INSERT INTO utilizadores (username, nome, email, selo_temporal) VALUES('Loixel', 'Michael C. Matney', 'MichaelCMatney@armyspy.com', toTimestamp(now()));

-- Inserir dados na tabela videos
INSERT INTO videos (video_id, username_autor, nome, descricao, tags, selo_temporal) VALUES(uuid(), 'alice', 'Video 1', 'Description of Video 1', {'fun', 'entertainment'}, toTimestamp(now()));
INSERT INTO videos (video_id, username_autor, nome, descricao, tags, selo_temporal) VALUES(uuid(), 'bob', 'Video 2', 'Description of Video 2', {'tutorial', 'education'}, toTimestamp(now()));
INSERT INTO videos (video_id, username_autor, nome, descricao, tags, selo_temporal) VALUES(uuid(), 'alice', 'Video 3', 'Description of Video 3', {'music', 'art'}, toTimestamp(now()));
INSERT INTO videos (video_id, username_autor, nome, descricao, tags, selo_temporal) VALUES(uuid(), 'Sodous', 'Video 4', 'Description of Video 4', {'fun', 'comedy'}, toTimestamp(now()));
INSERT INTO videos (video_id, username_autor, nome, descricao, tags, selo_temporal) VALUES(uuid(), 'Muimir', 'Video 5', 'Description of Video 5', {'tutorial', 'coding'}, toTimestamp(now()));
INSERT INTO videos (video_id, username_autor, nome, descricao, tags, selo_temporal) VALUES(uuid(), 'Sosaer', 'Video 6', 'Description of Video 6', {'music', 'performance'}, toTimestamp(now()));
INSERT INTO videos (video_id, username_autor, nome, descricao, tags, selo_temporal) VALUES(uuid(), 'Hopeca', 'Video 7', 'Description of Video 7', {'nature', 'travel'}, toTimestamp(now()));
INSERT INTO videos (video_id, username_autor, nome, descricao, tags, selo_temporal) VALUES(uuid(), 'Xexihu', 'Video 8', 'Description of Video 8', {'food', 'cooking'}, toTimestamp(now()));
INSERT INTO videos (video_id, username_autor, nome, descricao, tags, selo_temporal) VALUES(uuid(), 'Teipus', 'Video 9', 'Description of Video 9', {'technology', 'gadgets'}, toTimestamp(now()));
INSERT INTO videos (video_id, username_autor, nome, descricao, tags, selo_temporal) VALUES(uuid(), 'Anwimu', 'Video 10', 'Description of Video 10', {'fitness', 'health'}, toTimestamp(now()));

-- Inserir dados na tabela comentarios
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(a00e72d7-48a9-405c-a542-80d1c222837f, now(), 'alice', 'Great video!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(0e127f7e-69bb-4324-8a71-48dbd75fe014, now(), 'bob', 'Nice job!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(0a21e2ec-bc52-440e-9ad5-2b2f7c1b545e, now(), 'Sodous', 'This is very informative.', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(65ba4f82-cfa4-4baf-8d7f-1dfba5f84fa8 , now(), 'Muimir', 'I learned a lot from this.', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(2ba07dde-2928-4061-a902-fa5a4dbad112, now(), 'Sosaer', 'Amazing performance!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(4a57d6bd-203e-46ac-85ab-a0a50fe64d77, now(), 'Hopeca', 'Beautiful scenery!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(f0805d4e-f93a-4a08-aef0-f0a9534d35f3, now(), 'Xexihu', 'Delicious recipe!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(ab578c83-f412-48e4-a31e-751e13f8222a, now(), 'Teipus', 'Cool gadgets!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(5ad8cac1-bf45-477b-b5e2-af52bad3a3f3, now(), 'Anwimu', 'Great workout tips!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(0a21e2ec-bc52-440e-9ad5-2b2f7c1b545e, now(), 'bob', 'I enjoyed this video!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(e122e15e-ad01-4918-9efa-cdaa2fe6e0f1, now(), 'Sodous', 'Impressive content!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(a00e72d7-48a9-405c-a542-80d1c222837f, now(), 'Muimir', 'Well explained!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(65ba4f82-cfa4-4baf-8d7f-1dfba5f84fa8, now(), 'Sosaer', 'I loved the music!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(4a57d6bd-203e-46ac-85ab-a0a50fe64d77, now(), 'Anwimu', 'Thanks for the tips!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(f0805d4e-f93a-4a08-aef0-f0a9534d35f3, now(), 'Teipus', 'These gadgets are amazing!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(5ad8cac1-bf45-477b-b5e2-af52bad3a3f3, now(), 'alice', 'Very creative video!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(4a57d6bd-203e-46ac-85ab-a0a50fe64d77, now(), 'bob', 'Informative and engaging.', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(4a57d6bd-203e-46ac-85ab-a0a50fe64d77, now(), 'Sodous', 'Keep up the good work!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(a00e72d7-48a9-405c-a542-80d1c222837f, now(), 'Hopeca', 'I want to visit that place!', toTimestamp(now()));
INSERT INTO comentarios (video_id, comentario_id, username_autor, texto, momento_temporal) VALUES(5ad8cac1-bf45-477b-b5e2-af52bad3a3f3, now(), 'Xexihu', 'I m going to try this recipe.', toTimestamp(now()));

-- Inserir dados na tabela videos_followers
INSERT INTO video_followers (video_id, follower_usernames) VALUES(a00e72d7-48a9-405c-a542-80d1c222837f, {'alice', 'bob', 'Sodous'});
INSERT INTO video_followers (video_id, follower_usernames) VALUES(0e127f7e-69bb-4324-8a71-48dbd75fe014, {'Muimir', 'Sosaer'});
INSERT INTO video_followers (video_id, follower_usernames) VALUES(0a21e2ec-bc52-440e-9ad5-2b2f7c1b545e, {'Hopeca', 'Xexihu'});
INSERT INTO video_followers (video_id, follower_usernames) VALUES(65ba4f82-cfa4-4baf-8d7f-1dfba5f84fa8, {'Teipus', 'Anwimu'});
INSERT INTO video_followers (video_id, follower_usernames) VALUES(2ba07dde-2928-4061-a902-fa5a4dbad112, {'alice', 'bob', 'Sodous', 'Muimir'});
INSERT INTO video_followers (video_id, follower_usernames) VALUES(2ba07dde-2928-4061-a902-fa5a4dbad112, {'Hopeca', 'Xexihu'});
INSERT INTO video_followers (video_id, follower_usernames) VALUES(4a57d6bd-203e-46ac-85ab-a0a50fe64d77, {'Teipus', 'Anwimu'});
INSERT INTO video_followers (video_id, follower_usernames) VALUES(f0805d4e-f93a-4a08-aef0-f0a9534d35f3, {'alice', 'bob', 'Sodous', 'Muimir'});
INSERT INTO video_followers (video_id, follower_usernames) VALUES(ab578c83-f412-48e4-a31e-751e13f8222a, {'Sosaer', 'Sodous'});
INSERT INTO video_followers (video_id, follower_usernames) VALUES(5ad8cac1-bf45-477b-b5e2-af52bad3a3f3, {'bob', 'Muimir'});

-- Inserir dados na tabela eventos
INSERT INTO eventos (video_id, username_utlizador, registo_temporal, tipo_evento, tempo_segundos_video) VALUES(a00e72d7-48a9-405c-a542-80d1c222837f, 'alice', toTimestamp(now()), 'play', 120);
INSERT INTO eventos (video_id, username_utlizador, registo_temporal, tipo_evento, tempo_segundos_video) VALUES(0e127f7e-69bb-4324-8a71-48dbd75fe014, 'bob', toTimestamp(now()), 'pause', 150);
INSERT INTO eventos (video_id, username_utlizador, registo_temporal, tipo_evento, tempo_segundos_video) VALUES(0a21e2ec-bc52-440e-9ad5-2b2f7c1b545e, 'Muimir', toTimestamp(now()), 'play', 50);
INSERT INTO eventos (video_id, username_utlizador, registo_temporal, tipo_evento, tempo_segundos_video) VALUES(2ba07dde-2928-4061-a902-fa5a4dbad112, 'Sosaer', toTimestamp(now()), 'stop', 200);
INSERT INTO eventos (video_id, username_utlizador, registo_temporal, tipo_evento, tempo_segundos_video) VALUES(4a57d6bd-203e-46ac-85ab-a0a50fe64d77, 'Xexihu', toTimestamp(now()), 'play', 10);
INSERT INTO eventos (video_id, username_utlizador, registo_temporal, tipo_evento, tempo_segundos_video) VALUES(f0805d4e-f93a-4a08-aef0-f0a9534d35f3, 'Hopeca', toTimestamp(now()), 'pause', 80);
INSERT INTO eventos (video_id, username_utlizador, registo_temporal, tipo_evento, tempo_segundos_video) VALUES(e122e15e-ad01-4918-9efa-cdaa2fe6e0f1, 'Anwimu', toTimestamp(now()), 'play', 5);
INSERT INTO eventos (video_id, username_utlizador, registo_temporal, tipo_evento, tempo_segundos_video) VALUES(a00e72d7-48a9-405c-a542-80d1c222837f, 'Teipus', toTimestamp(now()), 'stop', 300);
INSERT INTO eventos (video_id, username_utlizador, registo_temporal, tipo_evento, tempo_segundos_video) VALUES(5ad8cac1-bf45-477b-b5e2-af52bad3a3f3, 'Sodous', toTimestamp(now()), 'play', 60);
INSERT INTO eventos (video_id, username_utlizador, registo_temporal, tipo_evento, tempo_segundos_video) VALUES(f0805d4e-f93a-4a08-aef0-f0a9534d35f3, 'Muimir', toTimestamp(now()), 'pause', 100);

-- Inserir dados na tabela rating de videos (como temos um counter tem que ser update)
UPDATE video_ratings
SET total_ratings = total_ratings + 10,
    total_rating_sum = total_rating_sum + 45
WHERE video_id = a00e72d7-48a9-405c-a542-80d1c222837f;
UPDATE video_ratings
SET total_ratings = total_ratings + 8,
    total_rating_sum = total_rating_sum + 32
WHERE video_id = 0e127f7e-69bb-4324-8a71-48dbd75fe014;
UPDATE video_ratings
SET total_ratings = total_ratings + 12,
    total_rating_sum = total_rating_sum + 60
WHERE video_id = 0a21e2ec-bc52-440e-9ad5-2b2f7c1b545e;
UPDATE video_ratings
SET total_ratings = total_ratings + 5,
    total_rating_sum = total_rating_sum + 20
WHERE video_id = 65ba4f82-cfa4-4baf-8d7f-1dfba5f84fa8;
UPDATE video_ratings
SET total_ratings = total_ratings + 15,
    total_rating_sum = total_rating_sum + 75
WHERE video_id = e122e15e-ad01-4918-9efa-cdaa2fe6e0f1;
UPDATE video_ratings
SET total_ratings = total_ratings + 10,
    total_rating_sum = total_rating_sum + 45
WHERE video_id = 2ba07dde-2928-4061-a902-fa5a4dbad112;
UPDATE video_ratings
SET total_ratings = total_ratings + 8,
    total_rating_sum = total_rating_sum + 32
WHERE video_id = 4a57d6bd-203e-46ac-85ab-a0a50fe64d77;
UPDATE video_ratings
SET total_ratings = total_ratings + 12,
    total_rating_sum = total_rating_sum + 60
WHERE video_id = f0805d4e-f93a-4a08-aef0-f0a9534d35f3;
UPDATE video_ratings
SET total_ratings = total_ratings + 5,
    total_rating_sum = total_rating_sum + 20
WHERE video_id = ab578c83-f412-48e4-a31e-751e13f8222a;
UPDATE video_ratings
SET total_ratings = total_ratings + 15,
    total_rating_sum = total_rating_sum + 75
WHERE video_id = 5ad8cac1-bf45-477b-b5e2-af52bad3a3f3;


-- Consulta para Utilizadores
SELECT json * FROM utilizadores;

-- Consulta para Vídeos
SELECT json * FROM videos;

-- Consulta para Comentários
SELECT json * FROM comentarios;

-- Consulta para Vídeo Followers
SELECT json * FROM video_followers;

-- Consulta para Registo de Eventos
SELECT json * FROM eventos;

-- Consulta para Rating de Vídeos
SELECT json * FROM video_ratings;



