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
import com.laohai.base.domain.BaseStudent;
import com.laohai.base.service.IBaseStudentService;
import com.laohai.common.core.controller.BaseController;
import com.laohai.common.core.domain.AjaxResult;
import com.laohai.common.utils.poi.ExcelUtil;
import com.laohai.common.core.page.TableDataInfo;

/**
 * 学生Controller
 * 
 * @author laohai
 * @date 2024-09-05
 */
@Controller
@RequestMapping("/base/student")
public class BaseStudentController extends BaseController
{
    private String prefix = "base/student";

    @Autowired
    private IBaseStudentService baseStudentService;

    @RequiresPermissions("base:student:view")
    @GetMapping()
    public String student()
    {
        return prefix + "/student";
    }

    /**
     * 查询学生列表
     */
    @RequiresPermissions("base:student:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(BaseStudent baseStudent)
    {
        startPage();
        List<BaseStudent> list = baseStudentService.selectBaseStudentList(baseStudent);
        return getDataTable(list);
    }

    /**
     * 导出学生列表
     */
    @RequiresPermissions("base:student:export")
    @Log(title = "学生", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(BaseStudent baseStudent)
    {
        List<BaseStudent> list = baseStudentService.selectBaseStudentList(baseStudent);
        ExcelUtil<BaseStudent> util = new ExcelUtil<BaseStudent>(BaseStudent.class);
        return util.exportExcel(list, "学生数据");
    }

    /**
     * 新增学生
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存学生
     */
    @RequiresPermissions("base:student:add")
    @Log(title = "学生", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(BaseStudent baseStudent)
    {
        return toAjax(baseStudentService.insertBaseStudent(baseStudent));
    }

    /**
     * 修改学生
     */
    @RequiresPermissions("base:student:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        BaseStudent baseStudent = baseStudentService.selectBaseStudentById(id);
        mmap.put("baseStudent", baseStudent);
        return prefix + "/edit";
    }

    /**
     * 修改保存学生
     */
    @RequiresPermissions("base:student:edit")
    @Log(title = "学生", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(BaseStudent baseStudent)
    {
        return toAjax(baseStudentService.updateBaseStudent(baseStudent));
    }

    /**
     * 删除学生
     */
    @RequiresPermissions("base:student:remove")
    @Log(title = "学生", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(baseStudentService.deleteBaseStudentByIds(ids));
    }
}
