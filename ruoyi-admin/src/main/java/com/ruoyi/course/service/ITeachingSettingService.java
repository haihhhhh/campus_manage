package com.ruoyi.course.service;

import com.ruoyi.base.domain.BaseTeacher;
import com.ruoyi.course.domain.CourseBase;
import com.ruoyi.course.domain.CourseInfo;
import com.ruoyi.course.domain.TeachingInfo;
import com.ruoyi.course.domain.TeachingSettingModel;

import java.util.List;
import java.util.Map;

/**
 * 课程色湖之信息Service接口
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public interface ITeachingSettingService
{
    /**
     * 查询课程教授信息
     * 
     * @return 课程信息
     */
    public Map<String,List<TeachingSettingModel>> selectTeachingSettingInfo(TeachingSettingModel model);

    /**
     * 设置课程教授信息
     * @param gradeCode
     * @param teacherCode
     * @return
     */
    public int clearTeaching(String gradeCode,String teacherCode,String courseCode);

    public int setTeaching(String gradeCode, String teacherCode,String courseCode) ;


    /**
     * 查询教师
     *
     * @return 课程基础信息管理集合
     */
    public List<BaseTeacher> selectTeacher(BaseTeacher baseTeacher,String filterTeacherCode);

//    /**
//     * 查询课程信息列表
//     *
//     * @param courseInfo 课程信息
//     * @return 课程信息集合
//     */
//    public List<CourseInfo> selectCourseInfoList(CourseInfo courseInfo);
//
//    /**
//     * 新增课程信息
//     *
//     * @param courseInfo 课程信息
//     * @return 结果
//     */
//    public int insertCourseInfo(CourseInfo courseInfo);
//
//    /**
//     * 修改课程信息
//     *
//     * @param courseInfo 课程信息
//     * @return 结果
//     */
//    public int updateCourseInfo(CourseInfo courseInfo);
//
//    /**
//     * 批量删除课程信息
//     *
//     * @param ids 需要删除的课程信息主键集合
//     * @return 结果
//     */
//    public int deleteCourseInfoByIds(String ids);
//
//    /**
//     * 删除课程信息信息
//     *
//     * @param id 课程信息主键
//     * @return 结果
//     */
//    public int deleteCourseInfoById(Long id);
}
