package com.beyond.mvc.common.filter;

import com.beyond.mvc.common.util.EncryptUtil;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletRequestWrapper;

public class EncryptPasswordWrapper extends HttpServletRequestWrapper {

	public EncryptPasswordWrapper(HttpServletRequest request) {
		super(request);
	}

	@Override
	public String getParameter(String name) {
		
		// 클라이언트가 전달하는 name 값 중에 userPwd 값만 암호화 처리하고 나머지 정상적으로 반환하도록 구현
		if (name.equals("userPwd")) {
			// 암호화 처릴 후 반환한다
			return EncryptUtil.oneWayEnc(super.getParameter(name), "SHA-256");
		}
		
		// 그렇지 않은 경우 정상적인 값을 반환.
		return super.getParameter(name);
	}

}
