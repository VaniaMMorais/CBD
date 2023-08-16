package com.ex3_cbd.alineaA;

import java.util.Scanner;
import java.util.UUID;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;

public class Pesquisa {
    public static void main(String args[]) {
        try {
            CqlSession session = CqlSession.builder().withKeyspace("cbd").build();

            Scanner sc = new Scanner(System.in);

            System.out.println("Insira o ID do vídeo para pesquisar comentários: ");
            String videoId = sc.nextLine();

            sc.close();

            ResultSet res = session.execute(
                SimpleStatement.builder("SELECT * FROM comentarios_por_video WHERE video_id = ?")
                .addPositionalValue(UUID.fromString(videoId))
                .build()
            );

            System.out.println("Comentários para o vídeo " + videoId + ":");
            for (Row row : res) {
                String comentarioId = row.getUuid("comentario_id").toString();
                String usernameAutor = row.getString("username_autor");
                String texto = row.getString("texto");
                System.out.println("Comentário ID: " + comentarioId);
                System.out.println("Autor: " + usernameAutor);
                System.out.println("Texto: " + texto);
                System.out.println("------------------------------------------");
            }

            session.close();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
