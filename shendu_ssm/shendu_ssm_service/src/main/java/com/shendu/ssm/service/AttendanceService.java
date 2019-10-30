package com.shendu.ssm.service;

import com.shendu.ssm.domain.Attendance;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface AttendanceService {

    /**
     * 读取excel中的数据,生成list
     */
    List<Attendance> readExcelFile( MultipartFile file);

    //增加考勤表学生详细信息
    List<Attendance> findDetailsBySId(List<Attendance> attendanceList) throws Exception;

    //将list集合数据保存到数据库
    int insertInfoBatch(List<Attendance> attendanceList);

}
