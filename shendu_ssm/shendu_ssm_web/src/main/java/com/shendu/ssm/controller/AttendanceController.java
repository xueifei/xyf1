package com.shendu.ssm.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.shendu.ssm.domain.Attendance;
import com.shendu.ssm.domain.Note;
import com.shendu.ssm.service.AttendanceService;
import com.shendu.ssm.service.NoteService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.UnsupportedEncodingException;
import java.text.ParseException;
import java.util.List;

@Controller
@RequestMapping("/attendance")
public class AttendanceController {

    @Autowired
    private AttendanceService attendanceService;

    @Autowired
    private NoteService noteService;

    @RequestMapping(value="/upload",method = RequestMethod.POST)
    public ModelAndView upload(@RequestParam(value="file",required = false) MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
        ModelAndView modelAndView = new ModelAndView();
        List<Attendance> attendances = attendanceService.readExcelFile(file);
        int i = attendanceService.insertInfoBatch(attendances);
        List<Attendance> attendances1 = attendanceService.findStuClassByList( attendances);
        modelAndView.addObject("attendanceList",attendances1);
        modelAndView.addObject("result",i>0?"上传成功":"上传失败");
        modelAndView.setViewName("uploadAttendance");
        return modelAndView;
    }

    //
    @RequestMapping(value="/upload1")
    public String upload1() throws UnsupportedEncodingException {

        return "upload";
    }
    //
    @RequestMapping(value="/findAll")
    public String findAll()  {

        return "attendance";
    }

    @RequestMapping(value="/findByCreateDate")
    public ModelAndView findByCreateDate(@RequestParam(value = "page",required = true,defaultValue = "1") int page,@RequestParam(value = "size",required = true,defaultValue = "5") int size) throws ParseException {


        List<Attendance> attendances = attendanceService.findByCreateDate(page , size);
        PageInfo pageInfo = new PageInfo(attendances);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("attendanceList",pageInfo);
        modelAndView.setViewName("attendance");
        return modelAndView;
    }

    //批量发短信
    @RequestMapping(value = "/messageSend")
    public ModelAndView MessageSend(){
        ModelAndView modelAndView = new ModelAndView();
        List<Attendance> byCreateDate = attendanceService.findByCreateDate();
        List<Note> notes = attendanceService.MessageSend(byCreateDate);

            int i = noteService.insertBatch(notes);

        List<Note> all = noteService.findAll(1, 5);
        PageInfo info = new PageInfo(all);
        modelAndView.addObject("rs",info);
        modelAndView.setViewName("listNote");
        return modelAndView;
    }

}
