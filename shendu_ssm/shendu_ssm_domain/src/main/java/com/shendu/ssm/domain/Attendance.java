package com.shendu.ssm.domain;

import lombok.Data;
import lombok.ToString;

import java.util.Date;

@Data
@ToString
public class Attendance {


    private Integer id;
    private String name;
    private Date attendanceDate; //考勤时间
    private Integer status; //考勤状态 0 正常 1 迟到 2 旷课
    private String statusStr;

    public String getStatusStr() {
        if (status !=null){
            if (status == 0){
                statusStr = "正常";
            }else if (status == 1){
                statusStr = "迟到";
            }else if (status == 3){
                statusStr = "旷课";
            }
        }

        return statusStr;
    }
}
