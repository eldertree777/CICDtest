package com.jjewon.cicd.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/basic")
public class basicController {
	
	@GetMapping("hello")
	public ResponseEntity<Map<String, Object>> hello() {
		System.out.println("all");
		Map<String, Object> resultMap = new HashMap<>();
		HttpStatus status = null;
		status = HttpStatus.OK;
		resultMap.put("BucketList", "hello");

		return new ResponseEntity<Map<String, Object>>(resultMap, status);
	}
}
