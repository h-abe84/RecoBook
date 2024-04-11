DROP TABLE IF EXISTS comments CASCADE;
DROP TABLE IF EXISTS favorites CASCADE;
DROP TABLE IF EXISTS books CASCADE;
DROP TABLE IF EXISTS users CASCADE;
CREATE TABLE IF NOT EXISTS users
(
   user_id SERIAL NOT NULL,
   authority VARCHAR (255) NOT NULL,
   name VARCHAR (255) NOT NULL,
   password VARCHAR (255) NOT NULL,
   username VARCHAR (255) NOT NULL,
   created_at TIMESTAMP NOT NULL,
   updated_at TIMESTAMP NOT NULL,
   PRIMARY KEY (user_id)
);
CREATE TABLE IF NOT EXISTS books
(
   id SERIAL NOT NULL,
   user_id INT NOT NULL,
   path VARCHAR (255) NOT NULL,
   title VARCHAR (255) NOT NULL,
   writer VARCHAR (255) NOT NULL,
   description VARCHAR (1000) NOT NULL,
   latitude VARCHAR (20),
   longitude VARCHAR (20),
   created_at TIMESTAMP NOT NULL,
   updated_at TIMESTAMP NOT NULL,
   PRIMARY KEY (id)
);
ALTER TABLE books ADD CONSTRAINT FK_users_books FOREIGN KEY (user_id) REFERENCES users;
CREATE TABLE IF NOT EXISTS favorites
(
   id SERIAL NOT NULL,
   user_id INT NOT NULL,
   book_id INT NOT NULL,
   created_at TIMESTAMP NOT NULL,
   updated_at TIMESTAMP NOT NULL,
   PRIMARY KEY (id)
);
ALTER TABLE favorites ADD CONSTRAINT FK_favorites_users FOREIGN KEY (user_id) REFERENCES users;
ALTER TABLE favorites ADD CONSTRAINT FK_favorites_books FOREIGN KEY (book_id) REFERENCES books;
CREATE TABLE IF NOT EXISTS comments
(
   id SERIAL NOT NULL,
   book_id INT NOT NULL,
   description VARCHAR (1000) NOT NULL,
   created_at TIMESTAMP NOT NULL,
   updated_at TIMESTAMP NOT NULL,
   PRIMARY KEY (id)
);
ALTER TABLE comments ADD CONSTRAINT FK_comments_books FOREIGN KEY (book_id) REFERENCES books;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO recobook;
GRANT USAGE,
SELECT ON ALL
   SEQUENCES
IN    SCHEMA
   public
   TO
   recobook;