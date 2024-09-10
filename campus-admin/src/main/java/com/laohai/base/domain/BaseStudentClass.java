package com.laohai.base.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.laohai.common.annotation.Excel;
import com.laohai.common.core.domain.BaseEntity;

/**
 * 班级对象 base_student_class
 * 
 * @author laohai
 * @date 2024-09-05
 */
public class BaseStudentClass extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** 班级编号 */
    @Excel(name = "班级编号")
    private String classCode;

    /** 班级名称 */
    @Excel(name = "班级名称")
    private String className;

    /** 年级编号 */
    @Excel(name = "年级编号")
    private String gradeCode;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setClassCode(String classCode) 
    {
        this.classCode = classCode;
    }

    public String getClassCode() 
    {
        return classCode;
    }

    public void setClassName(String className) 
    {
        this.className = className;
    }

    public String getClassName() 
    {
        return className;
    }

    public void setGradeCode(String gradeCode) 
    {
        this.gradeCode = gradeCode;
    }

    public String getGradeCode() 
    {
        return gradeCode;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("classCode", getClassCode())
            .append("className", getClassName())
            .append("gradeCode", getGradeCode())
            .toString();
    }
}
