package kr.co.beliefarm.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


import kr.co.beliefarm.service.UserService;
import kr.co.beliefarm.vo.User;

@Controller
@RequestMapping("/user/")
public class UserController {
	@Autowired(required=false) //required false 해야 오류 안나는데 왜그러지? 
	private UserService userService;

	/**
	 * 회원가입 처리하는 handler method
	 * @param user
	 * @param errors
	 * @return
	 * 작성자 : 이주현 
	 */
	@RequestMapping("join")
	public ModelAndView insertUser(@ModelAttribute User user, BindingResult errors) {		

	/*		
		//요청 파라미터 검증
		MemberRegisterValidator validator = new MemberRegisterValidator();
		validator.validate(member, errors);
		if(errors.hasErrors()){
			return new ModelAndView("member/register_form.tiles");
		}
	*/	
		//비즈니스 로직처리 - 회원 추가
		user.setId(2);
		System.out.println("컨트롤러 : "+user);
		userService.insertUser(user);
		return new ModelAndView("user/join_success.jsp", "user", user);
	}
	
	/**
	 * 회원가입 성공 페이지로 이동시키는 handler method
	 * @param user
	 * @return
	 * 작성자 : 이주현 
	 */
	@RequestMapping("welcome")
	public ModelAndView welcomeUser(@ModelAttribute User user) {

		return new ModelAndView("user/join_success.jsp", "user", user);
	}
	
}
