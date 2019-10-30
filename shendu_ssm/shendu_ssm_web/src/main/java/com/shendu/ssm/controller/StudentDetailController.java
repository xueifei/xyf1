package com.shendu.ssm.controller;

import com.shendu.ssm.domain.StudentDetail;
import com.shendu.ssm.service.StudentDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("student")
public class StudentDetailController {
    @Autowired
    private StudentDetailService studentDetailService;

    @RequestMapping("/addStu")
    public String addStu(StudentDetail studentDetail, Model model){
        System.out.println("添加学生信息");
        boolean isTrue = studentDetailService.addStu(studentDetail);
        model.addAttribute("mess",isTrue?"添加成功":"添加失败");
        return "addStudent";
    }

    @RequestMapping("/updateStu")
    public String updateStu(StudentDetail studentDetail, Model model){
        System.out.println("修改学生信息");
        boolean isTrue = studentDetailService.updateStu(studentDetail);
        model.addAttribute("mess",isTrue?"修改成功":"修改失败");
        return "editStutent";
    }

    @RequestMapping("/deleteStu")
    public String deleteStu(Integer id, Model model){
        System.out.println("删除学生信息");
        boolean isTrue = studentDetailService.deleteStu(id);
        model.addAttribute("mess",isTrue?"删除成功":"删除失败");
        return "listStudent";
    }

    @RequestMapping("/findAll")
    public String findAll(Model model){
        System.out.println("查询学生信息");
        List<StudentDetail> list = studentDetailService.findAll();
        model.addAttribute("list",list);
        return "listStudent";
    }

    /**
     * 更改用户，页面
     */
    @RequestMapping("editStu")
    public String edit(Model model, Integer id) {
        StudentDetail studentDetail = studentDetailService.findById(id);
        model.addAttribute("student", studentDetail);


        return "editStudent";
    }

    /*@RequestMapping("/findById")
    public ModelAndView findById(Integer id,Model model){
        System.out.println("查询学生信息");
        StudentDetail studentDetail = studentDetailService.findById(id);
        System.out.println(studentDetail);
        ModelAndView mav = new ModelAndView();
        mav.addObject("studentDetail",studentDetail);
        mav.setViewName("");
        return mav;
    }*/
}
