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
import com.laohai.base.domain.BaseTeacher;
import com.laohai.base.service.IBaseTeacherService;
import com.laohai.common.core.controller.BaseController;
import com.laohai.common.core.domain.AjaxResult;
import com.laohai.common.utils.poi.ExcelUtil;
import com.laohai.common.core.page.TableDataInfo;

/**
 * 教师Controller
 * 
 * @author laohai
 * @date 2024-09-05
 */
@Controller
@RequestMapping("/base/teacher")
public class BaseTeacherController extends BaseController
{
    private String prefix = "base/teacher";

    @Autowired
    private IBaseTeacherService baseTeacherService;

    @RequiresPermissions("base:teacher:view")
    @GetMapping()
    public String teacher()
    {
        return prefix + "/teacher";
    }

    /**
     * 查询教师列表
     */
    @RequiresPermissions("base:teacher:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(BaseTeacher baseTeacher)
    {
        startPage();
        List<BaseTeacher> list = baseTeacherService.selectBaseTeacherList(baseTeacher);
        return getDataTable(list);
    }

    /**
     * 导出教师列表
     */
    @RequiresPermissions("base:teacher:export")
    @Log(title = "教师", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(BaseTeacher baseTeacher)
    {
        List<BaseTeacher> list = baseTeacherService.selectBaseTeacherList(baseTeacher);
        ExcelUtil<BaseTeacher> util = new ExcelUtil<BaseTeacher>(BaseTeacher.class);
        return util.exportExcel(list, "教师数据");
    }

    /**
     * 新增教师
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存教师
     */
    @RequiresPermissions("base:teacher:add")
    @Log(title = "教师", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(BaseTeacher baseTeacher)
    {
        return toAjax(baseTeacherService.insertBaseTeacher(baseTeacher));
    }

    /**
     * 修改教师
     */
    @RequiresPermissions("base:teacher:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        BaseTeacher baseTeacher = baseTeacherService.selectBaseTeacherById(id);
        mmap.put("baseTeacher", baseTeacher);
        return prefix + "/edit";
    }

    /**
     * 修改保存教师
     */
    @RequiresPermissions("base:teacher:edit")
    @Log(title = "教师", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(BaseTeacher baseTeacher)
    {
        return toAjax(baseTeacherService.updateBaseTeacher(baseTeacher));
    }

    /**
     * 删除教师
     */
    @RequiresPermissions("base:teacher:remove")
    @Log(title = "教师", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(baseTeacherService.deleteBaseTeacherByIds(ids));
    }
}
