package ch12.com.filter;

// init : 필터 사용 초기화, 시작시
// doFilter : 작업 시 매번 동작
// destroy : 필터 종료 시 1 번
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

// Filter라는 인터페이스 상속 및 구현하여 사용
public class AuthenFilter implements Filter{
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		System.out.println("Filter01 초기화");
	}
	
	@Override
//	doFilter : 매번 동작
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain filterChain) throws IOException, ServletException {
		System.out.println("Filter01.jsp 수행");
//		filter01.jsp 에서 보낸 name을 여기 필터 파일이 먼저 받는다.
//		한 번 걸러서 filter01_process.jsp가 다음으로 받는다.
		String name = request.getParameter("name");
		
//		null이거나 빈 문자열이 나오면 아래의 것 실행하고
		if (name == null || name.equals("")) {
			response.setCharacterEncoding("UTF-8");
//			콘텐츠 타입을 html로 맞춰주기
			response.setContentType("text/html; charset=UTF-8");
//			PrintWriter : 문자 출력, 문자열 출력 --> 여기서는 콘솔출력임
//			파일에 출력하고 싶으면, 파일 스트링 만들어서 파일.wirter 하면 파일에 저장된다.
			PrintWriter writer = response.getWriter();
			String message = "입력된 name 값은 null 입니다.";
			writer.println(message); // -->콘솔에 출력
			return;
		}
//		아니면 원래대로 동작해라.
		filterChain.doFilter(request, response);
	}
	
	@Override
	public void destroy() {
		System.out.println("Filter01 해제");
	}
}



















