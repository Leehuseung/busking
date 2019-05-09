package kr.co.buskers.main.agency.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.buskers.common.page.AgencyPageResult;
import kr.co.buskers.main.agency.service.AgencyService;
import kr.co.buskers.repository.domain.AgencyGenre;
import kr.co.buskers.repository.domain.AgencyInfo;
import kr.co.buskers.repository.domain.AgencyPage;

@Controller("kr.co.buskers.main.agency.controller.AgencyController")
@RequestMapping("/main/board/agency")
public class AgencyController {
	
	@Autowired
	private AgencyService service;
	
	@RequestMapping("list.do")
	public void list(AgencyPage page, Model model) {
		if(page.getPageNo() == 0) {
			model.addAttribute("pageNo",1);
		}else {
			model.addAttribute("pageNo",page.getPageNo());
		}
		model.addAttribute("list",service.agencyInfoList(page));
		model.addAttribute("pageResult", new AgencyPageResult(
				page.getPageNo(), service.agencyInfoCount()));
	}
	
	@RequestMapping("checkform.do")
	public void checkform() {}
	
	@RequestMapping("insertform.do")
	public void insertform() {}
	
	@RequestMapping("insert.do")
	public String insert(AgencyInfo agencyInfo,AgencyGenre agencyGenre,HttpSession session) {
//		agencyInfo.setMemberNo(session.getAttribute("user").getMemberNo());
//		System.out.println(agencyInfo.getMemberNo());
		service.insertAgencyInfo(agencyInfo);
		agencyGenre.setAgencyInfoNo(agencyInfo.getAgencyInfoNo());
		service.insertAgencyGenre(agencyGenre);
		return "redirect:list.do";
	}
	
	// 주소 팝업창 띄우기
	@RequestMapping("jusopopup.do")
	public void jusopopup() {}
	
	@RequestMapping("detail.do")
	public void detail(int agencyInfoNo,int pageNo,Model model) {
		model.addAttribute("pageNo",pageNo);
		model.addAttribute("agencyInfo",service.selectAgencyInfoByNo(agencyInfoNo));
	}
	@RequestMapping("delete.do")
	public String delete(int agencyInfoNo) {
		// 3개의 테이블을 다 삭제해야함.
		System.out.println(agencyInfoNo);
		service.deleteAgencyInfoAll(agencyInfoNo);
		return "redirect:list.do";
	}
	
}
