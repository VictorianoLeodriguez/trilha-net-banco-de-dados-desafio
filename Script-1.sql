-- Desafio 1--
SELECT Nome, Ano FROM  Filmes;

-- Desafio 2
SELECT Nome, Ano, Duracao FROM Filmes ORDER BY Ano;

-- Desafio 3 
SELECT Nome, Ano, Duracao FROM Filmes WHERE  Nome = 'De Volta para o Futuro';

-- Desafio 4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = '1997';

-- Desafio 5
SELECT Nome, Ano, Duracao From Filmes WHERE Ano > '2000';

-- Desafio 6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao BETWEEN '100' AND '150' 
ORDER BY Duracao;

-- Desafio 7 
SELECT Ano, COUNT(*) AS NDeLancamentos FROM Filmes GROUP BY Ano ORDER BY SUM(Duracao) DESC;

-- Desafio 8
SELECT id, PrimeiroNome, UltimoNome, Genero FROM Atores WHERE Genero = 'M';

-- Desafio 9
SELECT id, PrimeiroNome, UltimoNome, Genero From Atores WHERE Genero = 'F' Order by PrimeiroNome; 

-- Desafio 10 
SELECT F.Nome AS Filme,G.Genero FROM Filmes.Filmes F INNER JOIN Filmes.FilmesGenero FG  ON F.Id = FG.IdFilme INNER JOIN Filmes.Generos G ON FG.IdGenero = G.Id;

-- Desafio 11
SELECT F.Nome AS Filme,G.Genero FROM Filmes.Filmes F INNER JOIN Filmes.FilmesGenero FG  ON F.Id = FG.IdFilme INNER JOIN Filmes.Generos G ON FG.IdGenero = G.Id Where G.Genero = 'Misterio';

-- Desafio 12
SELECT F.Nome AS Filme, A.PrimeiroNome, A.UltimoNome, EF.Papel FROM Filmes.Filmes F INNER JOIN Filmes.ElencoFilme EF  ON F.Id = EF.IdFilme INNER JOIN Filmes.Atores A ON EF.IdAtor = A.Id;
