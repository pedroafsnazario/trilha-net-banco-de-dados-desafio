-- Passo 1 : Buscar nome e ano dos filmes (dbo.Filmes)
SELECT  Nome, Ano FROM Filmes

-- Passo 2 : Buscar nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano FROM Filmes ORDER BY Ano ASC;

-- Passo 3 : Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro';

-- Passo 4 : Buscar Filmes lançados em 1997
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

-- Passo 5 : Buscar Filmes lançados APÓS o ano 2000
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 2000 ORDER BY Ano ASC;

-- Passo 6 : Buscar Filmes com duracao maior que 100 e menor que 150, ordenado pela duracao em ordem crescente
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao ASC;

-- Passo 7 : Buscar quantidade de filmes lançadas no ano, agrupando por ano, ordenado pela duracao em ordem decrescente
SELECT Ano, COUNT(Nome) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC;

-- Passo 8 : Buscar Atores do genero masculino retornando o PrimeiroNome, UltimoNome
SELECT * FROM Atores WHERE Genero = 'M'

-- Passo 9 : Buscar Atores do genero feminino, retornando Primeiro e Ultimo Nome e ordenado pelo Primeiro Nome
SELECT * FROM Atores Where Genero = 'F' ORDER BY PrimeiroNome

-- Passo 10 : Buscar o nome do filme e o genero
SELECT 
F.Nome,
G.Genero
FROM Filmes F
INNER JOIN FilmesGenero S ON F.id = S.IdFilme
INNER JOIN Generos G ON S.IdGenero = G.Id 

-- Passo 11 : Buscar nome do filme e o genero do tipo Mistério
SELECT 
F.Nome,
G.Genero
FROM Filmes F
INNER JOIN FilmesGenero S ON F.id = S.IdFilme
INNER JOIN Generos G ON S.IdGenero = G.Id
WHERE G.Genero = 'Mistério'

-- Passo 12 : Buscar nome do filme e os atores, trazendo o Primeiro Nome, Ultimo Nome e seu papel
SELECT
F.Nome,
A.PrimeiroNome,
A.UltimoNome,
E.Papel
FROM Filmes F
INNER JOIN ElencoFilme E ON F.id = E.IdFilme
INNER JOIN Atores A ON E.IdAtor = A.Id



