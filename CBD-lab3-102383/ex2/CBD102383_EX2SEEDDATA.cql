INSERT INTO utilizadores (id, username, nome, email, data) VALUES (uuid(), 'vania', 'Vania Morais', 'vania@ua.pt', toTimestamp(now()));
INSERT INTO utilizadores (id, username, nome, email, data) VALUES (uuid(), 'jonny', 'João Sousa', 'jonny@ua.pt', toTimestamp(now()));
INSERT INTO utilizadores (id, username, nome, email, data) VALUES (uuid(), 'teresa', 'Teresa Ferreira', 'teresa@ua.pt', toTimestamp(now()));
INSERT INTO utilizadores (id, username, nome, email, data) VALUES (uuid(), 'catarina', 'Catarina Costa', 'catarina@ua.pt', toTimestamp(now()));
INSERT INTO utilizadores (id, username, nome, email, data) VALUES (uuid(), 'admin', 'Administrador', 'admin@ua.pt', toTimestamp(now()));
INSERT INTO utilizadores (id, username, nome, email, data) VALUES (uuid(), 'user', 'User', 'user@ua.pt', toTimestamp(now()));


INSERT INTO videos (id, autor, nome, descricao, tags, data) VALUES (1, 'vania', 'Billie Eilish - a entrevista', 'Entrevista à Billie Eilish',['Entrevista', 'Cortes'], toTimestamp(now()));
INSERT INTO videos (id, autor, nome, descricao, tags, data) VALUES (2, 'vania', 'Vines that keep me alive', 'Vines engraçados',['Comédia', 'Cortes'], toTimestamp(now()));
INSERT INTO videos (id, autor, nome, descricao, tags, data) VALUES (3, 'vania', 'Mix- Rex Orange County', 'Conjunto de músicas do cantor Rex',['Música'], toTimestamp(now()));
INSERT INTO videos (id, autor, nome, descricao, tags, data) VALUES (4, 'catarina', 'Avengers Family Feud', 'Os atores de avengers confrontam-se no famoso jogo Family Feud',['Jogos', 'Comédia', 'Cortes'], toTimestamp(now()));
INSERT INTO videos (id, autor, nome, descricao, tags, data) VALUES (5, 'catarina', 'Gatinho fofo aventuras', 'Desenhos animados divertidos',['Animação', 'Fofo', 'Comédia'], toTimestamp(now()));
INSERT INTO videos (id, autor, nome, descricao, tags, data) VALUES (6, 'jonny', 'Best of rally', 'grandes acidentes e erros',['Jogos', 'Cortes'], toTimestamp(now()));
INSERT INTO videos (id, autor, nome, descricao, tags, data) VALUES (7, 'teresa', '10 min intense ABS', 'Exercício físico sem equipamentos',['Saude'], toTimestamp(now()));
INSERT INTO videos (id, autor, nome, descricao, tags, data) VALUES (8, 'user', 'How I learn to code', 'Guia de programaçao para iniciantes',['Programacao'], toTimestamp(now()));
INSERT INTO videos (id, autor, nome, descricao, tags, data) VALUES (9, 'admin', 'The cassandra basics', 'Guia de programação cassandra',['Programacao'], toTimestamp(now()));
INSERT INTO videos (id, autor, nome, descricao, tags, data) VALUES (10, 'teresa', '20min full body workout', 'Exercício físico sem equipamentos',['Saude'], toTimestamp(now()));
INSERT INTO videos (id, autor, nome, descricao, tags, data) VALUES (11, 'jonny', 'A melhor partida de UNO', 'Jogo dde UNO com os amigos',['Comédia', 'Cortes', 'Jogos'], toTimestamp(now()));
INSERT INTO videos (id, autor, nome, descricao, tags, data) VALUES (12, 'vania', 'Portugal vs Coreia do SUl', 'Resumo da partida',['Jogos'], toTimestamp(now()));



INSERT INTO videos_por_autor(autor, nome, descricao, data) VALUES('vania', 'Billie Eilish - a entrevista', 'Entrevista à Billie Eilish', toTimestamp(now()));
INSERT INTO videos_por_autor(autor, nome, descricao, data) VALUES('vania', 'Vines that keep me alive', 'Vines engraçados', toTimestamp(now()));
INSERT INTO videos_por_autor(autor, nome, descricao, data) VALUES('vania', 'Mix- Rex Orange County', 'Conjunto de músicas do cantor Rex', toTimestamp(now()));
INSERT INTO videos_por_autor(autor, nome, descricao, data) VALUES('vania', 'Portugal vs Coreia do SUl', 'Resumo da partida', toTimestamp(now()));
INSERT INTO videos_por_autor(autor, nome, descricao, data) VALUES('catarina', 'Avengers Family Feud', 'Os atores de avengers confrontam-se no famoso jogo Family Feud', toTimestamp(now()));
INSERT INTO videos_por_autor(autor, nome, descricao, data) VALUES('catarina', 'Gatinho fofo aventuras', 'Desenhos animados divertidos', toTimestamp(now()));
INSERT INTO videos_por_autor(autor, nome, descricao, data) VALUES('jonny', 'Best of rally', 'grandes acidentes e erros', toTimestamp(now()));
INSERT INTO videos_por_autor(autor, nome, descricao, data) VALUES('jonny', 'A melhor partida de UNO', 'Jogo dde UNO com os amigos', toTimestamp(now()));
INSERT INTO videos_por_autor(autor, nome, descricao, data) VALUES('teresa', '10 min intense ABS', 'Exercício físico sem equipamentos', toTimestamp(now()));
INSERT INTO videos_por_autor(autor, nome, descricao, data) VALUES('teresa',  '20min full body workout', 'Exercício físico sem equipamentos', toTimestamp(now()));
INSERT INTO videos_por_autor(autor, nome, descricao, data) VALUES('user','How I learn to code', 'Guia de programaçao para iniciantes', toTimestamp(now()));
INSERT INTO videos_por_autor(autor, nome, descricao, data) VALUES('admin','The cassandra basics', 'Guia de programação cassandra', toTimestamp(now()));



INSERT INTO autor_comentarios(autor, id_video, comentario, comentario_data) VALUES ('catarina', 1, 'Adoro a voz dela!', toTimestamp(now()));
INSERT INTO autor_comentarios(autor, id_video, comentario, comentario_data) VALUES ('teresa', 1, 'Gostei!', toTimestamp(now()));
INSERT INTO autor_comentarios(autor, id_video, comentario, comentario_data) VALUES ('vania', 5, 'Tão fofinho!', toTimestamp(now()));
INSERT INTO autor_comentarios(autor, id_video, comentario, comentario_data) VALUES ('vania', 6, 'Damn!', toTimestamp(now()));
INSERT INTO autor_comentarios(autor, id_video, comentario, comentario_data) VALUES ('jonny', 2, 'Muito engraçado!', toTimestamp(now()));
INSERT INTO autor_comentarios(autor, id_video, comentario, comentario_data) VALUES ('teresa', 4, 'Top!', toTimestamp(now()));
INSERT INTO autor_comentarios(autor, id_video, comentario, comentario_data) VALUES ('teresa', 8, 'Já vi melhor!', toTimestamp(now()));
INSERT INTO autor_comentarios(autor, id_video, comentario, comentario_data) VALUES ('jonny', 9, 'Nice!', toTimestamp(now()));
INSERT INTO autor_comentarios(autor, id_video, comentario, comentario_data) VALUES ('teresa', 12, 'Vamos Portugal!!', toTimestamp(now()));
INSERT INTO autor_comentarios(autor, id_video, comentario, comentario_data) VALUES ('vania', 8, 'Adorei!', toTimestamp(now()));
INSERT INTO autor_comentarios(autor, id_video, comentario, comentario_data) VALUES ('catarina', 11, 'Acho que não gostei muito!', toTimestamp(now()));
INSERT INTO autor_comentarios(autor, id_video, comentario, comentario_data) VALUES ('catarina', 10, 'Obrigada pelas dicas!', toTimestamp(now()));
INSERT INTO autor_comentarios(autor, id_video, comentario, comentario_data) VALUES ('admin', 3, 'Adorei, muito bom!', toTimestamp(now()));
INSERT INTO autor_comentarios(autor, id_video, comentario, comentario_data) VALUES ('jonny', 7, 'Bom exercício!', toTimestamp(now()));


INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('vania', 6, 'Perigoso, mas engraçado!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('vania', 10, 'Gostei!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('catarina', 1, 'Not bad!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('teresa', 1, 'Até gostei!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('jonny', 4, 'Damn God!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('jonny', 7, 'Bom exercício', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('vania', 7, 'Normal!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('teresa', 2, 'Nice!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('admin', 3, 'Siga!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('teresa', 10, 'Top!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('jonny', 10, 'Fixe!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('jonny', 3, 'Nice one!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('admin', 7, 'Lets go!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('jonny', 8, 'Normal!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('admin', 10, 'Top!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('teresa', 10, 'Bem fixe!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('vania', 10, 'Lets go!', toTimestamp(now()));
INSERT INTO videos_comentarios(autor, id_video, comentario, comentario_data) VALUES ('user', 10, 'Adorei!', toTimestamp(now()));


INSERT INTO followers(utilizador, id_video) VALUES ({'vania', 'jonny@ua.pt'},1);
INSERT INTO followers(utilizador, id_video) VALUES ({'vania', 'catarina@ua.pt', 'joaozinho@ua.pt'},3);
INSERT INTO followers(utilizador, id_video) VALUES ({'teresa'},5);
INSERT INTO followers(utilizador, id_video) VALUES ({'teresa', 'vania', 'jonny', 'admin'},12);
INSERT INTO followers(utilizador, id_video) VALUES ({'catarina'},10);
INSERT INTO followers(utilizador, id_video) VALUES ({'teresa', 'vania', 'jonny'},11);
INSERT INTO followers(utilizador, id_video) VALUES ({'admin', 'user'},9);
INSERT INTO followers(utilizador, id_video) VALUES ({'jonny'},6);
INSERT INTO followers(utilizador, id_video) VALUES ({'teresa', 'vania', 'jonny'},12);
INSERT INTO followers(utilizador, id_video) VALUES ({'jonny', 'teresa'},11);
INSERT INTO followers(utilizador, id_video) VALUES ({'jonny'},4);
INSERT INTO followers(utilizador, id_video) VALUES ({'jonny', 'admin'},3);


INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(1,'vania', 'play', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(3, 'catarina', 'stop', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(2, 'catarina', 'stop', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(1, 'jonny', 'stop', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(1, 'catarina', 'pause', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(12, 'teresa', 'play', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(12, 'teresa', 'stop', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(10, 'admin', 'play', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(10, 'catarina', 'pause', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(8, 'vania', 'stop', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(3, 'vania', 'play', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(8, 'jonny', 'pause', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(5, 'teresa', 'play', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(1, 'jonny', 'play', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(1, 'teresa', 'stop', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(1, 'admin', 'pause', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(1, 'vania', 'pause', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(10, 'catarina', 'pause', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(10, 'jonny', 'play', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(10, 'user', 'stop', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(10, 'user', 'play', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(1, 'teresa', 'play', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(1, 'teresa', 'pause', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(1, 'teresa', 'play', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(1, 'teresa', 'stop', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(1, 'teresa', 'play', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(1, 'teresa', 'stop', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(1, 'teresa', 'play', toTimestamp(now()), toTimestamp(now()));
INSERT INTO eventos(id_video, utilizador, tipo, data, video_data) VALUES(1, 'teresa', 'stop', toTimestamp(now()), toTimestamp(now()));


INSERT INTO ratings(id_video, valor, data) VALUES (1, 4, toTimestamp(now()));
INSERT INTO ratings(id_video, valor, data) VALUES (2, 5, toTimestamp(now()));
INSERT INTO ratings(id_video, valor, data) VALUES (3, 5, toTimestamp(now()));
INSERT INTO ratings(id_video, valor, data) VALUES (4, 3, toTimestamp(now()));
INSERT INTO ratings(id_video, valor, data) VALUES (5, 4, toTimestamp(now()));
INSERT INTO ratings(id_video, valor, data) VALUES (5, 5, toTimestamp(now()));
INSERT INTO ratings(id_video, valor, data) VALUES (6, 5, toTimestamp(now()));
INSERT INTO ratings(id_video, valor, data) VALUES (7, 4, toTimestamp(now()));
INSERT INTO ratings(id_video, valor, data) VALUES (8, 3, toTimestamp(now()));
INSERT INTO ratings(id_video, valor, data) VALUES (9, 5, toTimestamp(now()));
INSERT INTO ratings(id_video, valor, data) VALUES (10 ,4, toTimestamp(now()));
INSERT INTO ratings(id_video, valor, data) VALUES (11 ,5, toTimestamp(now()));
INSERT INTO ratings(id_video, valor, data) VALUES (12 ,5, toTimestamp(now()));



INSERT INTO tags_por_video(id, tag, id_video) VALUES(1, 'Animação', 5);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(2, 'Comédia', 2);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(2, 'Comédia', 4);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(2, 'Comédia', 5);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(2, 'Comédia', 11);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(3, 'Cortes', 1);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(3, 'Cortes', 2);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(3, 'Cortes', 4);ios i
INSERT INTO tags_por_video(id, tag, id_video) VALUES(3, 'Cortes', 6);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(3, 'Cortes', 11);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(4, 'Entrevista', 1);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(5, 'Fofo', 5);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(6, 'Jogos', 4);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(6, 'Jogos', 6);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(6, 'Jogos', 11);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(6, 'Jogos', 12);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(7, 'Música', 3);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(8, 'Programaçao', 8);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(8, 'Programaçao', 9);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(9, 'Saude', 7);
INSERT INTO tags_por_video(id, tag, id_video) VALUES(9, 'Saude', 10);



INSERT INTO comentario_por_follower(autor, comentario, data, follower) VALUES('vania', 'Adoro a voz dela!', toTimestamp(now()), 'catarina');
INSERT INTO comentario_por_follower(autor, comentario, data, follower) VALUES('vania', 'Gostei!', toTimestamp(now()), 'teresa');
INSERT INTO comentario_por_follower(autor, comentario, data, follower) VALUES('vania', 'Nice!', toTimestamp(now()), 'teresa');
INSERT INTO comentario_por_follower(autor, comentario, data, follower) VALUES('vania', 'Adorei, muito bom!', toTimestamp(now()), 'admin');
INSERT INTO comentario_por_follower(autor, comentario, data, follower) VALUES('catarina', 'Top!', toTimestamp(now()), 'teresa');
INSERT INTO comentario_por_follower(autor, comentario, data, follower) VALUES('catarina', 'Tão fofinho!', toTimestamp(now()), 'vania');
INSERT INTO comentario_por_follower(autor, comentario, data, follower) VALUES('jonny', 'Damn!', toTimestamp(now()), 'vania');
INSERT INTO comentario_por_follower(autor, comentario, data, follower) VALUES('teresa', 'Normal!', toTimestamp(now()), 'vania');
INSERT INTO comentario_por_follower(autor, comentario, data, follower) VALUES('teresa', 'Bom exercício!', toTimestamp(now()), 'jonny');
INSERT INTO comentario_por_follower(autor, comentario, data, follower) VALUES('user', 'Já vi melhor!', toTimestamp(now()), 'teresa');

