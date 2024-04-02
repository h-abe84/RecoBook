package com.example.RecoBook.entity;

import java.util.Date;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Entity
@Table(name = "books")
@Data
public class Book {

	/** ID */
	@Id
	@Column
	private String id = null;

	/** 著者 */
	@Column(length = 20, nullable = false)
	private String author = null;

	/** タイトル */
	@Column(length = 20, nullable = false)
	private String title = null;

	/** 情報 */
	@Column(length = 20, nullable = false)
	private String explanation = null;

	/** 登録日時 */
	private Date createdDate = null;

	/** 更新日時 */
	private Date updatedDate = null;

	/** 削除済 */
	private boolean deleted = false;
}
