package com.ex3_cbd.alineaA;

import java.util.Scanner;
import com.datastax.oss.driver.api.core.CqlSession;
import com.datastax.oss.driver.api.core.CqlSessionBuilder;
import com.datastax.oss.driver.api.core.cql.SimpleStatement;

public class Edicao {
    public static void main(String args[]) {
        try {
            CqlSession session = CqlSession.builder().withKeyspace("cbd").build();

            Scanner sc = new Scanner(System.in);

            System.out.println("Insira o username do utilizador que deseja atualizar: ");
            String username = sc.nextLine();

            System.out.println("Insira o novo nome: ");
            String novoNome = sc.nextLine();

            sc.close();

            session.execute(
                SimpleStatement.builder("UPDATE utilizadores SET nome = ? WHERE username = ?")
                .addPositionalValues(novoNome, username)
                .build()
            );

            session.close();

            System.out.println("Usuário atualizado com sucesso!");

        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
