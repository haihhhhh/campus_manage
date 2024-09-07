package com.ruoyi.base.mapper;

import java.util.List;
import com.ruoyi.base.domain.BaseStudentClass;

/**
 * 班级Mapper接口
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public interface BaseStudentClassMapper 
{
    /**
     * 查询班级
     * 
     * @param id 班级主键
     * @return 班级
     */
    public BaseStudentClass selectBaseStudentClassById(Long id);

    /**
     * 查询班级列表
     * 
     * @param baseStudentClass 班级
     * @return 班级集合
     */
    public List<BaseStudentClass> selectBaseStudentClassList(BaseStudentClass baseStudentClass);

    /**
     * 新增班级
     * 
     * @param baseStudentClass 班级
     * @return 结果
     */
    public int insertBaseStudentClass(BaseStudentClass baseStudentClass);

    /**
     * 修改班级
     * 
     * @param baseStudentClass 班级
     * @return 结果
     */
    public int updateBaseStudentClass(BaseStudentClass baseStudentClass);

    /**
     * 删除班级
     * 
     * @param id 班级主键
     * @return 结果
     */
    public int deleteBaseStudentClassById(Long id);

    /**
     * 批量删除班级
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteBaseStudentClassByIds(String[] ids);
}
