package com.shendu.ssm.service.impl;

import com.shendu.ssm.domain.Attendance;

import com.shendu.ssm.domain.StudentDetail;
import com.shendu.ssm.mapper.AttendanceDao;
import com.shendu.ssm.mapper.StudentDetailDao;
import com.shendu.ssm.service.AttendanceService;
import com.shendu.ssm.utils.ReadExcel;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.io.CopyUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

@Service
@Transactional
public class AttendanceServiceImpl implements AttendanceService {

    @Autowired
    private StudentDetailDao studentDetailDao;

    @Autowired
    private AttendanceDao attendanceDao;
    @Override
    public List<Attendance> readExcelFile(MultipartFile file) {
        String result ="";  
        //创建处理EXCEL的类  
        ReadExcel readExcel=new ReadExcel();
        //解析excel，获取上传的事件单  
        List<Attendance> attendanceList = readExcel.getExcelInfo(file);
        //至此已经将excel中的数据转换到list里面了,接下来就可以操作list,可以进行保存到数据库,或者其他操作,  
        //和你具体业务有关,这里不做具体的示范  

        return attendanceList;
    }

    //根据学生id查询学生考勤详细信息
    public List<Attendance> findDetailsBySId(List<Attendance> attendanceList) throws Exception {
        List<Attendance> attendances = new ArrayList<>();
        for (Attendance attendance : attendanceList) {
            Integer sId = attendance.getSId();
            StudentDetail studentDetail = studentDetailDao.findById(sId);
            Attendance attendance1 = new Attendance();
            BeanUtils.copyProperties(attendance1,attendance);
            attendance1.setStudent(studentDetail);
            attendances.add(attendance1);
        }
        return attendances;
    }

    @Override
    public int insertInfoBatch(List<Attendance> attendanceList) {
        int i = 0;
        if(attendanceList != null && !attendanceList.isEmpty()){
            i = attendanceDao.insertInfoBatch(attendanceList);

        }
        return i;
    }

} 
