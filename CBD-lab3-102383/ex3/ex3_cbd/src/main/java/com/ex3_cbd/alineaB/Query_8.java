package com.ex3_cbd.alineaB;

import java.util.List;
import java.util.Scanner;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;
import com.datastax.oss.driver.api.core.uuid.Uuids;

import java.util.UUID;

import javax.security.auth.callback.Callback;

public class Query_8 {
    public static void main(String args[]){
        try{
            CqlSession session = CqlSession.builder().withKeyspace("cbd_102383_ex2").build();

            //odos os comentários (dos vídeos) que determinado utilizador está a seguir (following)
            ResultSet res = session.execute("select * from comentario_por_follower where follower = 'vania';");
            System.out.println("Comentários feitos pela Vânia: " );
            for(Row row : res){
                String comentario = row.getString("comentario");
                String autor = row.getString("autor");
                System.out.println("Autor do vídeo: " + autor );
                System.out.println("Comentario: " + comentario );
                System.out.println("------------------------------------------" );
            }
            
        }catch(Exception e){
            System.out.println(e);
        }
    }
}