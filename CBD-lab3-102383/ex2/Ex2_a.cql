-- Utilizadores
CREATE TABLE utilizadores (
    username text PRIMARY KEY,
    nome text,
    email text,
    selo_temporal timestamp
);

-- Vídeos
CREATE TABLE videos (
    video_id uuid PRIMARY KEY,
    username_autor text,
    nome text,
    descricao text,
    tags set<text>,
    selo_temporal timestamp
);

-- Comentários
CREATE TABLE comentarios (
    video_id uuid,
    comentario_id timeuuid,
    username_autor text,
    texto text,
    momento_temporal timestamp,
    PRIMARY KEY (video_id, comentario_id)
) WITH CLUSTERING ORDER BY (comentario_id DESC);

-- Vídeo Followers
CREATE TABLE video_followers (
    video_id uuid PRIMARY KEY,
    follower_usernames set<text>
);

-- Registo de Eventos
CREATE TABLE eventos (
    video_id uuid,
    username_utlizador text,
    registo_temporal timestamp,
    tipo_evento text,
    tempo_segundos_video int,
    PRIMARY KEY ((video_id, username_utlizador), registo_temporal)
) WITH CLUSTERING ORDER BY (registo_temporal DESC);

-- Rating de Vídeos
CREATE TABLE video_ratings (
    video_id uuid PRIMARY KEY,
    total_ratings counter,
    total_rating_sum counter
);

-- Pesquisa de Vídeos por Autor
CREATE INDEX ON videos(username_autor);

-- Pesquisa de Comentários por Utilizador
CREATE TABLE comentarios_por_utilizador (
    username_autor text,
    video_id uuid,
    comentario_id timeuuid,
    texto text,
    momento_temporal timestamp,
    PRIMARY KEY (username_autor, momento_temporal)
) WITH CLUSTERING ORDER BY (momento_temporal DESC);

-- Pesquisa de Comentários por Vídeo
CREATE TABLE comentarios_por_video (
    video_id uuid,
    comentario_id timeuuid,
    username_autor text,
    texto text,
    momento_temporal timestamp,
    PRIMARY KEY (video_id, momento_temporal)
) WITH CLUSTERING ORDER BY (momento_temporal DESC);

-- Pesquisa do Rating Médio de um Vídeo
-- Feito depois da inserção de dados. Exemplo:
-- SELECT total_ratings, total_rating_sum FROM video_ratings WHERE video_id = 'video_uuid';