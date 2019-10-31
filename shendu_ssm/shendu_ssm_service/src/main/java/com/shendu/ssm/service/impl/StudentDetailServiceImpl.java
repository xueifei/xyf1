package com.shendu.ssm.service.impl;

import com.shendu.ssm.domain.StudentDetail;
import com.shendu.ssm.mapper.StudentDetailDao;
import com.shendu.ssm.service.StudentDetailService;
import org.apache.commons.beanutils.ConvertUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentDetailServiceImpl implements StudentDetailService {
    @Autowired
    private StudentDetailDao studentDetailDao;

    @Override
    public boolean addStu(StudentDetail studentDetail) {
        try{
            studentDetailDao.addStu(studentDetail);
            return true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean updateStu(StudentDetail studentDetail) {
        try{
            studentDetailDao.updateStu(studentDetail);
            return true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean deleteStu(Integer id) {

        try{
            studentDetailDao.deleteStu(id);
            return true;
        }catch(Exception e){
            e.printStackTrace();
        }


        return false;
    }

    @Override
    public List<StudentDetail> findAll() {
        List<StudentDetail> list = studentDetailDao.findAll();
        return list;
    }

    @Override
    public StudentDetail findById(Integer id) {
        StudentDetail studentDetail = studentDetailDao.findById(id);
        return studentDetail;
    }

    @Override
    public boolean updateStuClassBatch(String stuClass,String[] ids ) {
        try{
            Integer[] ids1 = (Integer[]) ConvertUtils.convert(ids, Integer.class);
            studentDetailDao.updateStuClassBatch(stuClass,ids1);
            return true;
        }catch(Exception e){
            e.printStackTrace();
        }
        return false;
    }
}
