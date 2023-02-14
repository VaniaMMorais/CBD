package com.ex3_cbd.alineaA;

import java.util.List;
import java.util.Scanner;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;
import com.datastax.oss.driver.api.core.uuid.Uuids;

import java.util.UUID;

public class Insercao {
    public static void main(String args[]){
        try{
            CqlSession session = CqlSession.builder().withKeyspace("cbd_102383_ex2").build();

            Scanner sc = new Scanner(System.in);

            UUID ID = Uuids.timeBased();
            

            System.out.println("Insira o username: ");
            String username = sc.nextLine();

            System.out.println("Insira o email: ");
            String email = sc.nextLine();

            System.out.println("Insira o nome: ");
            String nome = sc.nextLine();


            sc.close();

            //insert do utilizador
            session.execute(SimpleStatement.builder("insert into utilizadores (id, username, nome, email, data) values (?, ?, ?, ?, toTimestamp(now()))")
            .addPositionalValues(ID, username, email, nome)
            .build());

            session.close();
            

        }catch(Exception e){
            System.out.println(e);
        }
    }
}
