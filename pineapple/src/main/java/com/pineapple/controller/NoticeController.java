package com.pineapple.controller;

import java.io.File;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import com.pineapple.common.Util;
import com.pineapple.service.NoticeService;
import com.pineapple.vo.Notice;

@Controller
@RequestMapping(path = "/upload/")
public class NoticeController {

   @Autowired
   @Qualifier("noticeService")
   private NoticeService noticeService;
   
     @RequestMapping(path = "/nt-list", method = RequestMethod.GET) 
     public String list(String col, String word, Model model, HttpSession session) {
     

     List<Notice> list = noticeService.listNotice(col, word);
     
     model.addAttribute("notice", list);
     
     return "upload/nt-list"; 
     }
     

   @RequestMapping(path = "/nt-write", method = RequestMethod.GET)
   public String writeForm() {

      return "upload/nt-write";
   }

   
   @RequestMapping(path = "/nt-write", method = RequestMethod.POST)
   public String write(MultipartHttpServletRequest req, Notice notice) {
 
            noticeService.insertNotice(notice);


      return "redirect:nt-list";
   	}
}




