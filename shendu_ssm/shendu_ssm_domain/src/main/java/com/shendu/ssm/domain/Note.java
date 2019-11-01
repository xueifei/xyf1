package com.shendu.ssm.domain;

import lombok.Data;
import lombok.ToString;

@Data
@ToString
public class Note {
    private Long id;
    private String phone;
    private String name;
    private Integer status;
    private String staterStr;
    private Integer templateid;

    public String getStaterStr() {
        if (status !=null){
            if (status == 0){
                staterStr = "发送成功";
            }else if (status == 1){
                staterStr = "发送失败";
//            }else if (stater == 2){
//                staterStr = "旷课";
//            }else if (stater == 3){
//                staterStr = "请假";
            }
        }

        return staterStr;
    }
}
