package com.laohai.score.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.laohai.common.annotation.Log;
import com.laohai.common.enums.BusinessType;
import com.laohai.score.domain.ScoreExam;
import com.laohai.score.service.IScoreExamService;
import com.laohai.common.core.controller.BaseController;
import com.laohai.common.core.domain.AjaxResult;
import com.laohai.common.utils.poi.ExcelUtil;
import com.laohai.common.core.page.TableDataInfo;

/**
 * 考试Controller
 * 
 * @author laohai
 * @date 2024-09-05
 */
@Controller
@RequestMapping("/score/exam")
public class ScoreExamController extends BaseController
{
    private String prefix = "score/exam";

    @Autowired
    private IScoreExamService scoreExamService;

    @RequiresPermissions("score:exam:view")
    @GetMapping()
    public String exam()
    {
        return prefix + "/exam";
    }

    /**
     * 查询考试列表
     */
    @RequiresPermissions("score:exam:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ScoreExam scoreExam)
    {
        startPage();
        List<ScoreExam> list = scoreExamService.selectScoreExamList(scoreExam);
        return getDataTable(list);
    }

    /**
     * 导出考试列表
     */
    @RequiresPermissions("score:exam:export")
    @Log(title = "考试", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ScoreExam scoreExam)
    {
        List<ScoreExam> list = scoreExamService.selectScoreExamList(scoreExam);
        ExcelUtil<ScoreExam> util = new ExcelUtil<ScoreExam>(ScoreExam.class);
        return util.exportExcel(list, "考试数据");
    }

    /**
     * 新增考试
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存考试
     */
    @RequiresPermissions("score:exam:add")
    @Log(title = "考试", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ScoreExam scoreExam)
    {
        return toAjax(scoreExamService.insertScoreExam(scoreExam));
    }

    /**
     * 修改考试
     */
    @RequiresPermissions("score:exam:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        ScoreExam scoreExam = scoreExamService.selectScoreExamById(id);
        mmap.put("scoreExam", scoreExam);
        return prefix + "/edit";
    }

    /**
     * 修改保存考试
     */
    @RequiresPermissions("score:exam:edit")
    @Log(title = "考试", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ScoreExam scoreExam)
    {
        return toAjax(scoreExamService.updateScoreExam(scoreExam));
    }

    /**
     * 删除考试
     */
    @RequiresPermissions("score:exam:remove")
    @Log(title = "考试", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(scoreExamService.deleteScoreExamByIds(ids));
    }
}
