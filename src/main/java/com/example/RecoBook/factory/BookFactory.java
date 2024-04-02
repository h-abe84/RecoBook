package com.example.RecoBook.factory;

import java.util.Date;
import java.util.UUID;

import com.example.RecoBook.entity.Book;

public class BookFactory {

	/** 新規本の生成 */
	public static Book newBook() {
		Book book = new Book();
		return book;
	}

	/** 入力内容を設定した本を生成 */
	public static Book createBook(Book book) {
		String id = UUID.randomUUID().toString();
		book.setId(id);
		Date current = new Date();
		book.setCreatedDate(current);
		book.setUpdatedDate(current);
		return book;
	}

	/** 更新内容を設定した本を生成 */
	public static Book updateBook(Book book, Book form) {
		book.setAuthor(form.getAuthor());
		book.setTitle(form.getTitle());
		book.setExplanation(form.getExplanation());
		Date current = new Date();
		book.setUpdatedDate(current);
		return book;
	}

	/** 削除内容を設定した本を生成 */
	public static Book deleteBook(Book book) {
		book.setDeleted(true);
		Date current = new Date();
		book.setUpdatedDate(current);
		return book;
	}
}
