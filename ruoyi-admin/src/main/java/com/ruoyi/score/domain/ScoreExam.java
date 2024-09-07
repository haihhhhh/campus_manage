package com.ruoyi.score.domain;

import java.util.List;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 考试对象 score_exam
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public class ScoreExam extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /**  */
    private Long id;

    /** 课程编号 */
    @Excel(name = "课程编号")
    private String examCourseCode;

    /** 考试日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "考试日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date examDate;

    /** 考试班级 */
    @Excel(name = "考试班级")
    private String classCode;

    /** 成绩信息 */
    private List<ScoreInfo> scoreInfoList;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setExamCourseCode(String examCourseCode) 
    {
        this.examCourseCode = examCourseCode;
    }

    public String getExamCourseCode() 
    {
        return examCourseCode;
    }

    public void setExamDate(Date examDate) 
    {
        this.examDate = examDate;
    }

    public Date getExamDate() 
    {
        return examDate;
    }

    public void setClassCode(String classCode) 
    {
        this.classCode = classCode;
    }

    public String getClassCode() 
    {
        return classCode;
    }

    public List<ScoreInfo> getScoreInfoList()
    {
        return scoreInfoList;
    }

    public void setScoreInfoList(List<ScoreInfo> scoreInfoList)
    {
        this.scoreInfoList = scoreInfoList;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("examCourseCode", getExamCourseCode())
            .append("examDate", getExamDate())
            .append("classCode", getClassCode())
            .append("scoreInfoList", getScoreInfoList())
            .toString();
    }
}
