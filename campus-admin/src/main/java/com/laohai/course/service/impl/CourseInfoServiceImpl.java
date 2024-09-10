package com.laohai.course.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.laohai.course.mapper.CourseInfoMapper;
import com.laohai.course.domain.CourseInfo;
import com.laohai.course.service.ICourseInfoService;
import com.laohai.common.core.text.Convert;

/**
 * 课程信息Service业务层处理
 * 
 * @author laohai
 * @date 2024-09-05
 */
@Service
public class CourseInfoServiceImpl implements ICourseInfoService 
{
    @Autowired
    private CourseInfoMapper courseInfoMapper;

    /**
     * 查询课程信息
     * 
     * @param id 课程信息主键
     * @return 课程信息
     */
    @Override
    public CourseInfo selectCourseInfoById(Long id)
    {
        return courseInfoMapper.selectCourseInfoById(id);
    }

    /**
     * 查询课程信息列表
     * 
     * @param courseInfo 课程信息
     * @return 课程信息
     */
    @Override
    public List<CourseInfo> selectCourseInfoList(CourseInfo courseInfo)
    {
        return courseInfoMapper.selectCourseInfoList(courseInfo);
    }

    /**
     * 新增课程信息
     * 
     * @param courseInfo 课程信息
     * @return 结果
     */
    @Override
    public int insertCourseInfo(CourseInfo courseInfo)
    {
        return courseInfoMapper.insertCourseInfo(courseInfo);
    }

    /**
     * 修改课程信息
     * 
     * @param courseInfo 课程信息
     * @return 结果
     */
    @Override
    public int updateCourseInfo(CourseInfo courseInfo)
    {
        return courseInfoMapper.updateCourseInfo(courseInfo);
    }

    /**
     * 批量删除课程信息
     * 
     * @param ids 需要删除的课程信息主键
     * @return 结果
     */
    @Override
    public int deleteCourseInfoByIds(String ids)
    {
        return courseInfoMapper.deleteCourseInfoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除课程信息信息
     * 
     * @param id 课程信息主键
     * @return 结果
     */
    @Override
    public int deleteCourseInfoById(Long id)
    {
        return courseInfoMapper.deleteCourseInfoById(id);
    }
}
