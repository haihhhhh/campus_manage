package com.laohai.score.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;
import com.laohai.common.utils.StringUtils;
import org.springframework.transaction.annotation.Transactional;
import com.laohai.score.domain.ScoreInfo;
import com.laohai.score.mapper.ScoreExamMapper;
import com.laohai.score.domain.ScoreExam;
import com.laohai.score.service.IScoreExamService;
import com.laohai.common.core.text.Convert;

/**
 * 考试Service业务层处理
 * 
 * @author laohai
 * @date 2024-09-05
 */
@Service
public class ScoreExamServiceImpl implements IScoreExamService 
{
    @Autowired
    private ScoreExamMapper scoreExamMapper;

    /**
     * 查询考试
     * 
     * @param id 考试主键
     * @return 考试
     */
    @Override
    public ScoreExam selectScoreExamById(Long id)
    {
        return scoreExamMapper.selectScoreExamById(id);
    }

    /**
     * 查询考试列表
     * 
     * @param scoreExam 考试
     * @return 考试
     */
    @Override
    public List<ScoreExam> selectScoreExamList(ScoreExam scoreExam)
    {
        return scoreExamMapper.selectScoreExamList(scoreExam);
    }

    /**
     * 新增考试
     * 
     * @param scoreExam 考试
     * @return 结果
     */
    @Transactional
    @Override
    public int insertScoreExam(ScoreExam scoreExam)
    {
        int rows = scoreExamMapper.insertScoreExam(scoreExam);
        insertScoreInfo(scoreExam);
        return rows;
    }

    /**
     * 修改考试
     * 
     * @param scoreExam 考试
     * @return 结果
     */
    @Transactional
    @Override
    public int updateScoreExam(ScoreExam scoreExam)
    {
        scoreExamMapper.deleteScoreInfoByExamId(scoreExam.getId());
        insertScoreInfo(scoreExam);
        return scoreExamMapper.updateScoreExam(scoreExam);
    }

    /**
     * 批量删除考试
     * 
     * @param ids 需要删除的考试主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteScoreExamByIds(String ids)
    {
        scoreExamMapper.deleteScoreInfoByExamIds(Convert.toStrArray(ids));
        return scoreExamMapper.deleteScoreExamByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除考试信息
     * 
     * @param id 考试主键
     * @return 结果
     */
    @Transactional
    @Override
    public int deleteScoreExamById(Long id)
    {
        scoreExamMapper.deleteScoreInfoByExamId(id);
        return scoreExamMapper.deleteScoreExamById(id);
    }

    /**
     * 新增成绩信息
     * 
     * @param scoreExam 考试对象
     */
    public void insertScoreInfo(ScoreExam scoreExam)
    {
        List<ScoreInfo> scoreInfoList = scoreExam.getScoreInfoList();
        Long id = scoreExam.getId();
        if (StringUtils.isNotNull(scoreInfoList))
        {
            List<ScoreInfo> list = new ArrayList<ScoreInfo>();
            for (ScoreInfo scoreInfo : scoreInfoList)
            {
                scoreInfo.setExamId(id);
                list.add(scoreInfo);
            }
            if (list.size() > 0)
            {
                scoreExamMapper.batchScoreInfo(list);
            }
        }
    }
}
