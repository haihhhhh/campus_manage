package com.ruoyi.score.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.score.mapper.ScoreInfoMapper;
import com.ruoyi.score.domain.ScoreInfo;
import com.ruoyi.score.service.IScoreInfoService;
import com.ruoyi.common.core.text.Convert;

/**
 * 成绩Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
@Service
public class ScoreInfoServiceImpl implements IScoreInfoService 
{
    @Autowired
    private ScoreInfoMapper scoreInfoMapper;

    /**
     * 查询成绩
     * 
     * @param id 成绩主键
     * @return 成绩
     */
    @Override
    public ScoreInfo selectScoreInfoById(Long id)
    {
        return scoreInfoMapper.selectScoreInfoById(id);
    }

    /**
     * 查询成绩列表
     * 
     * @param scoreInfo 成绩
     * @return 成绩
     */
    @Override
    public List<ScoreInfo> selectScoreInfoList(ScoreInfo scoreInfo)
    {
        return scoreInfoMapper.selectScoreInfoList(scoreInfo);
    }

    /**
     * 新增成绩
     * 
     * @param scoreInfo 成绩
     * @return 结果
     */
    @Override
    public int insertScoreInfo(ScoreInfo scoreInfo)
    {
        return scoreInfoMapper.insertScoreInfo(scoreInfo);
    }

    /**
     * 修改成绩
     * 
     * @param scoreInfo 成绩
     * @return 结果
     */
    @Override
    public int updateScoreInfo(ScoreInfo scoreInfo)
    {
        return scoreInfoMapper.updateScoreInfo(scoreInfo);
    }

    /**
     * 批量删除成绩
     * 
     * @param ids 需要删除的成绩主键
     * @return 结果
     */
    @Override
    public int deleteScoreInfoByIds(String ids)
    {
        return scoreInfoMapper.deleteScoreInfoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除成绩信息
     * 
     * @param id 成绩主键
     * @return 结果
     */
    @Override
    public int deleteScoreInfoById(Long id)
    {
        return scoreInfoMapper.deleteScoreInfoById(id);
    }
}
