package com.sayy.sayymaastylo.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class DisplayController
{
@RequestMapping(value={"/","","/home"})
public String goindexpage()
{
	System.out.println("----home page displaying---");
return "index";
}

@RequestMapping("/aboutus")
public String getaboutuspage()
{
	System.out.println("----aboutus page displaying---");
return "aboutus";
}
@RequestMapping("/contactus")
public String showcontactuspage()
{
	System.out.println("----contactus page displaying---");
return "contactus";
}

}
