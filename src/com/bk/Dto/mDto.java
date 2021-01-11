package com.bk.Dto;

public class mDto {
	String Name;
	String Id;
	String Pw;
	
	public mDto(String Name, String Id, String Pw) {
		this.Name = Name;
		this.Id = Id;
		this.Pw = Pw;
	}
	
	public String getName() {
		return Name;
	}

	public String getId() {
		return Id;
	}

	public String getPw() {
		return Pw;
	}

}
