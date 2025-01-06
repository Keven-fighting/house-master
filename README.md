# house-master
房屋租赁管理系统

前端项目在house-master的文件中
后端项目在house-master-management的文件中
数据库结构和内容在sql文件中

启动前端项目：
    1.在项目终端输入 `npm install`
    2.启动前端，在终端输入 `npm run dev`
    3.注意：图片保存在项目/public/images/下
启动后端项目：
    1.将application.properties文件中的数据库username和password改成自己的
    2.在pom.xml文件中安装项目依赖并更改成自己的java版本
    3.将UploadController.java文件中的图片保存路径替换成前端下/public/images/的路径
    3.启动项目
创建数据库：
    1.运行sql中的内容即可

前端使用的端口是8080，参考作者（待填，找不到那个大佬~~）
后端使用的端口是8090

版本控制
    node版本v22.12.0
    npm 版本10.9.0

    java版本21
    springboot版本3.x
