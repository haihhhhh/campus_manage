package com.ruoyi.course.service.impl;

import com.ruoyi.common.core.text.Convert;
import com.ruoyi.course.domain.CourseInfo;
import com.ruoyi.course.domain.TeachingInfo;
import com.ruoyi.course.domain.TeachingSettingModel;
import com.ruoyi.course.mapper.CourseInfoMapper;
import com.ruoyi.course.mapper.TeachingSettingMapper;
import com.ruoyi.course.service.ICourseInfoService;
import com.ruoyi.course.service.ITeachingSettingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

/**
 * 课程信息Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
@Service
public class TeachingSettingServiceImpl implements ITeachingSettingService
{
    @Autowired
    private TeachingSettingMapper teachingSettingMapper;

    @Override
    public List<TeachingInfo> selectTeachingSettingInfo() {
        List<TeachingSettingModel> teachingSettingModels = teachingSettingMapper.selectTeachingSettingist();
        if(teachingSettingModels!=null){
            teachingSettingModels.stream().peek(System.out::println).collect(Collectors.toList());
            return new ArrayList<TeachingInfo>();
        }
        return null;
    }
}
