package com.DongHang_ComeFunny.www.controller.serviceCenter;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.DongHang_ComeFunny.www.model.service.serviceCenter.ServiceCenterQuestionService;
import com.DongHang_ComeFunny.www.model.vo.QuestionBoard;
import com.DongHang_ComeFunny.www.model.vo.User;

import common.exception.FileException;

@Controller
@RequestMapping("/serviceCenter/question")
public class ServiceCenterQuestionController {

	@Autowired
	ServiceCenterQuestionService serviceCenterQuestionService;

	@RequestMapping("/list")
	public ModelAndView viewQuestionList(String searchKinds, String searchText, HttpSession session,
			@RequestParam(required = false, defaultValue = "1") int cPage) {

		ModelAndView mav = new ModelAndView();
		User sessionUser = (User) session.getAttribute("logInInfo");
		if (sessionUser != null) {

			int cntPerPage = 10;

			System.out.println(searchText);
			System.out.println(searchKinds);

			Map<String, Object> searchQuestion = new HashMap<>();

			searchQuestion.put("searchKinds", searchKinds);
			searchQuestion.put("searchText", searchText);
			System.out.println(searchQuestion);
			Map<String, Object> questionList = serviceCenterQuestionService.selectQuestionList(cPage, cntPerPage,
					searchQuestion);
			System.out.println(questionList);
			mav.addObject("paging", questionList.get("paging"));
			mav.addObject("questionData", questionList);
			mav.addObject("searchKinds", searchKinds);
			mav.addObject("searchText", searchText);
			mav.setViewName("serviceCenter/question/list");
			return mav;
		} else {
			mav.addObject("alertMsg", "로그인해 주세요.");
			mav.addObject("url", "/login");
			mav.setViewName("common/result");
			return mav;
		}

	}

	@RequestMapping("/view")
	public ModelAndView viewQuestion(int qbNo, HttpSession session) {

		ModelAndView mav = new ModelAndView();
		User sessionUser = (User) session.getAttribute("logInInfo");
		if (sessionUser != null) {

			System.out.println(qbNo);

			Map<String, Object> viewQuestionMap = serviceCenterQuestionService.viewQuestion(qbNo);

			System.out.println(viewQuestionMap);

			if (viewQuestionMap.get("viewAnswerFile") != null) {
				mav.addObject("viewQuestion", viewQuestionMap.get("viewQuestion"));
				mav.addObject("viewQuestionFile", viewQuestionMap.get("viewQuestionFile"));
				mav.addObject("viewAnswerFile", viewQuestionMap.get("viewAnswerFile"));
				mav.setViewName("serviceCenter/question/view");
				return mav;
			} else {
				mav.addObject("viewQuestion", viewQuestionMap.get("viewQuestion"));
				mav.addObject("viewQuestionFile", viewQuestionMap.get("viewQuestionFile"));
				mav.setViewName("serviceCenter/question/view");
				return mav;
			}
		} else {
			mav.addObject("alertMsg", "로그인해 주세요.");
			mav.addObject("url", "/login");
			mav.setViewName("common/result");
			return mav;
		}
	}

	@RequestMapping("/write")
	public ModelAndView writeAnswer(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User sessionUser = (User) session.getAttribute("logInInfo");
		if (sessionUser != null) {
			mav.setViewName("serviceCenter/question/write");
			return mav;
		} else {
			mav.addObject("alertMsg", "로그인해 주세요.");
			mav.addObject("url", "/login");
			mav.setViewName("common/result");
			return mav;
		}
	}

	@RequestMapping(value = "/writeImpl", method = RequestMethod.POST)
	public ModelAndView writeQuestionImpl(QuestionBoard writeQuestionInfo,
			@RequestParam(required = false) List<MultipartFile> questionFiles, HttpSession session)
			throws FileException {
		ModelAndView mav = new ModelAndView();
		User sessionUser = (User) session.getAttribute("logInInfo");

		if (sessionUser != null) {

			String root = session.getServletContext().getRealPath("/");
			writeQuestionInfo.setQbUNo(sessionUser.getuNo());
			System.out.println(writeQuestionInfo);
			System.out.println(questionFiles);
			System.out.println(root);

			serviceCenterQuestionService.writeQuestion(writeQuestionInfo, questionFiles, root);
			mav.setViewName("redirect:/serviceCenter/question/list");
			return mav;
		} else {
			mav.addObject("alertMsg", "로그인해 주세요.");
			mav.addObject("url", "/login");
			mav.setViewName("common/result");
			return mav;
		}
	}

	@RequestMapping("/modify")
	public ModelAndView modifyAnswer(int qbNo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		User sessionUser = (User) session.getAttribute("logInInfo");

		if (sessionUser != null) {
			Map<String, Object> viewQuestionMap = serviceCenterQuestionService.viewQuestion(qbNo);

			System.out.println(viewQuestionMap);

			mav.addObject("viewQuestion", viewQuestionMap.get("viewQuestion"));
			mav.addObject("viewQuestionFile", viewQuestionMap.get("viewQuestionFile"));
			mav.addObject("loginUser", sessionUser);
			mav.setViewName("serviceCenter/question/modify");
			return mav;
		} else {
			mav.addObject("alertMsg", "로그인해 주세요.");
			mav.addObject("url", "/login");
			mav.setViewName("common/result");
			return mav;
		}
	}

	@RequestMapping(value = "/modifyImpl", method = RequestMethod.POST)
	public ModelAndView modifyQuestionImpl(QuestionBoard modiQuestionInfo,
			@RequestParam(required = false) List<MultipartFile> answerFiles, HttpSession session) throws FileException {
		ModelAndView mav = new ModelAndView();
		User sessionUser = (User) session.getAttribute("logInInfo");
		if (sessionUser != null) {

			String root = session.getServletContext().getRealPath("/");

			System.out.println(modiQuestionInfo);
			System.out.println(answerFiles);
			System.out.println(root);

			if (modiQuestionInfo != null) {
				serviceCenterQuestionService.modifyQuestion(modiQuestionInfo, answerFiles, root);
				mav.setViewName("redirect:/serviceCenter/question/list");
				return mav;
			} else {
				mav.setViewName("serviceCenter/question/list");
				return mav;
			}
		} else {
			mav.addObject("alertMsg", "로그인해 주세요.");
			mav.addObject("url", "/login");
			mav.setViewName("common/result");
			return mav;
		}
	}

	@RequestMapping(value = "/deleteFile", method = RequestMethod.POST)
	@ResponseBody
	public String deleteFile(int qfNo, HttpSession session) {
		// 1. 파라미터값 Service에 전달 후 int 값 반환
		// ( 성공 : 1, 실패 : 0 )
		int res = serviceCenterQuestionService.deleteFile(qfNo);

		// ---------------- Service에서 처리한 데이터값 출력-------------------------
		System.out.println("[controller] deleteFile res 반환값 : " + res);
		// --------------------------------------------------------------------------

		// 2. 해당 파일 삭제 성공한다면,
		if (res > 0) {
			// 2-1. res = 1 : javascript에 tagSelector로 html 태그의 id값이 "#f+ffno"인 값을 반환
			return "#f" + qfNo;
		} else {
			// 2-2. res = 0 : 실패라고 알림
			return "fail";
		}

	}

	@RequestMapping("/downloadFile")
	@ResponseBody
	public FileSystemResource downloadFile(HttpServletResponse response, HttpSession session, String ofname,
			String rfname) {
		// 1. 서버에 저장된 업로드 파일경로
		String readFolder = session.getServletContext().getRealPath("/resources/upload");

		// ---------------파라미터 값 제대로 불러왔는지 확인-------------------------
		System.out.println("[controller] freeDowonload - readFolder : " + readFolder);
		System.out.println("[controller] freeDowonload - rfname : " + rfname);
		System.out.println("[controller] freeDowonload - ofname : " + ofname);
		// --------------------------------------------------------------------------

		// 2. FileSystemResource 객체 생성
		FileSystemResource downFile = new FileSystemResource(readFolder + "/" + rfname);

		try {
			// 3. response 헤더 설정 + 파일 이름 인코딩
			response.setHeader("Content-Disposition", "attachment; filename=" + URLEncoder.encode(ofname, "UTF-8"));
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		// 4. FileSystemResource downFile 값 반환
		return downFile;
	}

	@RequestMapping("/delete")
	public ModelAndView deleteQuestion(String[] qbNo, HttpSession session) {

		ModelAndView mav = new ModelAndView();
		User sessionUser = (User) session.getAttribute("logInInfo");
		if (sessionUser != null) {

			if (qbNo != null) {
				serviceCenterQuestionService.deleteQuestion(qbNo);
				mav.setViewName("redirect:/serviceCenter/question/list");
				return mav;
			} else {
				mav.setViewName("redirect:/serviceCenter/question/list");
				return mav;
			}
		} else {
			mav.addObject("alertMsg", "로그인해 주세요.");
			mav.addObject("url", "/login");
			mav.setViewName("common/result");
			return mav;
		}
	}

}
