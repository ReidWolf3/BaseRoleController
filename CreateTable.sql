 --所有表中 CreateBy，若不为用户登录操作，则记录IP
 
 --用户登录表
 use RoleMenuControllerBase
 go
create table [SystemUser]
(
--用户ID
UserID varchar(50) primary key not null,
--用户登录名
UserLoginName varchar(50) null,
--用户密码
UserPassword varchar(50) null,
--是否禁用（0：禁用，1：不禁用）
IsUse bit null,
--是否可用
ValidFlag int default(1) not null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null
)
go

--用户信息表
use RoleMenuControllerBase
go
create table [SystemUserInfo]
(
InfoID varchar(50) primary key not null,
--用户ID
UserID varchar(50) null,
--用户展示姓名
UserShowName varchar(50) null,
--头像
HeadPortrait varchar(Max) null,
--手机号
Phone varchar(20) null,
--邮箱
EMail varchar(100) null,
--出生日期
BirthDate datetime null,
--身份证号
IDCard varchar(20) null,
--QQ
QQ varchar(15) null,
--部门ID
OrganizationID varchar(50) null,
--描述
Descripts varchar(1000) null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null
)
go

use RoleMenuControllerBase
go
create table [Organization]
(
OrganizationID varchar(50) primary key not null,
--部门/公司名称
OrganizationName varchar(50) null,
--父类部门/公司ID
ParentOrganizationID varchar(50) null,
--部门/公司LOGO
OrganLogo varchar(100) null,
--部门/公司地址
OrganAddress varchar(500) null,
--部门/公司描述
Descripts varchar(1000) null,
--是否可用
ValidFlag int default(1) not null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null,
)
go


--系统角色表
use RoleMenuControllerBase
go
create table [SystemRole]
(
--角色ID
RoleID varchar(50) primary key not null,
--角色名称
RoleName varchar(50) null,
--角色等级
RoleLevel int null,
--描述
Descripts varchar(1000) null,
--是否可用（0：不可用，1：可用）
ValidFlag int default(1) null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null
)
go

--系统用户权限表
use RoleMenuControllerBase
go
create table [SystemUserRole]
(
--用户角色ID
UserRoleID varchar(50) primary key not null,
--用户ID
UserID varchar(50) null,
--角色ID
RoleID varchar(50) null,
--是否可用（0：不可用，1：可用）
ValidFlag int default(1) null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null
)
go

--后台菜单表
use RoleMenuControllerBase
go
create table [AdminMenu]
(
--菜单ID
MenuID varchar(50) primary key not null,
--菜单Code
MenuCode varchar(300) unique null,
--菜单图标
MenuIcon varchar(50) null,
--菜单名称
MenuName varchar(50) null,
--标题
MenuTitle varchar(50) null,
--菜单路径
MenuPath varchar(50) null,
--父类ID
ParentID varchar(50) null,
--描述
Descripts varchar(1000) null,
--是否可用（0：不可用，1：可用）
ValidFlag int default(1) null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null,
)
go

--系统角色菜单表
use RoleMenuControllerBase
go
create table [SystemRoleAdminMenu]
(
--角色菜单ID
RoleMenuID varchar(50) primary key not null,
--角色ID
RoleID varchar(50) null,
--菜单ID
MenuID varchar(50) null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null
)
go

use RoleMenuControllerBase
go
create table [Function]
(
FunctionID varchar(50) primary key not null,
--功能Code
FunctionCode varchar(100) null,
--功能名称
FunctionName varchar(100) null,
--功能路径
FunctionPath varchar(100) null,
--父类功能
ParentFunctionID varchar(100) null,
--功能描述
Descript varchar(300) null,
ValidFlag int null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null
)
go

use RoleMenuControllerBase
go
create table [SystemRoleFunction]
(
RoleFunctionID varchar(50) primary key not null,
--角色ID
RoleID varchar(50) null,
--功能ID
FunctionID varchar(50) null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null
)
go

--站点配置
use RoleMenuControllerBase
go
create table SiteConfig
(
Id varchar(50) primary key not null,
--站点名称
SiteName varchar(100) null,
--站点Logo
SiteLogo varchar(500) null,
--关键词
KeyWord varchar(Max) null,
--备案号
RecordNo varchar(100) null,
--站点描述
Descripts varchar(2000) null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null,
)
go

--操作日志表
use RoleMenuControllerBase
go
create table [SystemOperationLog]
(
LogID varchar(50) primary key not null,
--操作方法名称
OperationName varchar(500) null,
--路由URL
ActionUrl varchar(500) null,
--参数
Parameter varchar(Max) null,
--是否成功
IsSuccess bit null,
--失败缘由
ErrorMsg varchar(1000) null,
--访问来源
IPAddress varchar(30) null,
--操作时间
CreateTime datetime null,
--操作者
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null,
)
go