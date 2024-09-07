package com.ruoyi.score.mapper;

import java.util.List;
import com.ruoyi.score.domain.ScoreExam;
import com.ruoyi.score.domain.ScoreInfo;

/**
 * 考试Mapper接口
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public interface ScoreExamMapper 
{
    /**
     * 查询考试
     * 
     * @param id 考试主键
     * @return 考试
     */
    public ScoreExam selectScoreExamById(Long id);

    /**
     * 查询考试列表
     * 
     * @param scoreExam 考试
     * @return 考试集合
     */
    public List<ScoreExam> selectScoreExamList(ScoreExam scoreExam);

    /**
     * 新增考试
     * 
     * @param scoreExam 考试
     * @return 结果
     */
    public int insertScoreExam(ScoreExam scoreExam);

    /**
     * 修改考试
     * 
     * @param scoreExam 考试
     * @return 结果
     */
    public int updateScoreExam(ScoreExam scoreExam);

    /**
     * 删除考试
     * 
     * @param id 考试主键
     * @return 结果
     */
    public int deleteScoreExamById(Long id);

    /**
     * 批量删除考试
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteScoreExamByIds(String[] ids);

    /**
     * 批量删除成绩
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteScoreInfoByExamIds(String[] ids);
    
    /**
     * 批量新增成绩
     * 
     * @param scoreInfoList 成绩列表
     * @return 结果
     */
    public int batchScoreInfo(List<ScoreInfo> scoreInfoList);
    

    /**
     * 通过考试主键删除成绩信息
     * 
     * @param id 考试ID
     * @return 结果
     */
    public int deleteScoreInfoByExamId(Long id);
}
