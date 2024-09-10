package com.laohai.base.controller;

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
import com.laohai.base.domain.BaseGrade;
import com.laohai.base.service.IBaseGradeService;
import com.laohai.common.core.controller.BaseController;
import com.laohai.common.core.domain.AjaxResult;
import com.laohai.common.utils.poi.ExcelUtil;
import com.laohai.common.core.page.TableDataInfo;

/**
 * 年级Controller
 * 
 * @author laohai
 * @date 2024-09-05
 */
@Controller
@RequestMapping("/base/grade")
public class BaseGradeController extends BaseController
{
    private String prefix = "base/grade";

    @Autowired
    private IBaseGradeService baseGradeService;

    @RequiresPermissions("base:grade:view")
    @GetMapping()
    public String grade()
    {
        return prefix + "/grade";
    }

    /**
     * 查询年级列表
     */
    @RequiresPermissions("base:grade:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(BaseGrade baseGrade)
    {
        startPage();
        List<BaseGrade> list = baseGradeService.selectBaseGradeList(baseGrade);
        return getDataTable(list);
    }

    /**
     * 导出年级列表
     */
    @RequiresPermissions("base:grade:export")
    @Log(title = "年级", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(BaseGrade baseGrade)
    {
        List<BaseGrade> list = baseGradeService.selectBaseGradeList(baseGrade);
        ExcelUtil<BaseGrade> util = new ExcelUtil<BaseGrade>(BaseGrade.class);
        return util.exportExcel(list, "年级数据");
    }

    /**
     * 新增年级
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存年级
     */
    @RequiresPermissions("base:grade:add")
    @Log(title = "年级", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(BaseGrade baseGrade)
    {
        return toAjax(baseGradeService.insertBaseGrade(baseGrade));
    }

    /**
     * 修改年级
     */
    @RequiresPermissions("base:grade:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        BaseGrade baseGrade = baseGradeService.selectBaseGradeById(id);
        mmap.put("baseGrade", baseGrade);
        return prefix + "/edit";
    }

    /**
     * 修改保存年级
     */
    @RequiresPermissions("base:grade:edit")
    @Log(title = "年级", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(BaseGrade baseGrade)
    {
        return toAjax(baseGradeService.updateBaseGrade(baseGrade));
    }

    /**
     * 删除年级
     */
    @RequiresPermissions("base:grade:remove")
    @Log(title = "年级", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(baseGradeService.deleteBaseGradeByIds(ids));
    }
}
