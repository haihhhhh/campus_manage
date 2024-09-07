package com.ruoyi.base.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 教师对象 base_teacher
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public class BaseTeacher extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** 教师姓名 */
    @Excel(name = "教师姓名")
    private String teacherName;

    /** 教师编号 */
    @Excel(name = "教师编号")
    private String teacherCode;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setTeacherName(String teacherName) 
    {
        this.teacherName = teacherName;
    }

    public String getTeacherName() 
    {
        return teacherName;
    }

    public void setTeacherCode(String teacherCode) 
    {
        this.teacherCode = teacherCode;
    }

    public String getTeacherCode() 
    {
        return teacherCode;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("teacherName", getTeacherName())
            .append("teacherCode", getTeacherCode())
            .toString();
    }
}
