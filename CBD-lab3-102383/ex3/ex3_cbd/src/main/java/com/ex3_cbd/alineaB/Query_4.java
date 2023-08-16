package com.ex3_cbd.alineaB;

import java.util.Scanner;
import java.util.UUID;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;

public class Query_4 {
    public static void main(String args[]){
        try{
            CqlSession session = CqlSession.builder().withKeyspace("cbd").build();

            // Os últimos 5 eventos de determinado vídeo realizados por um utilizador
            ResultSet res = session.execute("SELECT tipo_evento FROM eventos WHERE video_id = ? AND username_utlizador = ? LIMIT 5;", UUID.fromString("0e127f7e-69bb-4324-8a71-48dbd75fe014"), "bob");
            System.out.println("Tipos de eventos feitos pelo bob no vídeo: " );
            for(Row row : res){
               String evento = row.getString("tipo_evento");
               System.out.println("Tipo: " + evento );
            }
            
        }catch(Exception e){
            System.out.println(e);
        }
    }
}
