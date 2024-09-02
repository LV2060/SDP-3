package com.klef.jfsd.sdp.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.Doctor;
import com.klef.jfsd.sdp.model.Patient;
import com.klef.jfsd.sdp.repository.AdminRepository;
import com.klef.jfsd.sdp.repository.DoctorRepository;
import com.klef.jfsd.sdp.repository.PatientRepository;

@Service
public class AdminServiceImpl implements AdminService{

  @Autowired
  private AdminRepository adminRepository;
  @Autowired
  private PatientRepository patientRepository;
  @Autowired
  private DoctorRepository doctorRepository;
  @Override
  public List<Patient> viewallpatients()
  {
    return patientRepository.findAll();
  }

  @Override
  public String deletepatient(int pid) 
  {
    Optional<Patient> obj=patientRepository.findById(pid);
    
        String msg = null;
        
        if(obj.isPresent()) {
           Patient patient=obj.get();
           patientRepository.delete(patient);
           
           msg = "Patient Deleted Successfully";
        }
        else
        {
          msg = "Patient Not Found";
        }
        
    return msg;
  }
  @Override
  public String deletedoctor(int eid) {
	  Optional<Doctor> obj=doctorRepository.findById(eid);
	    
      String msg = null;
      
      if(obj.isPresent()) {
         Doctor doctor=obj.get();
         doctorRepository.delete(doctor);
         
         msg = "Patient Deleted Successfully";
      }
      else
      {
        msg = "Patient Not Found";
      }
      
  return msg;
  }

  @Override
  public Patient viewpatientbyid(int pid)
  {
    Optional<Patient> obj=patientRepository.findById(pid);
    
     if(obj.isPresent()) 
     {
             Patient patient=obj.get();
             
             return patient;
          }
          else
          {
           return null;
          }
  }

  @Override
  public Admin checkadminlogin(String uname, String pwd) 
  {
    return adminRepository.checkadminlogin(uname, pwd);
  }

  @Override
  public String adddoctor(Doctor d) {
    doctorRepository.save(d);
    return "Doctor Added Successfully";
  }

  @Override
  public long patientcount() {
    return patientRepository.count();
  }

  @Override
  public long doctorcount() {
    return doctorRepository.count();
  }

  @Override
  public List<Doctor> viewalldoctors() 
  {
    return doctorRepository.findAll();
  }

}