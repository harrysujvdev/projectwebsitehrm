package com.laptrinhjavaweb.security;

import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.stereotype.Component;

@Component
public class BcryrtPassCode {
	public String getBcryrtPass(String password) {
		String Bcrytpass = BCrypt.hashpw(password, BCrypt.gensalt(10));
		return Bcrytpass;
	}
}
