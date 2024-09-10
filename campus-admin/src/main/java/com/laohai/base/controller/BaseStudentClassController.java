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
import com.laohai.base.domain.BaseStudentClass;
import com.laohai.base.service.IBaseStudentClassService;
import com.laohai.common.core.controller.BaseController;
import com.laohai.common.core.domain.AjaxResult;
import com.laohai.common.utils.poi.ExcelUtil;
import com.laohai.common.core.page.TableDataInfo;

/**
 * 班级Controller
 * 
 * @author laohai
 * @date 2024-09-05
 */
@Controller
@RequestMapping("/base/student_class")
public class BaseStudentClassController extends BaseController
{
    private String prefix = "base/student_class";

    @Autowired
    private IBaseStudentClassService baseStudentClassService;

    @RequiresPermissions("base:student_class:view")
    @GetMapping()
    public String student_class()
    {
        return prefix + "/student_class";
    }

    /**
     * 查询班级列表
     */
    @RequiresPermissions("base:student_class:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(BaseStudentClass baseStudentClass)
    {
        startPage();
        List<BaseStudentClass> list = baseStudentClassService.selectBaseStudentClassList(baseStudentClass);
        return getDataTable(list);
    }

    /**
     * 导出班级列表
     */
    @RequiresPermissions("base:student_class:export")
    @Log(title = "班级", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(BaseStudentClass baseStudentClass)
    {
        List<BaseStudentClass> list = baseStudentClassService.selectBaseStudentClassList(baseStudentClass);
        ExcelUtil<BaseStudentClass> util = new ExcelUtil<BaseStudentClass>(BaseStudentClass.class);
        return util.exportExcel(list, "班级数据");
    }

    /**
     * 新增班级
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存班级
     */
    @RequiresPermissions("base:student_class:add")
    @Log(title = "班级", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(BaseStudentClass baseStudentClass)
    {
        return toAjax(baseStudentClassService.insertBaseStudentClass(baseStudentClass));
    }

    /**
     * 修改班级
     */
    @RequiresPermissions("base:student_class:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        BaseStudentClass baseStudentClass = baseStudentClassService.selectBaseStudentClassById(id);
        mmap.put("baseStudentClass", baseStudentClass);
        return prefix + "/edit";
    }

    /**
     * 修改保存班级
     */
    @RequiresPermissions("base:student_class:edit")
    @Log(title = "班级", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(BaseStudentClass baseStudentClass)
    {
        return toAjax(baseStudentClassService.updateBaseStudentClass(baseStudentClass));
    }

    /**
     * 删除班级
     */
    @RequiresPermissions("base:student_class:remove")
    @Log(title = "班级", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(baseStudentClassService.deleteBaseStudentClassByIds(ids));
    }
}
