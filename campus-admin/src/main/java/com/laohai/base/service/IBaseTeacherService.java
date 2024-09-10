package com.laohai.base.service;

import java.util.List;
import com.laohai.base.domain.BaseTeacher;

/**
 * 教师Service接口
 * 
 * @author laohai
 * @date 2024-09-05
 */
public interface IBaseTeacherService 
{
    /**
     * 查询教师
     * 
     * @param id 教师主键
     * @return 教师
     */
    public BaseTeacher selectBaseTeacherById(Long id);

    /**
     * 查询教师列表
     * 
     * @param baseTeacher 教师
     * @return 教师集合
     */
    public List<BaseTeacher> selectBaseTeacherList(BaseTeacher baseTeacher);

    /**
     * 新增教师
     * 
     * @param baseTeacher 教师
     * @return 结果
     */
    public int insertBaseTeacher(BaseTeacher baseTeacher);

    /**
     * 修改教师
     * 
     * @param baseTeacher 教师
     * @return 结果
     */
    public int updateBaseTeacher(BaseTeacher baseTeacher);

    /**
     * 批量删除教师
     * 
     * @param ids 需要删除的教师主键集合
     * @return 结果
     */
    public int deleteBaseTeacherByIds(String ids);

    /**
     * 删除教师信息
     * 
     * @param id 教师主键
     * @return 结果
     */
    public int deleteBaseTeacherById(Long id);
}
