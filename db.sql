CREATE DATABASE  biblioteca_baumann;
USE biblioteca_baumann;

CREATE TABLE autores(

id_autor INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
nacionalidade VARCHAR(100) NOT NULL,
ano_nascimento DATE
);

CREATE TABLE livros(

    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100),
    genero VARCHAR(100),
    ano_publicacao DATE,
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES autores (id_autor)
);

CREATE TABLE leitores(
    id_leitor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    telefone VARCHAR(20) NOT NULL
);

CREATE TABLE emprestimos(
    id_emprestimo INT AUTO_INCREMENT PRIMARY KEY,
    data_emprestimo DATE,
    data_devolução DATE,
     id_livro INT,    
    id_leitor INT,   
    FOREIGN KEY (id_livro) REFERENCES livros(id_livro),
    FOREIGN KEY (id_leitor) REFERENCES leitores(id_leitor)
)

    

