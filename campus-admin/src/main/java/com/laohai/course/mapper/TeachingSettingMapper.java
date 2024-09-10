package com.laohai.course.mapper;

import com.laohai.course.domain.TeachingSettingModel;

import java.util.List;

/**
 * 课程教授Mapper接口
 * 
 * @author laohai
 * @date 2024-09-05
 */
public interface TeachingSettingMapper
{
    /**
     * 查询课程信息
     * 
     * @return 课程设置信息
     */
    public List<TeachingSettingModel> selectTeachingSettingList(TeachingSettingModel model);

    /**
     * 设置教授信息
     * @param model
     * @return
     */
    public int setTeaching(TeachingSettingModel model);

    /**
     * 清除教授信息
     * @param ids
     * @return
     */
    public int clearTeaching(List<Long> ids);

}
