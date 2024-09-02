package com.klef.jfsd.sdp.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Admin;
import com.klef.jfsd.sdp.model.Doctor;
import com.klef.jfsd.sdp.model.Patient;

@Service
public interface AdminService {
  public List<Patient> viewallpatients();
  public List<Doctor> viewalldoctors();

  public String deletepatient(int pid);
  public Patient viewpatientbyid(int pid);
  public Admin checkadminlogin(String uname, String pwd);
  public String adddoctor(Doctor d);
  public String deletedoctor(int eid);
  public long patientcount();
  public long doctorcount();
  
  

}