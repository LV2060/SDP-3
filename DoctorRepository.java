package com.klef.jfsd.sdp.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.klef.jfsd.sdp.model.Doctor;

@Repository
public interface DoctorRepository extends JpaRepository<Doctor,Integer>
{
  @Query("select a from Doctor a where a.name=?1 and a.password=?2")
  Doctor checkdoclogin(String uname, String pwd);

}