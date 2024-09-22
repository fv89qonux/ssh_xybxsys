## 本项目实现的最终作用是基于SSH校园报修管理系统
## 分为3个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 报修管理
 - 查看已完成维修记录
 - 查看统计
 - 管理员信息管理
 - 管理员登录
 - 维修员信息管理
### 第2个角色为用户角色，实现了如下功能：
 - 用户登录
 - 设备报修
### 第3个角色为维修员角色，实现了如下功能：
 - 提交报修情况
 - 查看已完成维修记录
 - 查看统计
 - 维修员登录
 - 设备报修待处理
## 数据库设计如下：
# 数据库设计文档

**数据库名：** ssh_xybxsys

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [manage](#manage) |  |
| [repair](#repair) |  |
| [user](#user) |  |
| [worker](#worker) |  |

**表名：** <a id="manage">manage</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | passWord |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | realName |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | type |   int   | 10 |   0    |    N     |  N   |       |   |

**表名：** <a id="repair">repair</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | bm |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | dd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | fankui |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | name |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | phone |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | sbm |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | status |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  9   | yy |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | worker_id |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="user">user</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | passWord |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | userName |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="worker">worker</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       |   |
|  2   | age |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | passWord |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | realName |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | userName |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

