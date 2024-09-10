package com.ruoyi.course.service.impl;

import com.ruoyi.base.domain.BaseClass;
import com.ruoyi.base.domain.BaseStudentClass;
import com.ruoyi.base.domain.BaseTeacher;
import com.ruoyi.base.mapper.BaseStudentClassMapper;
import com.ruoyi.base.mapper.BaseTeacherMapper;
import com.ruoyi.common.core.text.Convert;
import com.ruoyi.common.utils.LogUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.course.domain.CourseInfo;
import com.ruoyi.course.domain.TeachingInfo;
import com.ruoyi.course.domain.TeachingSettingModel;
import com.ruoyi.course.mapper.CourseInfoMapper;
import com.ruoyi.course.mapper.TeachingSettingMapper;
import com.ruoyi.course.service.ICourseInfoService;
import com.ruoyi.course.service.ITeachingSettingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.*;
import java.util.stream.Collectors;

/**
 * 课程信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
@Service
public class TeachingSettingServiceImpl implements ITeachingSettingService
{
    @Autowired
    private TeachingSettingMapper teachingSettingMapper;
    @Autowired
    private CourseInfoMapper courseInfoMapper;

    @Autowired
    private BaseTeacherMapper baseTeacherMapper;

    @Autowired
    private BaseStudentClassMapper baseStudentClassMapper;

    @Override
    public Map<String,List<TeachingSettingModel>> selectTeachingSettingInfo(TeachingSettingModel tsModel) {
        List<TeachingSettingModel> teachingSettingModels = teachingSettingMapper.selectTeachingSettingList(tsModel);
        if(teachingSettingModels!=null){
            Map<String,List<TeachingSettingModel>> map= new TreeMap<>(Comparator.reverseOrder());
            for(TeachingSettingModel model:teachingSettingModels){
                if(!map.containsKey(model.getGradeCode())){
                    map.put(model.getGradeCode(),new ArrayList<>() );
                }
                List<TeachingSettingModel>  teachingSettingModelsTemp=map.get(model.getGradeCode());
                if(!teachingSettingModelsTemp.contains(model)){
                    teachingSettingModelsTemp.add(model);
                }
            }
            return map;
        }
        return null;
    }

    @Override
    public int clearTeaching(String gradeCode, String teacherCode,String courseCode) {
        if(StringUtils.isNotEmpty(gradeCode) && StringUtils.isNotEmpty(teacherCode)){
            CourseInfo model = new CourseInfo();
            model.setSeason("202401");
            model.setGradeCode(StringUtils.stripToEmpty(gradeCode));
            model.setCourseCode(StringUtils.stripToEmpty(courseCode));
            List<Long> deleteIds = courseInfoMapper.selectCourseInfoList(model).stream()
                    .map(CourseInfo::getId)
                    .collect(Collectors.toList());
            return teachingSettingMapper.clearTeaching(deleteIds);
        }
        return 0;
    }


    @Override
    public int setTeaching(String gradeCode,String teacherCode,String courseCode) {
        if(StringUtils.isNotEmpty(gradeCode)&&StringUtils.isNotEmpty(courseCode)){
            CourseInfo ci=new CourseInfo();
            ci.setCourseCode(courseCode);
            ci.setSeason("202401");
            ci.setGradeCode(gradeCode);

            List<CourseInfo> courseInfos = courseInfoMapper.selectCourseInfoList(ci);
            Long courseId =  null;
            if(courseInfos!=null&&courseInfos.size()==1){
                courseId = courseInfos.get(0).getId();
            }else{
                int result=  courseInfoMapper.insertCourseInfo(ci);
                if(result==0){
                    courseId=ci.getId();
                }
            }


            BaseStudentClass bsi=new BaseStudentClass();
            bsi.setGradeCode(gradeCode);
            List<BaseStudentClass> classInfoList= baseStudentClassMapper.selectBaseStudentClassList(bsi);

            if(courseId!=null&&classInfoList!=null&&classInfoList.size()>0){
                //清除原有的数据，teacherCode应该是老的teacherCode TODO
                clearTeaching(gradeCode,teacherCode,courseCode);
                for(BaseStudentClass item:classInfoList){
                    TeachingSettingModel model = new TeachingSettingModel();
                    model.setSeason("202401");
                    model.setCourseId(courseId);
                    model.setClassCode(item.getClassCode());
                    model.setTeacherCode(StringUtils.stripToEmpty(teacherCode));
                    model.setGradeCode(StringUtils.stripToEmpty(gradeCode));
                    model.setCourseCode(StringUtils.stripToEmpty(courseCode));
                    teachingSettingMapper.setTeaching(model);
                }
                return 0;
            }
        }
        return 1;
    }

    @Override
    public List<BaseTeacher> selectTeacher(BaseTeacher baseTeacher,String filterTeacherCode) {

        Map<String,Object> map=new HashMap<>();
        map.put("filterTeacherCode",filterTeacherCode);
        map.put("baseTeacher",baseTeacher);
        return baseTeacherMapper.selectFilterBaseTeacherByCode(map);
    }
}
