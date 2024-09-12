<h2 align="center">
<a href="https://www.laohaicode.com/campus" rel="nofollow">老海的管理系统模板</a>
</h2>
<p align="center">


## 👋 介绍

- [老海的管理系统专用模板(单体版)](https://www.laohaicode.com/campus)，用于快速开发小项目。

- 基于 [Ruoyi单体版](https://ruoyi.vip/) 搭建

- 逐步更新中，改造方向为标准、小型项目的基础模板
- 主打一个麻雀虽小五脏俱全，保障开发质量，提高开发速度和交付速度


## ✨ 特性
**自有特性**
- 📊 项目制作流程梳理，从需求分析到部署维护
- 🎨 校园管理业务demo模板，核心功能为课程设置功能
- 🌐 整理docker一键部署示例


**继承自ruoyi的系统特性：**
- 🦖 完全响应式布局（支持电脑、平板、手机等所有主流设备）
- ✍️ 强大的一键生成功能（包括控制器、模型、视图、菜单等）
- 🎨 支持多数据源，简单配置即可实现切换。
- 🌐 支持按钮及数据权限，可自定义部门数据权限。
- 💯 对常用js插件进行二次封装，使js代码变得简洁，更加易维护
- 📊 完善的XSS防范及脚本过滤，彻底杜绝XSS攻击
- 🚀 Maven多项目依赖，模块及插件分项目，尽量松耦合，方便模块升级、增减模块。
- 🏞️ 国际化支持，服务端及客户端支持
- 📦 完善的日志记录体系简单注解即可实现
- 📦 支持服务监控，数据监控，缓存监控功能。
## 技术选型
- Java EE 8
- Servlet 3.0
- Apache Maven 3
- Spring Boot 2.2.x
- Spring Framework 5.2.x
- Apache Shiro 1.7
- Apache MyBatis 3.5.x
- Hibernate Validation 6.0.x
- Alibaba Druid 1.2.x
- Bootstrap 3.3.7
- Thymeleaf 3.0.x

## 📊 目录结构

```bash
├── bin                           # 脚本
│   ├── clean.bat                 # 清除
│   ├── package.bat               # 打包
│   ├── run.bat                   # 运行
├── campus-admin                  # 管理系统主入口
├── campus-common                 # 通用模块
├── campus-framework              # 核心框架模块
├── campus-generator              # 代码生成模块
├── campus-quartz                 # 任务运行模块
├── campus-system                 # 内置权限系统模块
├── docs                          # 系统文档
│   ├── 1.需求分析
│   ├── 2.架构图                       
│   ├── 3.业务功能导图                     
│   ├── 4.业务流程图                      
│   ├── 5.数据库结构                     
│   ├── 6.原型图                     
│   ├── 7.测试脚本                      
│   ├── 8.资源                        
│   ├── 9.部署                        
│   ├── 项目管理                      
├── sql
│   ├── campus.sql                 # 系统初始化sql
│   ├── quartz.sql                 # 定时任务sql
├── README.MD                      

```

## 📥 下载

```bash
git clone https://github.com/haihhhhh/campus_manage.git
```

构建


## 📷 截图

<img width="1471" alt="Live Demo" src="https://fastly.jsdelivr.net/gh/haihhhhh/myresource@master/img/202409121655214.png?raw=true">



<img width="1471" alt="Live Demo" src="https://fastly.jsdelivr.net/gh/haihhhhh/myresource@master/img/202409121656871.png?raw=true">

## 📝 许可证

[MIT](./LICENSE)