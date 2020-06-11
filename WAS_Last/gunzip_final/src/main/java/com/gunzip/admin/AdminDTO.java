package com.gunzip.admin;

public class AdminDTO {
	private String id;
    private String password;
    private String token;
    
    public AdminDTO() {
    	
    }
    
	public AdminDTO(String id) {
		super();
		this.id = id;
	}

	public AdminDTO(String id, String password) {
		super();
		this.id = id;
		this.password = password;
	}

	public AdminDTO(String id, String password, String token) {
		super();
		this.id = id;
		this.password = password;
		this.token = token;
	}
		
	@Override
	public String toString() {
		return "AdminDTO [id=" + id + ", password=" + password + ", token=" + token + "]";
	}

	public String getid() {
		return id;
	}

	public void setid(String id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getToken() {
		return token;
	}

	public void setToken(String token) {
		this.token = token;
	}   
}