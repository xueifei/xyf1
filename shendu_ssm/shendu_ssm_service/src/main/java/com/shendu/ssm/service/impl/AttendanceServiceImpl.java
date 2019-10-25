package com.shendu.ssm.service.impl;

import com.shendu.ssm.domain.Attendance;

import com.shendu.ssm.mapper.AttendanceMapper;
import com.shendu.ssm.service.AttendanceService;
import com.shendu.ssm.utils.ReadExcel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Service
public class AttendanceServiceImpl implements AttendanceService {

    @Autowired
    private AttendanceMapper attendanceMapper;
    @Override
    public String readExcelFile(MultipartFile file) {
        String result ="";  
        //创建处理EXCEL的类  
        ReadExcel readExcel=new ReadExcel();
        //解析excel，获取上传的事件单  
        List<Attendance> attendanceList = readExcel.getExcelInfo(file);
        //至此已经将excel中的数据转换到list里面了,接下来就可以操作list,可以进行保存到数据库,或者其他操作,  
        //和你具体业务有关,这里不做具体的示范  
        if(attendanceList != null && !attendanceList.isEmpty()){
            int i = attendanceMapper.insertInfoBatch(attendanceList);
            result = "上传成功"+i+"条数据";
        }else{  
            result = "上传失败";  
        }  
        return result;  
    }  
   
} 