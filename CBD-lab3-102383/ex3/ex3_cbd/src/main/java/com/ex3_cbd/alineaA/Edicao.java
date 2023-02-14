package com.ex3_cbd.alineaA;

import java.util.List;
import java.util.Scanner;

import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.cql.*;
import com.datastax.oss.driver.api.core.uuid.Uuids;

import java.util.UUID;

public class Edicao {
    public static void main(String args[]){
        try{
            CqlSession session = CqlSession.builder().withKeyspace("cbd_102383_ex2").build();

            Scanner sc = new Scanner(System.in);

            System.out.println("Insira o username onde quer fazer alterações: ");
            String username = sc.nextLine();

            System.out.println("Insira o email onde quer fazer alterações: ");
            String email = sc.nextLine();

            System.out.println("Insira o novo nome: ");
            String nome = sc.nextLine();

            sc.close();

            session.execute(SimpleStatement.builder("update cbd_ex2.utilizadores set nome=? where username=? and email=?;")
            .addPositionalValues(nome, username, email)
            .build());

            session.close();


        }catch(Exception e){
            System.out.println(e);
        }
    }
}
