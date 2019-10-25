package com.shendu.ssm.controller;

import com.shendu.ssm.service.AttendanceService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;

@Controller
@RequestMapping("/attendance")
public class AttendanceController {

    @Autowired
    private AttendanceService attendanceService;

    @RequestMapping(value="/upload.do",method = RequestMethod.POST)
    @ResponseBody
    public String  upload(@RequestParam(value="file",required = false) MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {

        String result = attendanceService.readExcelFile(file);

        return result;
    }
}
