package com.bk.BusInfo;

// 버스 시간 정보 클래스

public class BusInfo {
	
	String location;
	String time;
	String go;
	String price;
	
	public BusInfo(String location, String go) {
		this.location = location;
		this.go = go;
	}

	public String getLocation() {
		return location;
	}

	public String getTime() {
		
		if(go.equals("등교")) {
			if(location.equals("인천(문학경기장)")) {
				time = "06:40";
			}
			else if((location.equals("영등포"))||(location.equals("잠실"))||(location.equals("송내"))||(location.equals("범계"))){
				time = "07:00";
			}
			else if(location.equals("상록수역")) {
				time = "07:10";
			}
			else if((location.equals("교대(강남)"))||(location.equals("분당-성남"))) {
				time = "07:30";
			}
			else if(location.equals("수원(법원사거리)")) {
				time = "07:40";
			}
			else if((location.equals("죽전"))||(location.equals("수원(영통입구)"))) {
				time = "07:50";
			}
			else {
				time = "값을 입력해주세요.";
			}
		}else {
			time = "18:10";
		}
		
		return time;
	}

	public String getPrice() {
		return price;
	}

}
