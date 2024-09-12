package com.service.Imps;

import com.entity.Teacher;

import java.util.List;

public interface TeacherService {
    public List<Teacher> listTeachers(String type);

    public Teacher getTeacherById(String type,int id);
}
