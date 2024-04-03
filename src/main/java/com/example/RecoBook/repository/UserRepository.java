package com.example.RecoBook.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.RecoBook.entity.User;

public interface UserRepository extends JpaRepository<User, Long> {

    User findByUsername(String username);
}