package com.ruoyi.course.domain;

import com.ruoyi.web.controller.demo.domain.GoodsModel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.List;

/**
 * 客户测试信息
 * 
 * @author laohai
 */
public class TeachingSettingModel
{
    /**
     * 年级名称
     */
    private String gradeName;

    /**
     * 年级代码
     */
    private String gradeCode;

    /**
     * 课程代码
     */
    private String courseCode;

    /**
     * 课程名称
     */
    private String courseName;

    /**
     * 教师代码
     */
    private String teacherCode;

    /**
     * 教师名称
     */
    private String teacherName;

    private String season;
    public String getGradeName() {
        return gradeName;
    }

    public String getGradeCode() {
        return gradeCode;
    }

    public String getCourseCode() {
        return courseCode;
    }

    public String getCourseName() {
        return courseName;
    }

    public String getTeacherCode() {
        return teacherCode;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public String getSeason() {
        return season;
    }

    //    @Override
//    public String toString() {
//        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
//            .append("name", getName())
//            .append("phonenumber", getPhonenumber())
//            .append("sex", getSex())
//            .append("birthday", getBirthday())
//            .append("goods", getGoods())
//            .append("remark", getRemark())
//            .toString();
//    }
}
