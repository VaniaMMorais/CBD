-- Lista de todos os fabricantes
SELECT * FROM fabricantes;

-- Lista de todos os modelos do fabricante "Ford"
SELECT * FROM modelos WHERE fabricante_id = 661cdca7-1e16-4d5b-a155-866bd9613063;

-- Lista todos os carros do proprietário "Jane Smith"
SELECT * FROM proprietarios WHERE nome = 'Jane Smith';

