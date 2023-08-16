package com.ex3_cbd.alineaB;

import java.util.Scanner;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;

import java.util.UUID;
import java.util.Set;

public class Query_2 {
    public static void main(String args[]) {
        try {
            CqlSession session = CqlSession.builder().withKeyspace("cbd").build();

            Scanner sc = new Scanner(System.in);

            System.out.println("Insira o ID do vídeo para pesquisar as tags: ");
            String videoId = sc.nextLine();

            sc.close();

            PreparedStatement preparedStatement = session.prepare("SELECT tags FROM videos WHERE video_id = ?");
            BoundStatement boundStatement = preparedStatement.bind(UUID.fromString(videoId));

            ResultSet res = session.execute(boundStatement);

            System.out.println("Tags do vídeo " + videoId + ":");
            for (Row row : res) {
                Set<String> tags = row.getSet("tags", String.class);
                System.out.println("Tags: " + tags);
            }

            session.close();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
