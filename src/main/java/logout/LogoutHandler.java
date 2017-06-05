package logout;

import org.springframework.security.core.Authentication;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public interface LogoutHandler {
	void logout(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication);
}
