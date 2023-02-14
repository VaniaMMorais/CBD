package com.ex3_cbd.alineaB;

import java.util.List;
import java.util.Scanner;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;
import com.datastax.oss.driver.api.core.uuid.Uuids;

import java.util.UUID;

import javax.security.auth.callback.Callback;

public class Query_4 {
    public static void main(String args[]){
        try{
            CqlSession session = CqlSession.builder().withKeyspace("cbd_102383_ex2").build();

            //Os últimos 5 eventos de determinado vídeo realizados por um utilizador
            ResultSet res = session.execute("select tipo from eventos where id_video = 1 and utilizador = 'teresa' limit 5;");
            System.out.println("Tipos de eventos feitos pela Teresa no vídeo com id 1: " );
            for(Row row : res){
               String evento = row.getString("tipo");
                System.out.println("Tipo: " + evento );
            }
            
        }catch(Exception e){
            System.out.println(e);
        }
    }
}
