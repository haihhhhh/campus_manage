package com.laohai.score.service;

import java.util.List;
import com.laohai.score.domain.ScoreInfo;

/**
 * 成绩Service接口
 * 
 * @author laohai
 * @date 2024-09-05
 */
public interface IScoreInfoService 
{
    /**
     * 查询成绩
     * 
     * @param id 成绩主键
     * @return 成绩
     */
    public ScoreInfo selectScoreInfoById(Long id);

    /**
     * 查询成绩列表
     * 
     * @param scoreInfo 成绩
     * @return 成绩集合
     */
    public List<ScoreInfo> selectScoreInfoList(ScoreInfo scoreInfo);

    /**
     * 新增成绩
     * 
     * @param scoreInfo 成绩
     * @return 结果
     */
    public int insertScoreInfo(ScoreInfo scoreInfo);

    /**
     * 修改成绩
     * 
     * @param scoreInfo 成绩
     * @return 结果
     */
    public int updateScoreInfo(ScoreInfo scoreInfo);

    /**
     * 批量删除成绩
     * 
     * @param ids 需要删除的成绩主键集合
     * @return 结果
     */
    public int deleteScoreInfoByIds(String ids);

    /**
     * 删除成绩信息
     * 
     * @param id 成绩主键
     * @return 结果
     */
    public int deleteScoreInfoById(Long id);
}
