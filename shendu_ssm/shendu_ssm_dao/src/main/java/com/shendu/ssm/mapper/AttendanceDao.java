package com.shendu.ssm.mapper;


import com.shendu.ssm.domain.Attendance;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AttendanceDao {
    int insertInfoBatch(List<Attendance> attendanceList);
    List<Attendance> listAttendance();
}
