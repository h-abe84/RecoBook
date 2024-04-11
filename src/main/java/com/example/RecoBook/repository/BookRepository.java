package com.example.RecoBook.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.RecoBook.entity.Book;

public interface BookRepository extends JpaRepository<Book, Long> {

	List<Book> findByUserIdOrderByUpdatedAtDesc(Long userId);
}
