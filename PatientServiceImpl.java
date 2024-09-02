package com.klef.jfsd.sdp.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.sdp.model.Patient;
import com.klef.jfsd.sdp.repository.PatientRepository;

@Service
public class PatientServiceImpl implements PatientService{

	@Autowired
	private PatientRepository patientRepository;
	
	@Override
	public String addpatient(Patient patient) {
		patientRepository.save(patient);
		return "Patient Added Succesfully";
	}

	@Override
	public String updatepatient(Patient patient) {
		
		Patient p=patientRepository.findById(patient.getId()).get();
		
		p.setName(patient.getName());
		p.setDateofbirth(patient.getDateofbirth());
		p.setPreferences(patient.getPreferences());
		p.setEmail(patient.getEmail());
		p.setPassword(patient.getPassword());
		p.setContact(patient.getContact());
		
		patientRepository.save(p);
		
	
		return "Patient Updated Successfully";
	}

	@Override
	public Patient viewpatientbyid(int pid) {
    Optional<Patient> obj =  patientRepository.findById(pid);
        
        if(obj.isPresent())
        {
          Patient patient = obj.get();
          
          return patient;
        }
        else
        {
          return null;
        }
	}

	@Override
	public Patient checkpatientlogin(String email, String pwd) {
		return patientRepository.checkpatientlogin(email,pwd);
	}

}
