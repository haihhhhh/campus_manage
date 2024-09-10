package com.laohai.base.service;

import java.util.List;
import com.laohai.base.domain.BaseStudentClass;

/**
 * 班级Service接口
 * 
 * @author laohai
 * @date 2024-09-05
 */
public interface IBaseStudentClassService 
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
     * 批量删除班级
     * 
     * @param ids 需要删除的班级主键集合
     * @return 结果
     */
    public int deleteBaseStudentClassByIds(String ids);

    /**
     * 删除班级信息
     * 
     * @param id 班级主键
     * @return 结果
     */
    public int deleteBaseStudentClassById(Long id);
}
