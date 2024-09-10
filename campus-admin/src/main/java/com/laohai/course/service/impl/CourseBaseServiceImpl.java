package com.laohai.course.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.laohai.course.mapper.CourseBaseMapper;
import com.laohai.course.domain.CourseBase;
import com.laohai.course.service.ICourseBaseService;
import com.laohai.common.core.text.Convert;

/**
 * 课程基础信息管理Service业务层处理
 * 
 * @author laohai
 * @date 2024-09-05
 */
@Service
public class CourseBaseServiceImpl implements ICourseBaseService 
{
    @Autowired
    private CourseBaseMapper courseBaseMapper;

    /**
     * 查询课程基础信息管理
     * 
     * @param id 课程基础信息管理主键
     * @return 课程基础信息管理
     */
    @Override
    public CourseBase selectCourseBaseById(Long id)
    {
        return courseBaseMapper.selectCourseBaseById(id);
    }

    /**
     * 查询课程基础信息管理列表
     * 
     * @param courseBase 课程基础信息管理
     * @return 课程基础信息管理
     */
    @Override
    public List<CourseBase> selectCourseBaseList(CourseBase courseBase)
    {
        return courseBaseMapper.selectCourseBaseList(courseBase);
    }

    /**
     * 新增课程基础信息管理
     * 
     * @param courseBase 课程基础信息管理
     * @return 结果
     */
    @Override
    public int insertCourseBase(CourseBase courseBase)
    {
        return courseBaseMapper.insertCourseBase(courseBase);
    }

    /**
     * 修改课程基础信息管理
     * 
     * @param courseBase 课程基础信息管理
     * @return 结果
     */
    @Override
    public int updateCourseBase(CourseBase courseBase)
    {
        return courseBaseMapper.updateCourseBase(courseBase);
    }

    /**
     * 批量删除课程基础信息管理
     * 
     * @param ids 需要删除的课程基础信息管理主键
     * @return 结果
     */
    @Override
    public int deleteCourseBaseByIds(String ids)
    {
        return courseBaseMapper.deleteCourseBaseByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除课程基础信息管理信息
     * 
     * @param id 课程基础信息管理主键
     * @return 结果
     */
    @Override
    public int deleteCourseBaseById(Long id)
    {
        return courseBaseMapper.deleteCourseBaseById(id);
    }
}
