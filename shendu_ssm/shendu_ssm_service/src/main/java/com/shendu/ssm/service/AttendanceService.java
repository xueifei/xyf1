package com.shendu.ssm.service;

import org.springframework.web.multipart.MultipartFile;

public interface AttendanceService {

    /**
     * 读取excel中的数据,生成list
     */
    String readExcelFile( MultipartFile file);
}
