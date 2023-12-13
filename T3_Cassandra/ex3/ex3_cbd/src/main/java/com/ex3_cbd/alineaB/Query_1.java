package com.ex3_cbd.alineaB;

import java.util.List;
import java.util.Scanner;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;
import com.datastax.oss.driver.api.core.uuid.Uuids;

import java.util.UUID;

import javax.security.auth.callback.Callback;


public class Query_1 {
    public static void main(String args[]){
        try{
            CqlSession session = CqlSession.builder().withKeyspace("cbd").build();

            //todos os comentários (dos vídeos) que determinado utilizador está a seguir (following)
            ResultSet res = session.execute("SELECT * FROM comentarios_por_video WHERE video_id = 0a21e2ec-bc52-440e-9ad5-2b2f7c1b545e ORDER BY momento_temporal DESC LIMIT 3;");
            System.out.println("Comentários feitos no vídeo com id= 0e127f7e-69bb-4324-8a71-48dbd75fe014 (limite de 3): " );
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
