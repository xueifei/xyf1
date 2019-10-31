package com.shendu.ssm.service;

import com.shendu.ssm.domain.StudentDetail;

import java.util.List;

public interface StudentDetailService {
    public boolean addStu(StudentDetail studentDetail);
    public boolean updateStu(StudentDetail studentDetail);
    public boolean deleteStu(Integer id);
    public List<StudentDetail> findAll();
    public StudentDetail findById(Integer id);

    boolean updateStuClassBatch( String stuClass,Integer[] ids);
}
