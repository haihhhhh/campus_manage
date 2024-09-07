package com.ruoyi.course.service;

import com.ruoyi.course.domain.CourseInfo;
import com.ruoyi.course.domain.TeachingInfo;

import java.util.List;

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
    public List<TeachingInfo> selectTeachingSettingInfo();

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
