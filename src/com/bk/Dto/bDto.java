package com.bk.Dto;

public class bDto {
	String mId;
	String location;
	String chk_info;
	String column;
	String row;
	
	public bDto(String mId, String location, String chk_info, String column, String row) {
		this.mId = mId;
		this.location = location;
		this.chk_info = chk_info;
		this.column = column;
		this.row = row;
	}
	
	public String getmId() {
		return mId;
	}

	public String getLocation() {
		return location;
	}

	public String getChk_info() {
		return chk_info;
	}

	public String getColumn() {
		return column;
	}

	public String getRow() {
		return row;
	}
	
}
