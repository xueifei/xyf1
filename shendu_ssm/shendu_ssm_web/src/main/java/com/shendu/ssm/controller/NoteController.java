package com.shendu.ssm.controller;

import com.github.pagehelper.PageInfo;
import com.shendu.ssm.domain.Note;
import com.shendu.ssm.service.NoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
@RequestMapping("note")
public class NoteController {
    @Autowired
    private NoteService noteService;
    @RequestMapping("findAll")
    public String findAry(Model model, @RequestParam(name = "page", required = true, defaultValue = "1") int page, @RequestParam(name = "size", required = true, defaultValue = "4") int size){
        List<Note> list = noteService.findAll(page, size);
        PageInfo rs = new PageInfo(list);
        model.addAttribute("rs",rs);
        return "listNote";
    }
//    @RequestMapping("finAry")
//    public String list(Model model, @RequestParam(name = "page", required = true, defaultValue = "1") int page, @RequestParam(name = "size", required = true, defaultValue = "4") int size) {
//        List<Note> rs1 = noteService.findAry();
//        //PageInfo就是一个分页Bean
//        PageInfo rs=new PageInfo(rs1);
//        model.addAttribute("rs", rs);
//
//        Map<Role, List<Note>> role_note = new HashMap<>();
//
//        for (Note note : rs1) {
//            List<Permission> ps = noteService.findAry();
//            role_note.put(role, ps);
//        }
//        model.addAttribute("role_permissions", role_note);
//
//        return "listRole";
//    }
}
