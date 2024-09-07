package com.ruoyi.course.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 课程信息对象 course_info
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public class CourseInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** 课程信息 */
    @Excel(name = "课程信息")
    private String courseCode;

    /** 开设年级编号 */
    @Excel(name = "开设年级编号")
    private String gradeCode;

    /** 学期 */
    @Excel(name = "学期")
    private String season;

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

    public void setGradeCode(String gradeCode) 
    {
        this.gradeCode = gradeCode;
    }

    public String getGradeCode() 
    {
        return gradeCode;
    }

    public void setSeason(String season)
    {
        this.season = season;
    }

    public String getSeason()
    {
        return season;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("courseCode", getCourseCode())
            .append("gradeCode", getGradeCode())
            .append("season", getSeason())
            .toString();
    }
}
