package mvcdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

@Controller
public class HomeController {

    @RequestMapping("/")
    public String showHomePage() {
        return "main-menu";
    }

    @RequestMapping("/showForm")
    public String showForm() {
        return "show-form";
    }

    @RequestMapping("/processForm")
    public String processForm() {
        return "process-form";
    }

    @RequestMapping("/processFormTwo")
    public String processFormTwo(HttpServletRequest request, Model theModel) {
        String theName = request.getParameter("studentName");
        theName = theName.toUpperCase();
        String result = "Version 2 - The uppercase version of your name : " + theName;
        theModel.addAttribute("message", result);
        return "process-form";
    }

    @RequestMapping("/processFormThree")
    public String processFormThree(@RequestParam("studentName") String studentName, Model theModel) {
        studentName = studentName.toUpperCase();
        String result = "Version 3 - The uppercase version of your name : " + studentName;
        theModel.addAttribute("message", result);
        return "process-form";
    }
}
