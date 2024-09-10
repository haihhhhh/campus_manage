package com.laohai.course.controller;

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
import com.laohai.course.domain.CourseBase;
import com.laohai.course.service.ICourseBaseService;
import com.laohai.common.core.controller.BaseController;
import com.laohai.common.core.domain.AjaxResult;
import com.laohai.common.utils.poi.ExcelUtil;
import com.laohai.common.core.page.TableDataInfo;

/**
 * 课程基础信息管理Controller
 * 
 * @author laohai
 * @date 2024-09-05
 */
@Controller
@RequestMapping("/course/base")
public class CourseBaseController extends BaseController
{
    private String prefix = "course/base";

    @Autowired
    private ICourseBaseService courseBaseService;

    @RequiresPermissions("course:base:view")
    @GetMapping()
    public String base()
    {
        return prefix + "/base";
    }

    /**
     * 查询课程基础信息管理列表
     */
    @RequiresPermissions("course:base:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(CourseBase courseBase)
    {
        startPage();
        List<CourseBase> list = courseBaseService.selectCourseBaseList(courseBase);
        return getDataTable(list);
    }

    /**
     * 导出课程基础信息管理列表
     */
    @RequiresPermissions("course:base:export")
    @Log(title = "课程基础信息管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(CourseBase courseBase)
    {
        List<CourseBase> list = courseBaseService.selectCourseBaseList(courseBase);
        ExcelUtil<CourseBase> util = new ExcelUtil<CourseBase>(CourseBase.class);
        return util.exportExcel(list, "课程基础信息管理数据");
    }

    /**
     * 新增课程基础信息管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存课程基础信息管理
     */
    @RequiresPermissions("course:base:add")
    @Log(title = "课程基础信息管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(CourseBase courseBase)
    {
        return toAjax(courseBaseService.insertCourseBase(courseBase));
    }

    /**
     * 修改课程基础信息管理
     */
    @RequiresPermissions("course:base:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        CourseBase courseBase = courseBaseService.selectCourseBaseById(id);
        mmap.put("courseBase", courseBase);
        return prefix + "/edit";
    }

    /**
     * 修改保存课程基础信息管理
     */
    @RequiresPermissions("course:base:edit")
    @Log(title = "课程基础信息管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(CourseBase courseBase)
    {
        return toAjax(courseBaseService.updateCourseBase(courseBase));
    }

    /**
     * 删除课程基础信息管理
     */
    @RequiresPermissions("course:base:remove")
    @Log(title = "课程基础信息管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(courseBaseService.deleteCourseBaseByIds(ids));
    }
}
