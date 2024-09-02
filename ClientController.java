package com.klef.jfsd.sdp.controller;


import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.Doctor;
import com.klef.jfsd.sdp.model.Patient;
import com.klef.jfsd.sdp.service.AdminService;
import com.klef.jfsd.sdp.service.DoctorService;

import com.klef.jfsd.sdp.service.PatientService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {
	
	@Autowired
	private AdminService adminService;
	
	@Autowired
	private PatientService patientService;
	
	@Autowired
	private DoctorService doctorService;
	
	
	
	@GetMapping("/")
	public String main() {
		return "index";
	}
	
	@GetMapping("about")
	public String aboutus() {
		return "about";
	}
	
	@GetMapping("patientreg")
	public ModelAndView patientreg() {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("patientreg");
		return mv;
	}
	
	@PostMapping("insertpatient")
	public ModelAndView insert(HttpServletRequest request) 
	{
		ModelAndView mv= new ModelAndView();
		
		String msg=null;
		
		try {
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String dob = request.getParameter("dob");
			String email = request.getParameter("email");
			String pwd = request.getParameter("pwd");
			String preferences=request.getParameter("preferences");
			String contact = request.getParameter("contact");
			
			Patient patient =new Patient();
			
			patient.setName(name);
			patient.setGender(gender);
			patient.setDateofbirth(dob);
			patient.setEmail(email);
			patient.setPassword(pwd);
			patient.setContact(contact);
			patient.setPreferences(preferences);
			
			msg=patientService.addpatient(patient);
			//emailService.sendEmail(patient.getEmail(),"Hello There Patient","Some one booked the session this week");
			
			mv.setViewName("displaymsg");
			
			mv.addObject("message",msg);
		}
		catch (Exception e) {
			msg=e.getMessage();
			
			mv.setViewName("displayerror");
			mv.addObject("message", msg);
		}
		return mv;
		
	}
	@GetMapping("patientlogin") // URI & method name can be different
	   public ModelAndView patientlogin()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("patientlogin");
	     return mv;
	   }
	
	@PostMapping("checkpatientlogin")
	   public ModelAndView checkpatientlogin(HttpServletRequest request)
	   {
	     ModelAndView mv = new ModelAndView();
	     
	     String email = request.getParameter("email");
	     String pwd = request.getParameter("pwd");
	     
	       Patient patient = patientService.checkpatientlogin(email, pwd);
	       
	       if(patient!=null)
	       {
	         //session
	    	   
	      HttpSession session =request.getSession();
	      
	      session.setAttribute("pid", patient.getId());//pid is a session variable
	      session.setAttribute("pname", patient.getName());//pname is a session  variable
	    	   
	    	   //session
	         mv.setViewName("patienthome");
	       }
	       else
	       {
	         mv.setViewName("patientlogin");
	         mv.addObject("message", "Login Failed");
	       }
	       
	       return mv;
	   }
	   
	@GetMapping("patienthome") 
	   public ModelAndView patienthome(HttpServletRequest request)
	   {
		   
		   HttpSession session =request.getSession();
		   
		  int pid=(int) session.getAttribute("pid");//pid is a session variable
		  String pname=(String) session.getAttribute("pname");//pname is a session variable
		   
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("patienthome");
	     mv.addObject("pid",pid);
	     mv.addObject("pname",pname);
	     
	     return mv;
	   }
	
	@GetMapping("adminlogin")
	   public ModelAndView adminlogin()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminlogin");
	     return mv;
	   }
	
	@PostMapping("checkadminlogin")
	   public ModelAndView checkadminlogin(HttpServletRequest request) 
	   {
		   
		   ModelAndView mv=new ModelAndView();
		   
		   
		   
		   String uname=request.getParameter("uname");
		   String pwd=request.getParameter("pwd");
		   
		   Admin a= adminService.checkadminlogin(uname, pwd);
		   
		   if(a!=null) {
			   mv.setViewName("adminhome");
			   
			   long pcount=adminService.patientcount();
			   long dcount=adminService.doctorcount();
			   
		       mv.addObject("pcount", pcount);
		       mv.addObject("dcount", dcount);
		   }
		   else {
			   mv.setViewName("adminlogin");
			   mv.addObject("message","Login Failed");
		   }
		return mv;
		   
	   }
	
	@GetMapping("viewallpatients")
	   public ModelAndView viewallpatients() {
		   
		   ModelAndView mv=new ModelAndView();
		   mv.setViewName("viewallpatients");
		   
		   List<Patient> patientlist=adminService.viewallpatients();
		   
		   mv.addObject("patientdata",patientlist);
		
		   return mv;
	   }
	
	@GetMapping("adminhome")
	   public ModelAndView adminhome()
	   {
		   long pcount=adminService.patientcount();
		   long dcount=adminService.doctorcount();
		   
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("adminhome");
	     
	     mv.addObject("pcount", pcount);
	     mv.addObject("dcount", dcount);
	     return mv;
	     
	   }
	
	@GetMapping("deletepatient")
	   public ModelAndView deletepatient()
	   {
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("deletepatient");
	     
	     List<Patient> patientlist =  adminService.viewallpatients();
	     
	     mv.addObject("patientdata", patientlist);
	     
	     return mv;
	   }
	@GetMapping("view")
	   public ModelAndView viewpatientdemo(@RequestParam("id") int pid)
	   {
	     Patient patient = adminService.viewpatientbyid(pid);
	     ModelAndView mv = new ModelAndView();
	     mv.setViewName("viewpatientbyid");
	     System.out.println(patient.toString());
	     mv.addObject("patient", patient);
	     return mv;
	   } 
	
	@GetMapping("/remove/{id}")
    public String deleteaction(@PathVariable("id") int pid)
    {
      adminService.deletepatient(pid);
      return "redirect:/deletepatient";
    }
	
	
	@GetMapping("updateprofile")
    public ModelAndView updatepatient(HttpServletRequest request)
    {
      ModelAndView mv = new ModelAndView();
      
      HttpSession session = request.getSession();
      
      mv.setViewName("updateprofile");
      
      mv.addObject("pid", session.getAttribute("pid"));
      mv.addObject("pname", session.getAttribute("pname"));
      
      int id = (int) session.getAttribute("pid");
      
      Patient patient = patientService.viewpatientbyid(id);
      
      mv.addObject("patient", patient);
      
      return mv;
    }
	
	@PostMapping("update")
    public ModelAndView updateaction(HttpServletRequest request)
    {
      String msg = null;
      
      ModelAndView mv = new ModelAndView();
      
        HttpSession session = request.getSession();
      
      mv.addObject("pid", session.getAttribute("pid"));
      mv.addObject("pname", session.getAttribute("pname"));
      
      int id = (int) session.getAttribute("pid");
      
     try
     {
       String name = request.getParameter("name");
       String dob = request.getParameter("dob");
      
       String email = request.getParameter("email");
       String pwd = request.getParameter("pwd");
       String preferences=request.getParameter("preferences");
       String contact = request.getParameter("contact");
       
       Patient patient = new Patient();
        patient.setId(id);
        patient.setName(name);
        patient.setDateofbirth(dob);
         
        patient.setEmail(email);
        patient.setPassword(pwd);
        patient.setPreferences(preferences);
        patient.setContact(contact);
        
        
        msg = patientService.updatepatient(patient);
        
        mv.setViewName("patientlogin");
        mv.addObject("message",msg);
       
     }
     catch(Exception e)
     {
       msg = e.getMessage();
       
       mv.setViewName("updateerror");
        mv.addObject("message",msg);
     }
      
     
      return mv;

    }
	
	@PostMapping("insertdoctor")
    public ModelAndView insertdoctoraction(@ModelAttribute("doctor") Doctor d) {
		ModelAndView mv=new ModelAndView();
		mv.setViewName("doctormsg");
		
		String msg=adminService.adddoctor(d);
		mv.addObject("message",msg);
		return mv;
    	
    }
	
	@GetMapping("patientlogout")
    public ModelAndView patientlogout() {
    	ModelAndView mv=new ModelAndView();
    	mv.setViewName("patientlogin");
    	mv.addObject("message","Logout Successfully");
    	return mv;
    }
	@GetMapping("adddoctor")
    public String addcustomer(Model m)
    {
      m.addAttribute("doctor", new Doctor());
      return "adddoctor";
    }
  
  
  @GetMapping("viewalldocs")
    public ModelAndView viewalldocs()
    {
      ModelAndView mv = new ModelAndView();
      mv.setViewName("viewalldocs");
      
      List<Doctor> doclist =  adminService.viewalldoctors();
      
      mv.addObject("docdata", doclist);
      
      return mv;
    }
  
  
  @GetMapping("doctorlogin")
     public ModelAndView doctorlogin()
     {
       ModelAndView mv = new ModelAndView();
       mv.setViewName("doctorlogin");
       return mv;
     }
  
  @PostMapping("checkdoclogin")
     public ModelAndView checkdoclogin(HttpServletRequest request) 
     {
       
       ModelAndView mv=new ModelAndView();
       
       
       
       String uname=request.getParameter("uname");
       String pwd=request.getParameter("pwd");
       
       Doctor a = doctorService.checkdoclogin(uname, pwd);
       
       if(a!=null) {
         mv.setViewName("doctorhome");
         
         long pcount=adminService.patientcount();
         long dcount=adminService.doctorcount();
         
           mv.addObject("pcount", pcount);
           mv.addObject("dcount", dcount);
       }
       else {
         mv.setViewName("doctorlogin");
         mv.addObject("message","Login Failed");
       }
    return mv;
       
     }
  @GetMapping("deletedoctor")
  public ModelAndView deletedoctor()
  {
    ModelAndView mv = new ModelAndView();
    mv.setViewName("deletedoctor");
    
    List<Doctor> doctorlist =  adminService.viewalldoctors();
    
    mv.addObject("doctordata", doctorlist);
    
    return mv;
  }
  @GetMapping("delete/{id}")
  public String deleteactions(@PathVariable("id") int eid)
  {
    adminService.deletepatient(eid);
    return "redirect:/deletepatient";
  }
  
  
  
  @GetMapping("doctorhome")
  public ModelAndView doctorhome()
  {
     long pcount=adminService.patientcount();
     long dcount=adminService.doctorcount();
     
    ModelAndView mv = new ModelAndView();
    mv.setViewName("doctorhome");
    
    mv.addObject("pcount", pcount);
    mv.addObject("dcount", dcount);
    return mv;
    
  }
  @GetMapping("bmi")
  public String bmi() {
	  return "bmi";
  }
  
  @GetMapping("diet")
  public String diet() {
	  return "diet";
  }
	
  @GetMapping("dashboard")
  public String dashboard() {
	  return "dashboard";
  }
  
  @GetMapping("contactus")
  public String contactus() {
    return "contactus";
  }
  
 
  
  @GetMapping("weights")
  public String weights() {
    return "weights";
  }
  
  @GetMapping("addconsultation")
  public String addconsultation() {
    return "addconsultation";
  }
  
  @GetMapping("overweight")
  public String overweight() {
    return "overweight";
  }
  
  @GetMapping("obesity")
  public String obesity() {
    return "obesity";
  }
  
  @GetMapping("underweight")
  public String underweight() {
    return "underweight";
  }
  
  @GetMapping("nutritionalassessment")
  public String nutritionalassessment() {
    return "nutritionalassessment";
  }
  
  @GetMapping("appointments")
  public String appointments() {
	  return "appointments";
  }
  
  
  
  
 
  }
	
	


