package com.ruoyi.course.controller;

import com.ruoyi.base.domain.BaseTeacher;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.course.domain.CourseBase;
import com.ruoyi.course.domain.CourseInfo;
import com.ruoyi.course.domain.TeachingInfo;
import com.ruoyi.course.domain.TeachingSettingModel;
import com.ruoyi.course.service.ICourseInfoService;
import com.ruoyi.course.service.ITeachingSettingService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

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

    @ApiOperation("获取当前学期")
//    @RequiresPermissions("course:teaching_setting:list")
    @PostMapping("/getCurrentSeason")
    public String getCurrentSeason(String fragment, ModelMap mmap)
    {
        mmap.put("season","2024年上半学期");
        return prefix + "/teaching_setting::" + fragment;
    }
    /**
//     * 查询课程信息列表
//     */
    @ApiOperation("获取课程信息列表")
//    @RequiresPermissions("course:teaching_setting:list")
    @PostMapping("/teachingSettingList")
    public String teachingSettingList(String fragment, ModelMap mmap)
    {
        Map<String,List<TeachingSettingModel>> teachingSettingMap = teachingSettingService.selectTeachingSettingInfo(null);
        mmap.put("teachingSettingList",teachingSettingMap);
        return prefix + "/teaching_setting::" + fragment;
    }


    /**
     * 设置教授信息
     */
    @RequiresPermissions("course:teaching_setting:edit")
    @Log(title = "设置教师和课程界面", businessType = BusinessType.UPDATE)
    @GetMapping("/settingCourse")
    public String settingCourse(String gradeCode,String teacherCode,String courseCode,ModelMap mmap)
    {
        TeachingSettingModel model = new TeachingSettingModel();
        model.setGradeCode(gradeCode);
        model.setTeacherCode(teacherCode);
        model.setCourseCode(courseCode);
        Map<String,List<TeachingSettingModel>> teachingSettingMap = teachingSettingService.selectTeachingSettingInfo(model);
        List<Map.Entry<String, List<TeachingSettingModel>>> list = teachingSettingMap.entrySet().stream().collect(Collectors.toList());
        if(teachingSettingMap!=null&&teachingSettingMap.size()>0){
            model= list.get(0).getValue().get(0);
            mmap.put("model",model);
        }
        return prefix + "/setting_course";
    }

    /**
     * 清除教授信息
     */
    @RequiresPermissions("course:teaching_setting:edit")
    @Log(title = "教授信息", businessType = BusinessType.UPDATE)
    @PostMapping("/clearTeaching")
    @ResponseBody
    public AjaxResult clearTeaching(String gradeCode,String teacherCode,String courseCode)
    {
        return toAjax(teachingSettingService.clearTeaching(gradeCode,
                teacherCode,courseCode));
    }


    /**
     * 设置教授信息
     */
    @RequiresPermissions("course:teaching_setting:edit")
    @Log(title = "教授信息", businessType = BusinessType.UPDATE)
    @PostMapping("/setTeaching")
    @ResponseBody
    public AjaxResult setTeaching(String gradeCode,String teacherCode,String courseCode)
    {
        return toAjax(teachingSettingService.setTeaching(gradeCode,
                teacherCode,courseCode));
    }

    /**
     * 查询课程基础信息管理列表
     */
    @RequiresPermissions("course:teaching_setting:select_teacher")
    @PostMapping("/selectTeacher")
    @ResponseBody
    public TableDataInfo selectTeacher(BaseTeacher baseTeacher,String filterTeacherCode)
    {
        startPage();
        List<BaseTeacher> list = teachingSettingService.selectTeacher(baseTeacher,filterTeacherCode);
        return getDataTable(list);
    }
}
