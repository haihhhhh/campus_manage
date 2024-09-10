package com.laohai.base.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.laohai.base.mapper.BaseStudentMapper;
import com.laohai.base.domain.BaseStudent;
import com.laohai.base.service.IBaseStudentService;
import com.laohai.common.core.text.Convert;

/**
 * 学生Service业务层处理
 * 
 * @author laohai
 * @date 2024-09-05
 */
@Service
public class BaseStudentServiceImpl implements IBaseStudentService 
{
    @Autowired
    private BaseStudentMapper baseStudentMapper;

    /**
     * 查询学生
     * 
     * @param id 学生主键
     * @return 学生
     */
    @Override
    public BaseStudent selectBaseStudentById(Long id)
    {
        return baseStudentMapper.selectBaseStudentById(id);
    }

    /**
     * 查询学生列表
     * 
     * @param baseStudent 学生
     * @return 学生
     */
    @Override
    public List<BaseStudent> selectBaseStudentList(BaseStudent baseStudent)
    {
        return baseStudentMapper.selectBaseStudentList(baseStudent);
    }

    /**
     * 新增学生
     * 
     * @param baseStudent 学生
     * @return 结果
     */
    @Override
    public int insertBaseStudent(BaseStudent baseStudent)
    {
        return baseStudentMapper.insertBaseStudent(baseStudent);
    }

    /**
     * 修改学生
     * 
     * @param baseStudent 学生
     * @return 结果
     */
    @Override
    public int updateBaseStudent(BaseStudent baseStudent)
    {
        return baseStudentMapper.updateBaseStudent(baseStudent);
    }

    /**
     * 批量删除学生
     * 
     * @param ids 需要删除的学生主键
     * @return 结果
     */
    @Override
    public int deleteBaseStudentByIds(String ids)
    {
        return baseStudentMapper.deleteBaseStudentByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学生信息
     * 
     * @param id 学生主键
     * @return 结果
     */
    @Override
    public int deleteBaseStudentById(Long id)
    {
        return baseStudentMapper.deleteBaseStudentById(id);
    }
}
