package org.zerock.restcontroller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.zerock.domain.BoardVO;
import org.zerock.domain.Criteria;
import org.zerock.service.BoardService;

@RestController
@RequestMapping("/rboard")
public class SearchBoardRestController {

	static Logger logger = LoggerFactory.getLogger(SearchBoardRestController.class);
	
	@Inject
	BoardService service;
	
	@RequestMapping(value = "/list")
	public List<BoardVO> listPage(Criteria cri) throws Exception {
		logger.info(cri.toString());
		
		List<BoardVO> boards = service.listCriteria(cri);
		
		return boards;	// Marshall(마샬)
	}
	
	@RequestMapping(value = "/listAll", method=RequestMethod.GET)
	public ResponseEntity<String> listAll(HttpServletResponse response) throws Exception {
//		logger.info(cri.toString());
//		response.setContentType("application/json");
		HttpHeaders headers = new HttpHeaders();
	    headers.add("Content-Type", "application/json; charset=UTF-8");
	    
		ResponseEntity<String> xx = new ResponseEntity<String>("SUCCESS", headers, HttpStatus.OK);
		
//		return xx;
		return ResponseEntity.ok().header("Content-Type", "application/json; charset=UTF-8").body("SUCCESS");
	}
	
	
	
	
	
	
}
