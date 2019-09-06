 --���б��� CreateBy������Ϊ�û���¼���������¼IP
 
 --�û���¼��
 use RoleMenuControllerBase
 go
create table [SystemUser]
(
--�û�ID
UserID varchar(50) primary key not null,
--�û���¼��
UserLoginName varchar(50) null,
--�û�����
UserPassword varchar(50) null,
--�Ƿ���ã�0�����ã�1�������ã�
IsUse bit null,
--�Ƿ����
ValidFlag int default(1) not null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null
)
go

--�û���Ϣ��
use RoleMenuControllerBase
go
create table [SystemUserInfo]
(
InfoID varchar(50) primary key not null,
--�û�ID
UserID varchar(50) null,
--�û�չʾ����
UserShowName varchar(50) null,
--ͷ��
HeadPortrait varchar(Max) null,
--�ֻ���
Phone varchar(20) null,
--����
EMail varchar(100) null,
--��������
BirthDate datetime null,
--���֤��
IDCard varchar(20) null,
--QQ
QQ varchar(15) null,
--����ID
OrganizationID varchar(50) null,
--����
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
--����/��˾����
OrganizationName varchar(50) null,
--���ಿ��/��˾ID
ParentOrganizationID varchar(50) null,
--����/��˾LOGO
OrganLogo varchar(100) null,
--����/��˾��ַ
OrganAddress varchar(500) null,
--����/��˾����
Descripts varchar(1000) null,
--�Ƿ����
ValidFlag int default(1) not null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null,
)
go


--ϵͳ��ɫ��
use RoleMenuControllerBase
go
create table [SystemRole]
(
--��ɫID
RoleID varchar(50) primary key not null,
--��ɫ����
RoleName varchar(50) null,
--��ɫ�ȼ�
RoleLevel int null,
--����
Descripts varchar(1000) null,
--�Ƿ���ã�0�������ã�1�����ã�
ValidFlag int default(1) null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null
)
go

--ϵͳ�û�Ȩ�ޱ�
use RoleMenuControllerBase
go
create table [SystemUserRole]
(
--�û���ɫID
UserRoleID varchar(50) primary key not null,
--�û�ID
UserID varchar(50) null,
--��ɫID
RoleID varchar(50) null,
--�Ƿ���ã�0�������ã�1�����ã�
ValidFlag int default(1) null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null
)
go

--��̨�˵���
use RoleMenuControllerBase
go
create table [AdminMenu]
(
--�˵�ID
MenuID varchar(50) primary key not null,
--�˵�Code
MenuCode varchar(300) unique null,
--�˵�ͼ��
MenuIcon varchar(50) null,
--�˵�����
MenuName varchar(50) null,
--����
MenuTitle varchar(50) null,
--�˵�·��
MenuPath varchar(50) null,
--����ID
ParentID varchar(50) null,
--����
Descripts varchar(1000) null,
--�Ƿ���ã�0�������ã�1�����ã�
ValidFlag int default(1) null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null,
)
go

--ϵͳ��ɫ�˵���
use RoleMenuControllerBase
go
create table [SystemRoleAdminMenu]
(
--��ɫ�˵�ID
RoleMenuID varchar(50) primary key not null,
--��ɫID
RoleID varchar(50) null,
--�˵�ID
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
--����Code
FunctionCode varchar(100) null,
--��������
FunctionName varchar(100) null,
--����·��
FunctionPath varchar(100) null,
--���๦��
ParentFunctionID varchar(100) null,
--��������
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
--��ɫID
RoleID varchar(50) null,
--����ID
FunctionID varchar(50) null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null
)
go

--վ������
use RoleMenuControllerBase
go
create table SiteConfig
(
Id varchar(50) primary key not null,
--վ������
SiteName varchar(100) null,
--վ��Logo
SiteLogo varchar(500) null,
--�ؼ���
KeyWord varchar(Max) null,
--������
RecordNo varchar(100) null,
--վ������
Descripts varchar(2000) null,
CreateTime datetime null,
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null,
)
go

--������־��
use RoleMenuControllerBase
go
create table [SystemOperationLog]
(
LogID varchar(50) primary key not null,
--������������
OperationName varchar(500) null,
--·��URL
ActionUrl varchar(500) null,
--����
Parameter varchar(Max) null,
--�Ƿ�ɹ�
IsSuccess bit null,
--ʧ��Ե��
ErrorMsg varchar(1000) null,
--������Դ
IPAddress varchar(30) null,
--����ʱ��
CreateTime datetime null,
--������
CreateBy varchar(50) null,
LastUpdateTime datetime null,
LastUpdateBy varchar(50) null,
)
go