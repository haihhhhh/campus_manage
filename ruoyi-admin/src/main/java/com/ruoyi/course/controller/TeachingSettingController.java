package com.ruoyi.course.controller;

import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.course.domain.CourseInfo;
import com.ruoyi.course.domain.TeachingInfo;
import com.ruoyi.course.service.ICourseInfoService;
import com.ruoyi.course.service.ITeachingSettingService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 课程设置信息Controller
 * 
 * @author ruoyi
 * @date 2024-09-05
 */
@Api("课程设置信息管理")
@Controller
@RequestMapping("/course/teaching_setting")
public class TeachingSettingController extends BaseController
{
    private String prefix = "course/teaching_setting";

    @Autowired
    private ITeachingSettingService teachingSettingService;

    @RequiresPermissions("course:teaching_setting:view")
    @GetMapping()
    public String teachingSetting()
    {
        return prefix + "/teaching_setting";
    }

    /**
//     * 查询课程信息列表
//     */
    @ApiOperation("获取课程信息列表")
//    @RequiresPermissions("course:teaching_setting:list")
    @PostMapping("/teachingSettingList")
    @ResponseBody
    public AjaxResult teachingSettingList()
    {
//        startPage();
        List<TeachingInfo> list = teachingSettingService.selectTeachingSettingInfo();
        return AjaxResult.success(list);
    }
//
//    /**
//     * 导出课程信息列表
//     */
//    @RequiresPermissions("course:info:export")
//    @Log(title = "课程信息", businessType = BusinessType.EXPORT)
//    @PostMapping("/export")
//    @ResponseBody
//    public AjaxResult export(CourseInfo courseInfo)
//    {
//        List<CourseInfo> list = courseInfoService.selectCourseInfoList(courseInfo);
//        ExcelUtil<CourseInfo> util = new ExcelUtil<CourseInfo>(CourseInfo.class);
//        return util.exportExcel(list, "课程信息数据");
//    }
//
//    /**
//     * 新增课程信息
//     */
//    @GetMapping("/add")
//    public String add()
//    {
//        return prefix + "/add";
//    }
//
//    /**
//     * 新增保存课程信息
//     */
//    @RequiresPermissions("course:info:add")
//    @Log(title = "课程信息", businessType = BusinessType.INSERT)
//    @PostMapping("/add")
//    @ResponseBody
//    public AjaxResult addSave(CourseInfo courseInfo)
//    {
//        return toAjax(courseInfoService.insertCourseInfo(courseInfo));
//    }
//
//    /**
//     * 修改课程信息
//     */
//    @RequiresPermissions("course:info:edit")
//    @GetMapping("/edit/{id}")
//    public String edit(@PathVariable("id") Long id, ModelMap mmap)
//    {
//        CourseInfo courseInfo = courseInfoService.selectCourseInfoById(id);
//        mmap.put("courseInfo", courseInfo);
//        return prefix + "/edit";
//    }
//
//    /**
//     * 修改保存课程信息
//     */
//    @RequiresPermissions("course:info:edit")
//    @Log(title = "课程信息", businessType = BusinessType.UPDATE)
//    @PostMapping("/edit")
//    @ResponseBody
//    public AjaxResult editSave(CourseInfo courseInfo)
//    {
//        return toAjax(courseInfoService.updateCourseInfo(courseInfo));
//    }
//
//    /**
//     * 删除课程信息
//     */
//    @RequiresPermissions("course:info:remove")
//    @Log(title = "课程信息", businessType = BusinessType.DELETE)
//    @PostMapping( "/remove")
//    @ResponseBody
//    public AjaxResult remove(String ids)
//    {
//        return toAjax(courseInfoService.deleteCourseInfoByIds(ids));
//    }
}
