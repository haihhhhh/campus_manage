package com.laohai.base.service;

import java.util.List;
import com.laohai.base.domain.BaseStudent;

/**
 * 学生Service接口
 * 
 * @author laohai
 * @date 2024-09-05
 */
public interface IBaseStudentService 
{
    /**
     * 查询学生
     * 
     * @param id 学生主键
     * @return 学生
     */
    public BaseStudent selectBaseStudentById(Long id);

    /**
     * 查询学生列表
     * 
     * @param baseStudent 学生
     * @return 学生集合
     */
    public List<BaseStudent> selectBaseStudentList(BaseStudent baseStudent);

    /**
     * 新增学生
     * 
     * @param baseStudent 学生
     * @return 结果
     */
    public int insertBaseStudent(BaseStudent baseStudent);

    /**
     * 修改学生
     * 
     * @param baseStudent 学生
     * @return 结果
     */
    public int updateBaseStudent(BaseStudent baseStudent);

    /**
     * 批量删除学生
     * 
     * @param ids 需要删除的学生主键集合
     * @return 结果
     */
    public int deleteBaseStudentByIds(String ids);

    /**
     * 删除学生信息
     * 
     * @param id 学生主键
     * @return 结果
     */
    public int deleteBaseStudentById(Long id);
}
