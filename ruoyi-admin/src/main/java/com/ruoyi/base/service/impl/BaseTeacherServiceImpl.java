package com.ruoyi.base.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.base.mapper.BaseTeacherMapper;
import com.ruoyi.base.domain.BaseTeacher;
import com.ruoyi.base.service.IBaseTeacherService;
import com.ruoyi.common.core.text.Convert;

/**
 * 教师Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
@Service
public class BaseTeacherServiceImpl implements IBaseTeacherService 
{
    @Autowired
    private BaseTeacherMapper baseTeacherMapper;

    /**
     * 查询教师
     * 
     * @param id 教师主键
     * @return 教师
     */
    @Override
    public BaseTeacher selectBaseTeacherById(Long id)
    {
        return baseTeacherMapper.selectBaseTeacherById(id);
    }

    /**
     * 查询教师列表
     * 
     * @param baseTeacher 教师
     * @return 教师
     */
    @Override
    public List<BaseTeacher> selectBaseTeacherList(BaseTeacher baseTeacher)
    {
        return baseTeacherMapper.selectBaseTeacherList(baseTeacher);
    }

    /**
     * 新增教师
     * 
     * @param baseTeacher 教师
     * @return 结果
     */
    @Override
    public int insertBaseTeacher(BaseTeacher baseTeacher)
    {
        return baseTeacherMapper.insertBaseTeacher(baseTeacher);
    }

    /**
     * 修改教师
     * 
     * @param baseTeacher 教师
     * @return 结果
     */
    @Override
    public int updateBaseTeacher(BaseTeacher baseTeacher)
    {
        return baseTeacherMapper.updateBaseTeacher(baseTeacher);
    }

    /**
     * 批量删除教师
     * 
     * @param ids 需要删除的教师主键
     * @return 结果
     */
    @Override
    public int deleteBaseTeacherByIds(String ids)
    {
        return baseTeacherMapper.deleteBaseTeacherByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除教师信息
     * 
     * @param id 教师主键
     * @return 结果
     */
    @Override
    public int deleteBaseTeacherById(Long id)
    {
        return baseTeacherMapper.deleteBaseTeacherById(id);
    }
}
