package com.test.todo.model;

import lombok.Data;
import lombok.RequiredArgsConstructor;

//Data Transfer Object == 택배 상자
//@Setter
//@Getter
//@ToString
//@NoArgsConstructor
//@AllArgsConstructor
//@RequiredArgsConstructor
//@EqualsAndHashCode
@Data
public class TodoDTO {

	//테이블의 컬럼
	private String seq;
	private String todo;
	private String state;
	private String regdate;
	
}









