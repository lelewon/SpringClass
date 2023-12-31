package com.java.dto;

import java.sql.Timestamp;



import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class SportDto {
	
	private int sfno;
	private String sfnm;
	private String scate;
	private String dongcate;
	private String lat;
	private String lng;
	private String addr;
	private String telno;
	private String homepage;
	private String wifi;
	private String pet;
	private String parking;
	private String slope;
	private int stotalstar;
	private int stotalpeo;
	private int savgstar;
	private int stotalpick;
	private String imgurl1;
	private String imgurl2;
	private String imgurl3;
	private String imgurl4;
	private String imgurl5;
	
}
