package com.acorn.shoopse.wearing.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.ModelAndView;

import com.acorn.shoopse.agency.dto.AgencyDto;
import com.acorn.shoopse.wearing.dto.WearingDto;


public interface WearingService {
	public void insert(WearingDto dto);
	public ModelAndView getList();
	public ModelAndView getpName(String p_kind_code);
	public ModelAndView getProductCode(HttpServletRequest request);
	public void insertWareDetail(HttpServletRequest request);
	public ModelAndView getDetailList();
}
