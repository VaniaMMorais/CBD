package com.ex3_cbd.alineaA;

import java.util.List;
import java.util.Scanner;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;
import com.datastax.oss.driver.api.core.uuid.Uuids;

import java.util.UUID;

import javax.security.auth.callback.Callback;

public class Pesquisa {
    public static void main(String args[]){
        try{
            CqlSession session = CqlSession.builder().withKeyspace("cbd_102383_ex2").build();

            //retorna as tags e videos 
            ResultSet res = session.execute("select * from videos_por_autor;");
            System.out.println("Vídeos por autor: " );
            for(Row row : res){
                String autor = row.getString("autor");
                String nome = row.getString("nome");
                String descricao = row.getString("descricao");
                System.out.println("Autor: " + autor );
                System.out.println("Nome: " + nome );
                System.out.println("Descrição: " + descricao);
                System.out.println("------------------------------------------" );

            }
            
        }catch(Exception e){
            System.out.println(e);
        }
    }
}
