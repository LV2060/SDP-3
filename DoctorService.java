package com.klef.jfsd.sdp.service;

import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Doctor;

@Service
public interface DoctorService {
  public String adddoctor(Doctor doc);
  public String deletedoctor(int eid);
  public String updatedoctor(Doctor doc);
  public Doctor viewdocbyid(int did);
  public Doctor checkdoclogin(String uname, String pwd);

}