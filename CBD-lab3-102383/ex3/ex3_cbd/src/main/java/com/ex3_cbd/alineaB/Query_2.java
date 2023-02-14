package com.ex3_cbd.alineaB;

import java.util.List;
import java.util.Scanner;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;
import com.datastax.oss.driver.api.core.uuid.Uuids;

import java.util.UUID;

import javax.security.auth.callback.Callback;

public class Query_2 {
    public static void main(String args[]){
        try{
            CqlSession session = CqlSession.builder().withKeyspace("cbd_102383_ex2").build();

            //Lista das tags de determinado vídeo
            ResultSet res = session.execute("select tags from videos where id = 4;");
            System.out.println("Tags do video 4: " );
            for(Row row : res){
                List<String> tags = row.getList("tags", String.class);
                System.out.println("Tags: " + tags );
            }
            
        }catch(Exception e){
            System.out.println(e);
        }
    }
}
