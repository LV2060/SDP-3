package com.klef.jfsd.sdp.service;

import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Patient;

@Service
public interface PatientService {
	public String addpatient(Patient patient);
	public String updatepatient(Patient patient);
	public Patient viewpatientbyid(int pid);
	public Patient checkpatientlogin(String email, String pwd);
	

}
