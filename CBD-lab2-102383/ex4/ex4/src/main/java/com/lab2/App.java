package com.lab2;

import java.util.Arrays;

import com.mongodb.client.MongoClients;
import com.mongodb.client.MongoClient;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import com.mongodb.client.model.Indexes;
import com.mongodb.client.result.UpdateResult;

import static com.mongodb.client.model.Filters.eq;
import static com.mongodb.client.model.Filters.*;
import static com.mongodb.client.model.Updates.*;
import com.mongodb.client.FindIterable;

import org.bson.Document;
import org.bson.conversions.Bson;
import org.bson.types.ObjectId;

public class App 
{
    public static void main( String[] args )
    {
        MongoClient mongoClient = MongoClients.create();
        MongoDatabase db = mongoClient.getDatabase("CBD");
        MongoCollection<Document> collection = db.getCollection("restaurants");

        Document restaurant = new Document("_id",new ObjectId());
        restaurant.append("address", new Document("building", "270").append("coord", Arrays.asList(41.276720, -8.278095 ))
            .append("rua", "Av. Amílcar Neto")
            .append("zipcode", "460-449")
            .append("localidade", "Lousada")
            .append("gastronomia", "Portuguese")
            .append("grade", Arrays.asList(
                new Document("date", "2021-11-13T14:56:00Z").append("grade", "A")
                    .append("score", 9) ))
                    .append("nome", "Francesinhas e Companhia")
                    .append("restaurant_id", "234427506"));

        //insersão de dados
        collection.insertOne(restaurant);


        //edição de dados  TO DO: ACABAR ISTO (https://www.mongodb.com/developer/languages/java/java-setup-crud-operations/?utm_campaign=javainsertingdocuments&utm_source=facebook&utm_medium=organic_social#update-documents)
        Bson filter = eq("restaurant_id", "234427506");
        Bson updateOperation = set("restaurant_id", "234427577");
        UpdateResult updateResult = collection.updateOne(filter, updateOperation);
        System.out.println(updateResult);

        //pesquisa de dados
        Bson condition = gte("restaurant_id", "102383");
        FindIterable<Document> iterable = collection.find(condition);
        MongoCursor<Document> cursor = iterable.iterator();
        System.out.println("---Querying---");
        while (cursor.hasNext()) {
            System.out.println(cursor.next().toJson());
        }


        //Index para localidade
        collection.createIndex(Indexes.ascending("localidade"));

        //Index para gastronomia 
        collection.createIndex(Indexes.ascending("gastronomia"));

        //Index de texto para o nome
        collection.createIndex(Indexes.text("nome"));

        for (Document index : collection.listIndexes()) {
            System.out.println(index.toJson());
         }

    }
}
