package com.laohai.course.domain;

import java.util.List;

/**
 * 授课设置信息
 * 
 * @author laohai
 */
public class TeachingInfo
{

    /**
     * 年级名称
     */
    private String gradeName;

    /**
     * 年级代码
     */
    private String gradeCode;


    private List<TeachingSettingModel> teachingSettingModelList;

    public String getGradeName() {
        return gradeName;
    }

    public String getGradeCode() {
        return gradeCode;
    }

    public List<TeachingSettingModel> getTeachingSettingModelList() {
        return teachingSettingModelList;
    }

    public void setTeachingSettingModelList(List<TeachingSettingModel> teachingSettingModelList) {
        this.teachingSettingModelList = teachingSettingModelList;
    }
}
