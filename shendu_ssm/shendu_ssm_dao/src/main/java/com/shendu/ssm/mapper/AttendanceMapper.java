package com.shendu.ssm.mapper;


import com.shendu.ssm.domain.Attendance;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AttendanceMapper {
    int insertInfoBatch(List<Attendance> attendanceList);
}
