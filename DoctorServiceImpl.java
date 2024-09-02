package com.klef.jfsd.sdp.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Doctor;
import com.klef.jfsd.sdp.repository.AdminRepository;
import com.klef.jfsd.sdp.repository.DoctorRepository;
import com.klef.jfsd.sdp.repository.PatientRepository;

@Service
public class DoctorServiceImpl implements DoctorService {
  @Autowired
  private AdminRepository adminRepository;
  
  @Autowired
  private PatientRepository patientRepository;
  
  @Autowired
  private DoctorRepository doctorRepository;
  @Override
  public String adddoctor(Doctor doc) 
  {
    doctorRepository.save(doc);
    return "Doctor Added Successfullyy..!!";
  }
  
  @Override
  public String updatedoctor(Doctor doc) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public Doctor viewdocbyid(int did) {
    // TODO Auto-generated method stub
    return null;
  }

  @Override
  public Doctor checkdoclogin(String uname, String pwd) {
    return doctorRepository.checkdoclogin(uname, pwd);
    
  }
  

  @Override
  public String deletedoctor(int eid) {
    Optional<Doctor> obj = doctorRepository.findById(eid);
    
    String msg = null;
    if(obj.isPresent())
        {
          Doctor emp = obj.get();
          
          doctorRepository.delete(emp);
          
          msg = "Employee Deleted Successfully";
        }
        else
        {
          msg = "Employee Not Found";
        }
        
        return msg;
    
  }

}