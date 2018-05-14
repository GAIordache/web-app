package com.in28minutes.login;

public class LoginService {
	
	public boolean isUserValid(String pUser, String pPassword) {
		if(pUser.equals("gigi") && pPassword.equals("pipi"))
			return true;
		
		return false;
	}
}
