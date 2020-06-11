package com.gunzip.mandooweb.index3;

public class index3DayDTO {
	private String accidentday;
    private int cnt;

	public index3DayDTO() {
		super();
	}

	public index3DayDTO(String accidentday, int cnt) {
		super();
		this.accidentday = accidentday;
		this.cnt = cnt;
	}

	public String getAccidentday() {
		return accidentday;
	}

	public void setAccidentday(String accidentday) {
		this.accidentday = accidentday;
	}

	public int getcnt() {
		return cnt;
	}

	public void setcnt(int cnt) {
		this.cnt = cnt;
	}

	@Override
	public String toString() {
		return "index3DayDTO [accidentday=" + accidentday + ", cnt=" + cnt + "]";
	}
}