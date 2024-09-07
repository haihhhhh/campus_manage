package com.ruoyi.score.service;

import java.util.List;
import com.ruoyi.score.domain.ScoreExam;

/**
 * 考试Service接口
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
public interface IScoreExamService 
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
     * 批量删除考试
     * 
     * @param ids 需要删除的考试主键集合
     * @return 结果
     */
    public int deleteScoreExamByIds(String ids);

    /**
     * 删除考试信息
     * 
     * @param id 考试主键
     * @return 结果
     */
    public int deleteScoreExamById(Long id);
}
