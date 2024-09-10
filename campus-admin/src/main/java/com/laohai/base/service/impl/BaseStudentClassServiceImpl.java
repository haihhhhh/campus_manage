package com.laohai.base.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.laohai.base.mapper.BaseStudentClassMapper;
import com.laohai.base.domain.BaseStudentClass;
import com.laohai.base.service.IBaseStudentClassService;
import com.laohai.common.core.text.Convert;

/**
 * 班级Service业务层处理
 * 
 * @author laohai
 * @date 2024-09-05
 */
@Service
public class BaseStudentClassServiceImpl implements IBaseStudentClassService 
{
    @Autowired
    private BaseStudentClassMapper baseStudentClassMapper;

    /**
     * 查询班级
     * 
     * @param id 班级主键
     * @return 班级
     */
    @Override
    public BaseStudentClass selectBaseStudentClassById(Long id)
    {
        return baseStudentClassMapper.selectBaseStudentClassById(id);
    }

    /**
     * 查询班级列表
     * 
     * @param baseStudentClass 班级
     * @return 班级
     */
    @Override
    public List<BaseStudentClass> selectBaseStudentClassList(BaseStudentClass baseStudentClass)
    {
        return baseStudentClassMapper.selectBaseStudentClassList(baseStudentClass);
    }

    /**
     * 新增班级
     * 
     * @param baseStudentClass 班级
     * @return 结果
     */
    @Override
    public int insertBaseStudentClass(BaseStudentClass baseStudentClass)
    {
        return baseStudentClassMapper.insertBaseStudentClass(baseStudentClass);
    }

    /**
     * 修改班级
     * 
     * @param baseStudentClass 班级
     * @return 结果
     */
    @Override
    public int updateBaseStudentClass(BaseStudentClass baseStudentClass)
    {
        return baseStudentClassMapper.updateBaseStudentClass(baseStudentClass);
    }

    /**
     * 批量删除班级
     * 
     * @param ids 需要删除的班级主键
     * @return 结果
     */
    @Override
    public int deleteBaseStudentClassByIds(String ids)
    {
        return baseStudentClassMapper.deleteBaseStudentClassByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除班级信息
     * 
     * @param id 班级主键
     * @return 结果
     */
    @Override
    public int deleteBaseStudentClassById(Long id)
    {
        return baseStudentClassMapper.deleteBaseStudentClassById(id);
    }
}
