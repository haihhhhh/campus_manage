package com.ruoyi.course.domain;

import com.ruoyi.web.controller.demo.domain.GoodsModel;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.List;

/**
 * 授课设置信息
 * 
 * @author ruoyi
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
