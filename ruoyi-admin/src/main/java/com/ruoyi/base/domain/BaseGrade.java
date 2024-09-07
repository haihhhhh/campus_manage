package com.ruoyi.base.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 年级对象 base_grade
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public class BaseGrade extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** 年级名称 */
    @Excel(name = "年级名称")
    private String gradeCode;

    /** 年级代码 */
    @Excel(name = "年级代码")
    private String gradeName;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setGradeCode(String gradeCode) 
    {
        this.gradeCode = gradeCode;
    }

    public String getGradeCode() 
    {
        return gradeCode;
    }

    public void setGradeName(String gradeName) 
    {
        this.gradeName = gradeName;
    }

    public String getGradeName() 
    {
        return gradeName;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("gradeCode", getGradeCode())
            .append("gradeName", getGradeName())
            .toString();
    }
}
