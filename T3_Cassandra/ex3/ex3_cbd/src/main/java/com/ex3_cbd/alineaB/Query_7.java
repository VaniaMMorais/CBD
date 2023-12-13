package com.ex3_cbd.alineaB;

import java.util.List;
import java.util.Set;
import java.util.Scanner;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;
import com.datastax.oss.driver.api.core.uuid.Uuids;

import java.util.UUID;

import javax.security.auth.callback.Callback;

public class Query_7 {
    public static void main(String args[]){
        try{
            CqlSession session = CqlSession.builder().withKeyspace("cbd").build();

            // Obtenha os seguidores de determinado vídeo
            ResultSet res = session.execute("SELECT follower_usernames FROM video_followers WHERE video_id = 0a21e2ec-bc52-440e-9ad5-2b2f7c1b545e;");
            System.out.println("Todos os seguidores de determinado vídeo:" );
            
            // Percorra o ResultSet para imprimir os resultados
            for (Row row : res) {
                Set<String> followersSet = row.getSet("follower_usernames", String.class);
                List<String> followersList = List.copyOf(followersSet);
                System.out.println("Seguidores: " + followersList);
            }
            
        } catch(Exception e){
            System.out.println(e);
        }
    }
}
