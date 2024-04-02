package com.example.RecoBook.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.RecoBook.entity.Book;

public interface BookRepository extends JpaRepository<Book, String> {
}