package com.laohai.base.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.laohai.common.annotation.Excel;
import com.laohai.common.core.domain.BaseEntity;

/**
 * 学生对象 base_student
 * 
 * @author laohai
 * @date 2024-09-05
 */
public class BaseStudent extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** 姓名 */
    @Excel(name = "姓名")
    private String studentName;

    /** 学号 */
    @Excel(name = "学号")
    private String studentCode;

    /** 性别 */
    @Excel(name = "性别")
    private Integer sex;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setStudentName(String studentName) 
    {
        this.studentName = studentName;
    }

    public String getStudentName() 
    {
        return studentName;
    }

    public void setStudentCode(String studentCode) 
    {
        this.studentCode = studentCode;
    }

    public String getStudentCode() 
    {
        return studentCode;
    }

    public void setSex(Integer sex) 
    {
        this.sex = sex;
    }

    public Integer getSex() 
    {
        return sex;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("studentName", getStudentName())
            .append("studentCode", getStudentCode())
            .append("sex", getSex())
            .toString();
    }
}
