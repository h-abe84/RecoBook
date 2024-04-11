package com.example.RecoBook.form;

import org.springframework.web.multipart.MultipartFile;

import com.example.RecoBook.validation.constraints.ImageByte;
import com.example.RecoBook.validation.constraints.ImageNotEmpty;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;
import lombok.Data;

@Data
public class BookForm {

	private Long id;

	private Long userId;

	@ImageNotEmpty
	@ImageByte(max = 2000000)
	private MultipartFile image;

	private String imageData;

	private String path;

	@NotEmpty
	@Size(max = 1000)
	private String title;
	
	private String writer;
	
	private String description;

	private UserForm user;

}