package com.ruoyi.course.service;

import java.util.List;
import com.ruoyi.course.domain.CourseBase;

/**
 * 课程基础信息管理Service接口
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public interface ICourseBaseService 
{
    /**
     * 查询课程基础信息管理
     * 
     * @param id 课程基础信息管理主键
     * @return 课程基础信息管理
     */
    public CourseBase selectCourseBaseById(Long id);

    /**
     * 查询课程基础信息管理列表
     * 
     * @param courseBase 课程基础信息管理
     * @return 课程基础信息管理集合
     */
    public List<CourseBase> selectCourseBaseList(CourseBase courseBase);

    /**
     * 新增课程基础信息管理
     * 
     * @param courseBase 课程基础信息管理
     * @return 结果
     */
    public int insertCourseBase(CourseBase courseBase);

    /**
     * 修改课程基础信息管理
     * 
     * @param courseBase 课程基础信息管理
     * @return 结果
     */
    public int updateCourseBase(CourseBase courseBase);

    /**
     * 批量删除课程基础信息管理
     * 
     * @param ids 需要删除的课程基础信息管理主键集合
     * @return 结果
     */
    public int deleteCourseBaseByIds(String ids);

    /**
     * 删除课程基础信息管理信息
     * 
     * @param id 课程基础信息管理主键
     * @return 结果
     */
    public int deleteCourseBaseById(Long id);
}
