package com.bk.BusInfo;

// ���� �ð� ���� Ŭ����

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
		
		if(go.equals("�")) {
			if(location.equals("��õ(���а����)")) {
				time = "06:40";
			}
			else if((location.equals("������"))||(location.equals("���"))||(location.equals("�۳�"))||(location.equals("����"))){
				time = "07:00";
			}
			else if(location.equals("��ϼ���")) {
				time = "07:10";
			}
			else if((location.equals("����(����)"))||(location.equals("�д�-����"))) {
				time = "07:30";
			}
			else if(location.equals("����(������Ÿ�)")) {
				time = "07:40";
			}
			else if((location.equals("����"))||(location.equals("����(�����Ա�)"))) {
				time = "07:50";
			}
			else {
				time = "���� �Է����ּ���.";
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
