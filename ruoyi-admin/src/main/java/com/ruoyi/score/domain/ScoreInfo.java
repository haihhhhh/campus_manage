package com.ruoyi.score.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 成绩对象 score_info
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public class ScoreInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** 考试id */
    @Excel(name = "考试id")
    private Long examId;

    /** 学生姓名 */
    @Excel(name = "学生姓名")
    private String studentCode;

    /**  */
    @Excel(name = "")
    private BigDecimal score;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setExamId(Long examId) 
    {
        this.examId = examId;
    }

    public Long getExamId() 
    {
        return examId;
    }
    public void setStudentCode(String studentCode) 
    {
        this.studentCode = studentCode;
    }

    public String getStudentCode() 
    {
        return studentCode;
    }
    public void setScore(BigDecimal score) 
    {
        this.score = score;
    }

    public BigDecimal getScore() 
    {
        return score;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("examId", getExamId())
            .append("studentCode", getStudentCode())
            .append("score", getScore())
            .toString();
    }
}
