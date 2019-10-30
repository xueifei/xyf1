package com.shendu.ssm.domain;

import lombok.Data;
import lombok.ToString;

import java.util.Date;

@Data
@ToString
public class Attendance {


    private Long id;
    private String name;
    private Date attendanceDate; //考勤时间
    private Integer status; //考勤状态 0 正常 1 迟到 2 旷课
    private String statusStr;
    private Date createDate;
    private Integer sId;//学生编号，唯一标识，对应学生详情表id
    private Student student;
    public String getStatusStr() {
        if (status !=null){
            if (status == 0){
                statusStr = "正常";
            }else if (status == 1){
                statusStr = "迟到";
            }else if (status == 3){
                statusStr = "旷课";
            }else if (status == 4){
                statusStr = "请假";
            }
        }

        return statusStr;
    }
}
