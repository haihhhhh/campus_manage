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
import com.laohai.score.domain.ScoreInfo;
import com.laohai.score.service.IScoreInfoService;
import com.laohai.common.core.controller.BaseController;
import com.laohai.common.core.domain.AjaxResult;
import com.laohai.common.utils.poi.ExcelUtil;
import com.laohai.common.core.page.TableDataInfo;

/**
 * 成绩Controller
 * 
 * @author laohai
 * @date 2024-09-05
 */
@Controller
@RequestMapping("/score/info")
public class ScoreInfoController extends BaseController
{
    private String prefix = "score/info";

    @Autowired
    private IScoreInfoService scoreInfoService;

    @RequiresPermissions("score:info:view")
    @GetMapping()
    public String info()
    {
        return prefix + "/info";
    }

    /**
     * 查询成绩列表
     */
    @RequiresPermissions("score:info:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(ScoreInfo scoreInfo)
    {
        startPage();
        List<ScoreInfo> list = scoreInfoService.selectScoreInfoList(scoreInfo);
        return getDataTable(list);
    }

    /**
     * 导出成绩列表
     */
    @RequiresPermissions("score:info:export")
    @Log(title = "成绩", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(ScoreInfo scoreInfo)
    {
        List<ScoreInfo> list = scoreInfoService.selectScoreInfoList(scoreInfo);
        ExcelUtil<ScoreInfo> util = new ExcelUtil<ScoreInfo>(ScoreInfo.class);
        return util.exportExcel(list, "成绩数据");
    }

    /**
     * 新增成绩
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存成绩
     */
    @RequiresPermissions("score:info:add")
    @Log(title = "成绩", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(ScoreInfo scoreInfo)
    {
        return toAjax(scoreInfoService.insertScoreInfo(scoreInfo));
    }

    /**
     * 修改成绩
     */
    @RequiresPermissions("score:info:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        ScoreInfo scoreInfo = scoreInfoService.selectScoreInfoById(id);
        mmap.put("scoreInfo", scoreInfo);
        return prefix + "/edit";
    }

    /**
     * 修改保存成绩
     */
    @RequiresPermissions("score:info:edit")
    @Log(title = "成绩", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(ScoreInfo scoreInfo)
    {
        return toAjax(scoreInfoService.updateScoreInfo(scoreInfo));
    }

    /**
     * 删除成绩
     */
    @RequiresPermissions("score:info:remove")
    @Log(title = "成绩", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(scoreInfoService.deleteScoreInfoByIds(ids));
    }
}
