package logout;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.http.HttpStatus;
import org.springframework.security.core.Authentication;
import org.springframework.util.Assert;


public class HttpStatusReturningLogoutSuccessHandler implements LogoutSuccessHandler {
	
	private final HttpStatus httpStatusToReturn;
	
	public HttpStatusReturningLogoutSuccessHandler(HttpStatus httpStatusToReturn) {
		Assert.notNull(httpStatusToReturn, "The provided HttpStatus must not be null.");
		this.httpStatusToReturn = httpStatusToReturn;
	}

	/**
	 * Initialize the {@code HttpStatusLogoutSuccessHandler} with the default
	 * {@link HttpStatus#OK}.
	 */
	public HttpStatusReturningLogoutSuccessHandler() {
		this.httpStatusToReturn = HttpStatus.OK;
	}

	/**
	 * Implementation of
	 * {@link LogoutSuccessHandler#onLogoutSuccess(HttpServletRequest, HttpServletResponse, Authentication)}
	 * . Sets the status on the {@link HttpServletResponse}.
	 */
	public void onLogoutSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		response.setStatus(this.httpStatusToReturn.value());
		response.getWriter().flush();
	}

}
