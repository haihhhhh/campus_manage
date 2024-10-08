package com.laohai.base.service;

import java.util.List;
import com.laohai.base.domain.BaseGrade;

/**
 * 年级Service接口
 * 
 * @author laohai
 * @date 2024-09-05
 */
public interface IBaseGradeService 
{
    /**
     * 查询年级
     * 
     * @param id 年级主键
     * @return 年级
     */
    public BaseGrade selectBaseGradeById(Long id);

    /**
     * 查询年级列表
     * 
     * @param baseGrade 年级
     * @return 年级集合
     */
    public List<BaseGrade> selectBaseGradeList(BaseGrade baseGrade);

    /**
     * 新增年级
     * 
     * @param baseGrade 年级
     * @return 结果
     */
    public int insertBaseGrade(BaseGrade baseGrade);

    /**
     * 修改年级
     * 
     * @param baseGrade 年级
     * @return 结果
     */
    public int updateBaseGrade(BaseGrade baseGrade);

    /**
     * 批量删除年级
     * 
     * @param ids 需要删除的年级主键集合
     * @return 结果
     */
    public int deleteBaseGradeByIds(String ids);

    /**
     * 删除年级信息
     * 
     * @param id 年级主键
     * @return 结果
     */
    public int deleteBaseGradeById(Long id);
}
