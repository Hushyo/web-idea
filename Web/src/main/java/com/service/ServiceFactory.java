package com.service;

import com.service.Imps.AnnounceService;
import com.service.Imps.LabService;
import com.service.Imps.TeacherService;
import com.service.Imps.UserService;
import com.service.impl.AnnounceServiceImpl;
import com.service.impl.LabServiceImpl;
import com.service.impl.TeacherServiceImpl;
import com.service.impl.UserServiceImpl;

public class ServiceFactory {
 private static final UserService userService = create();

 private static final LabService labService = labCreate();

 private static final TeacherService teacherService= teacherCreate();

 private static final AnnounceService announceService = announceCreate();


    private static LabService labCreate(){return new LabServiceImpl();}

    private static UserService create(){return new UserServiceImpl();}

    private static TeacherService teacherCreate(){return new TeacherServiceImpl();}

    private static AnnounceService announceCreate(){return new AnnounceServiceImpl();}

    public static UserService getUserService(){
      return userService;
  }

    public static LabService getLabService(){
     return labService;
  }

    public static TeacherService getTeacherService(){return teacherService;}

    public static AnnounceService getAnnounceService(){return announceService;}

}
