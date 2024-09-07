package com.ruoyi.base.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.base.mapper.BaseGradeMapper;
import com.ruoyi.base.domain.BaseGrade;
import com.ruoyi.base.service.IBaseGradeService;
import com.ruoyi.common.core.text.Convert;

/**
 * 年级Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
@Service
public class BaseGradeServiceImpl implements IBaseGradeService 
{
    @Autowired
    private BaseGradeMapper baseGradeMapper;

    /**
     * 查询年级
     * 
     * @param id 年级主键
     * @return 年级
     */
    @Override
    public BaseGrade selectBaseGradeById(Long id)
    {
        return baseGradeMapper.selectBaseGradeById(id);
    }

    /**
     * 查询年级列表
     * 
     * @param baseGrade 年级
     * @return 年级
     */
    @Override
    public List<BaseGrade> selectBaseGradeList(BaseGrade baseGrade)
    {
        return baseGradeMapper.selectBaseGradeList(baseGrade);
    }

    /**
     * 新增年级
     * 
     * @param baseGrade 年级
     * @return 结果
     */
    @Override
    public int insertBaseGrade(BaseGrade baseGrade)
    {
        return baseGradeMapper.insertBaseGrade(baseGrade);
    }

    /**
     * 修改年级
     * 
     * @param baseGrade 年级
     * @return 结果
     */
    @Override
    public int updateBaseGrade(BaseGrade baseGrade)
    {
        return baseGradeMapper.updateBaseGrade(baseGrade);
    }

    /**
     * 批量删除年级
     * 
     * @param ids 需要删除的年级主键
     * @return 结果
     */
    @Override
    public int deleteBaseGradeByIds(String ids)
    {
        return baseGradeMapper.deleteBaseGradeByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除年级信息
     * 
     * @param id 年级主键
     * @return 结果
     */
    @Override
    public int deleteBaseGradeById(Long id)
    {
        return baseGradeMapper.deleteBaseGradeById(id);
    }
}
