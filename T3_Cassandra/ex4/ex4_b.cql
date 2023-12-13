-- Inserção de Fabricantes
INSERT INTO fabricantes (id, nome, fundacao) VALUES (uuid(), 'Toyota', 1937);
INSERT INTO fabricantes (id, nome, fundacao) VALUES(uuid(), 'Ford', 1903);
INSERT INTO fabricantes (id, nome, fundacao) VALUES(uuid(), 'Honda', 1948);
INSERT INTO fabricantes (id, nome, fundacao) VALUES(uuid(), 'Chevrolet', 1911);
INSERT INTO fabricantes (id, nome, fundacao) VALUES(uuid(), 'Nissan', 1933);
INSERT INTO fabricantes (id, nome, fundacao) VALUES(uuid(), 'Volkswagen', 1937);
INSERT INTO fabricantes (id, nome, fundacao) VALUES(uuid(), 'BMW', 1916);
INSERT INTO fabricantes (id, nome, fundacao) VALUES(uuid(), 'Mercedes-Benz', 1926);
INSERT INTO fabricantes (id, nome, fundacao) VALUES(uuid(), 'Audi', 1909);
INSERT INTO fabricantes (id, nome, fundacao) VALUES(uuid(), 'Mazda', 1920);



-- Inserção de Modelos
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES (uuid(), 'Corolla', 2022, dc02175a-c4a2-4b87-9fef-63adebded771, {'Potência': '150hp', 'Motor': '1.8L'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'Mustang', 2023, 661cdca7-1e16-4d5b-a155-866bd9613063, {'Potência': '450hp', 'Motor': '5.0L'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'Golf', 2022,83cb44d0-28d6-48b1-9fe2-811e8ba6658d, {'Potência': '150hp', 'Motor': '1.8L'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'Passat', 2022,83cb44d0-28d6-48b1-9fe2-811e8ba6658d, {'Potência': '180hp', 'Motor': '2.0L'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'Camaro', 2022, 14fc3d01-7f17-47f0-b1bd-92af3758307c, {'Potência': '455hp', 'Motor': '6.2L'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'Silverado', 2022, 14fc3d01-7f17-47f0-b1bd-92af3758307c, {'Potência': '355hp', 'Motor': '5.3L'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'Civic', 2022, 06a52ab9-eda1-4487-a201-f9bd5c876463, {'Potência': '158hp', 'Motor': '2.0L'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'Accord', 2022, 06a52ab9-eda1-4487-a201-f9bd5c876463, {'Potência': '192hp', 'Motor': '1.5L Turbo'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'Altima', 2022, 27aee9a2-1a1c-4d70-a9b1-941ca7799f9a, {'Potência': '188hp', 'Motor': '2.5L'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'Maxima', 2022, 27aee9a2-1a1c-4d70-a9b1-941ca7799f9a,  {'Potência': '300hp', 'Motor': '3.5L'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), '3 Series', 2022, 13242abd-4846-4867-b670-9e7b7611ba16, {'Potência': '255hp', 'Motor': '2.0L Turbo'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), '5 Series', 2022, 13242abd-4846-4867-b670-9e7b7611ba16, {'Potência': '335hp', 'Motor': '3.0L Turbo'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'F-150', 2022, 661cdca7-1e16-4d5b-a155-866bd9613063, {'Potência': '325hp', 'Motor': '3.5L Turbo'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'Camry', 2022, dc02175a-c4a2-4b87-9fef-63adebded771, {'Potência': '203hp', 'Motor': '2.5L'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'C-Class', 2022, 0047fe3b-ecf6-4c77-9d6d-90b13dd221af, {'Potência': '255hp', 'Motor': '2.0L Turbo'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'E-Class', 2022, 0047fe3b-ecf6-4c77-9d6d-90b13dd221af, {'Potência': '255hp', 'Motor': '2.0L Turbo'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'A4', 2022, f3a65784-e1aa-4f9a-93d0-11c614e1faa4, {'Potência': '201hp', 'Motor': '2.0L Turbo'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'Q5', 2022, f3a65784-e1aa-4f9a-93d0-11c614e1faa4, {'Potência': '261hp', 'Motor': '2.0L Turbo'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'Focus', 2022, 661cdca7-1e16-4d5b-a155-866bd9613063, {'Potência': '150hp', 'Motor': '1.5L EcoBoost'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'Explorer', 2022, 661cdca7-1e16-4d5b-a155-866bd9613063, {'Potência': '300hp', 'Motor': '3.0L V6'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'Escape', 2022, 661cdca7-1e16-4d5b-a155-866bd9613063, {'Potência': '180hp', 'Motor': '2.5L Hybrid'});
INSERT INTO modelos (id, nome, ano, fabricante_id, caracteristicas) VALUES(uuid(), 'Ranger', 2022, 661cdca7-1e16-4d5b-a155-866bd9613063, {'Potência': '270hp', 'Motor': '2.3L EcoBoost'});



-- Inserção de Proprietários
INSERT INTO proprietarios (id, nome, idade, carros) VALUES (uuid(), 'John Doe', 35, ['Corolla']);
INSERT INTO proprietarios (id, nome, idade, carros) VALUES (uuid(), 'Jane Smith', 28, ['Mustang']);
INSERT INTO proprietarios (id, nome, idade, carros) VALUES (uuid(), 'Michael Johnson', 40, ['F-150', 'Elantra']);
INSERT INTO proprietarios (id, nome, idade, carros) VALUES (uuid(), 'Emily Brown', 32, ['C-Class', 'Tucson']);
INSERT INTO proprietarios (id, nome, idade, carros) VALUES (uuid(), 'David Wilson', 25, ['A4', 'Corolla']);
INSERT INTO proprietarios (id, nome, idade, carros) VALUES (uuid(), 'Jessica Martinez', 28, ['Camry', 'Q5']);
INSERT INTO proprietarios (id, nome, idade, carros) VALUES (uuid(), 'Daniel Thompson', 38, ['E-Class', 'Mustang']);
INSERT INTO proprietarios (id, nome, idade, carros) VALUES (uuid(), 'Laura Davis', 29, ['Civic', 'Explorer']);
INSERT INTO proprietarios (id, nome, idade, carros) VALUES (uuid(), 'William Clark', 45, ['Accord', 'Passat']);
INSERT INTO proprietarios (id, nome, idade, carros) VALUES (uuid(), 'Ashley Rodriguez', 27, ['Camaro', 'Ranger']);
INSERT INTO proprietarios (id, nome, idade, carros) VALUES (uuid(), 'James White', 33, ['Altima', 'Explorer']);
INSERT INTO proprietarios (id, nome, idade, carros) VALUES (uuid(), 'Elizabeth Harris', 40, ['Camry', 'Q5']);

-- Inserção de Manutenções
INSERT INTO manutencoes (id, modelo_id, nome_proprietario, data, descricao, custo) VALUES (uuid(), 1aecf58e-2d79-4120-b5f2-46de689d6e57,'John Doe', toTimestamp(now()), 'Troca de óleo', 50.0);
INSERT INTO manutencoes (id, modelo_id, nome_proprietario, data, descricao, custo) VALUES (uuid(), ea819185-77fa-4522-81c2-59359e93aacf,'Emily Brown', toTimestamp(now()), 'Troca de pneus', 200.0);
INSERT INTO manutencoes (id, modelo_id, nome_proprietario, data, descricao, custo) VALUES (uuid(), 65c7d997-5646-443b-80f5-dfacd8448ad4,'Jane Smith', toTimestamp(now()), 'Alinhamento e balanceamento', 80.0);
INSERT INTO manutencoes (id, modelo_id, nome_proprietario, data, descricao, custo) VALUES (uuid(), 21ce85ca-45cf-4b6d-bf9a-34b326360375, 'James White', toTimestamp(now()), 'Troca de filtros', 30.0);
INSERT INTO manutencoes (id, modelo_id, nome_proprietario, data, descricao, custo) VALUES (uuid(), f3effaa0-3488-49ab-8ffe-a51377ae581e,'James White', toTimestamp(now()), 'Revisão completa', 150.0);
INSERT INTO manutencoes (id, modelo_id, nome_proprietario, data, descricao, custo) VALUES (uuid(), 65c7d997-5646-443b-80f5-dfacd8448ad4,'Daniel Thompson', toTimestamp(now()), 'Substituição de correia dentada', 120.0);
INSERT INTO manutencoes (id, modelo_id, nome_proprietario, data, descricao, custo) VALUES (uuid(), 0e742cb3-141b-4372-8950-74af58373bd9,'Laura Davis', toTimestamp(now()), 'Troca de velas', 40.0);
