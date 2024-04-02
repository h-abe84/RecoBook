DROP TABLE IF EXISTS books;
CREATE TABLE IF NOT EXISTS books
(
   id varchar (255) NOT NULL,
   author varchar (20) NULL,
   title varchar (50) NULL,
   explanation varchar (1000) NULL,
   deleted bool NOT NULL,
   created_date timestamp NULL,
   updated_date timestamp NULL,
   PRIMARY KEY (id)
);
DROP TABLE IF EXISTS User;
CREATE TABLE IF NOT EXISTS User
(
   id varchar (255) NOT NULL,
   user_name varchar (20) NULL,
   mail_address varchar (50) NULL,
   password varchar (20) NULL,
   deleted bool NOT NULL,
   created_date timestamp NULL,
   updated_date timestamp NULL,
   PRIMARY KEY (id)
);
DROP TABLE IF EXISTS books_finished_reading;
CREATE TABLE IF NOT EXISTS books_finished_reading
(
   user_id varchar (200) NOT NULL,
   book_id varchar (200) NULL,
   deleted bool NOT NULL,
   created_date timestamp NULL,
   updated_date timestamp NULL,
   PRIMARY KEY (id)
);
DROP TABLE IF EXISTS recommend_books;
CREATE TABLE IF NOT EXISTS recommend_books
(
   id varchar (255) NOT NULL,
   user_id varchar (200) NULL,
   read_book_id varchar (200) NULL,
   recommend_book_id varchar (200) NULL,
   deleted bool NOT NULL,
   created_date timestamp NULL,
   updated_date timestamp NULL,
   PRIMARY KEY (id)
);
DROP TABLE IF EXISTS review_books;
CREATE TABLE IF NOT EXISTS review_books
(
   id varchar (255) NOT NULL,
   user_id varchar (200) NULL,
   book_id varchar (200) NULL,
   content varchar (200) NULL,
   star_count varchar (200) NULL,
   deleted bool NOT NULL,
   created_date timestamp NULL,
   updated_date timestamp NULL,
   PRIMARY KEY (id)
);
DROP TABLE IF EXISTS like_books;
CREATE TABLE IF NOT EXISTS like_books
(
   id varchar (255) NOT NULL,
   user_id varchar (200) NULL,
   book_id varchar (200) NULL,
   deleted bool NOT NULL,
   created_date timestamp NULL,
   updated_date timestamp NULL,
   PRIMARY KEY (id)
);