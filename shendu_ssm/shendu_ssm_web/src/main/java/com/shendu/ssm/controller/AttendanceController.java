package com.shendu.ssm.controller;

import com.shendu.ssm.domain.Attendance;
import com.shendu.ssm.service.AttendanceService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.util.List;

@Controller
@RequestMapping("/attendance")
public class AttendanceController {

    @Autowired
    private AttendanceService attendanceService;

    @RequestMapping(value="/upload",method = RequestMethod.POST)
    public ModelAndView upload(@RequestParam(value="file",required = false) MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        ModelAndView modelAndView = new ModelAndView();
        List<Attendance> attendances = attendanceService.readExcelFile(file);
        int i = attendanceService.insertInfoBatch(attendances);
        modelAndView.addObject("attendanceList",attendances);
        modelAndView.addObject("result",i>0?"上传成功":"上传失败");
        modelAndView.setViewName("attendance");
        return modelAndView;
    }

    //
    @RequestMapping(value="/upload1")
    public String upload1() throws UnsupportedEncodingException {

        return "upload";
    }
}
