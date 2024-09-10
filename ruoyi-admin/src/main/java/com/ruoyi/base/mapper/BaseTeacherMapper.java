package com.ruoyi.base.mapper;

import java.util.List;
import java.util.Map;

import com.ruoyi.base.domain.BaseTeacher;

/**
 * 教师Mapper接口
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public interface BaseTeacherMapper 
{
    /**
     * 查询教师
     * 
     * @param id 教师主键
     * @return 教师
     */
    public BaseTeacher selectBaseTeacherById(Long id);

    /**
     * 过滤教师
     *
     * @param params 参数
     * @return 教师
     */
    public List<BaseTeacher> selectFilterBaseTeacherByCode(Map<String,Object> params);
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
     * 删除教师
     * 
     * @param id 教师主键
     * @return 结果
     */
    public int deleteBaseTeacherById(Long id);

    /**
     * 批量删除教师
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteBaseTeacherByIds(String[] ids);
}
