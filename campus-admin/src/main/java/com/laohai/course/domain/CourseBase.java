package com.laohai.course.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.laohai.common.annotation.Excel;
import com.laohai.common.core.domain.BaseEntity;

/**
 * 课程基础信息管理对象 course_base
 * 
 * @author laohai
 * @date 2024-09-05
 */
public class CourseBase extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键id */
    private Long id;

    /** 课程基础代码 */
    @Excel(name = "课程基础代码")
    private String courseCode;

    /** 课程基础名称 */
    @Excel(name = "课程基础名称")
    private String courseName;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setCourseCode(String courseCode) 
    {
        this.courseCode = courseCode;
    }

    public String getCourseCode() 
    {
        return courseCode;
    }

    public void setCourseName(String courseName) 
    {
        this.courseName = courseName;
    }

    public String getCourseName() 
    {
        return courseName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("courseCode", getCourseCode())
            .append("courseName", getCourseName())
            .toString();
    }
}
