package com.bk.Dto;


public class cDto {
	
	String mId;
	int Seq;
	String Cago;
	String Title;
	String Text;
	String Dat;
	
	public cDto(String mId, int Seq, String Cago, String Title, String Text, String Dat) {
		this.mId = mId;
		this.Seq = Seq;
		this.Cago = Cago;
		this.Title = Title;
		this.Text = Text;
		this.Dat = Dat;
	}
	
	public String getmId() {
		return mId;
	}

	public void setmId(String mId) {
		this.mId = mId;
	}

	public int getSeq() {
		return Seq;
	}

	public void setSeq(int seq) {
		Seq = seq;
	}

	public String getCago() {
		return Cago;
	}

	public void setCago(String cago) {
		Cago = cago;
	}

	public String getTitle() {
		return Title;
	}

	public void setTitle(String title) {
		Title = title;
	}

	public String getText() {
		return Text;
	}

	public void setText(String text) {
		Text = text;
	}

	public String getDat() {
		return Dat;
	}

	public void setDat(String dat) {
		Dat = dat;
	}
	
	

}
