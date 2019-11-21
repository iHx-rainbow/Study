# iHx

## Love Hx.

### 2019.11.08
#### Windows 10 安全中心删除历史记录  
C:\ProgramData\Microsoft\Windows Defender\Scans\History 文件夹下删除文件  
无法删除的话 命令行管理员模式运行
```
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /d 1 /t REG_DWORD /f
```
然后重启后删除 并执行
```
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" /v "DisableAntiSpyware" /d 0 /t REG_DWORD /f
```
重启后即可

#### Pandownload 扩展脚本下载地址
http://pandownload.com/scripts/download.html

### 2019.10.18

#### Ubuntu ssh : connect to host localhost port 22:Connection refused

造成这个错误的原因可能是ssh-server未安装或者未启动。ubuntu 11.10 默认安装openssh-client，但是没有安装server
 
运行 ps -e | grep ssh，查看是否有sshd进程

如果没有，说明server没启动，通过 
`/etc/init.d/ssh start`或者`/etc/init.d/ssh restart` 启动server进程，如果提示ssh不存在 那么就是没安装server

通过 sudo apt-get install openssh-server命令安装即可

#### 安装sbt

tar -zxvf sbt-1.1.4.tgz # 解压  
cd /usr/software/sbt/ # 进入解压目录  
vim sbt # 新建一个名字为sbt的文本，并在在文本中加入以下内容  
```
#!/bin/bash
SBT_OPTS="-Xms512M -Xmx1536M -Xss1M -XX:+CMSClassUnloadingEnabled -XX:MaxPermSize=256M"
java $SBT_OPTS -jar /usr/local/sbt/bin/sbt-launch.jar "$@"  # 注意对应路径
```
wq保存退出  
chmod u+x ./sbt # 修改sbt脚本文件权限  
sudo vim /etc/profile # 配置PATH环境变量  ~/.bashrc 也行  
在文件最后添加：  
export PATH=/usr/local/sbt/:$PATH  
wq保存退出  
source /etc/profile # 使配置文件立刻生效  


### 2019.09.22

#### 临时邮箱，接受邮箱验证

10 分钟邮箱
http://www.bccto.me/

10 分钟邮箱
https://temp-mail.org/zh/

10 分钟邮箱
https://10minutemail.net/?lang=zh-cn

10 分钟邮箱
http://10minutemail.com/10MinuteMail/index.html

60 分钟邮箱
https://www.guerrillamail.com/zh/

60 分钟邮箱
https://www.moakt.com/zh/mail

60 分钟邮箱
http://www.nowmymail.com

60 分钟邮箱
http://www.incognitomail.com/

24 小时邮箱
http://24mail.chacuo.net/

5日邮箱
http://www.yopmail.com/zh/

最多一个月
http://www.jetable.org/zh/index

时间不知
http://www.mailinator.com

#### 国内免费手机号，接受验证码

Receive SMS Online
https://www.pdflibr.com

Receive SMS Online
http://www.smszk.com/

#### 国外免费手机号，接受验证码

Receive SMS Online
https://www.receive-sms-online.info/

Receive FREE SMS Online<不太好用>
http://receivefreesms.com/

Receive SMS Online
https://www.receivesmsonline.net/

Free Online Phone<好用>
https://www.freeonlinephone.org/

Receive SMS Online for Free
https://sms-online.co

### 2019.06.23
JS阻止事件冒泡  
e.stopPropagation();  

HTML\<a>标签中href="javascript:;"  
执行一段空白的javascript语句，返回空或者false值，从而防止链接跳转。跟当前a标签无关，这段代码始终都会执行。  
类似于href="#"  


### 2019.06.21
```js
　　1）使用ajax之前先引入jquery

　　<script type="text/javascript" src="js/jquery-1.8.2.js"></script>

二，ajax常用格式
　　　　var u = $("#uUsername").val();

　　1）  $.ajax({

　　　　url : 'user/checkUname', 　   <!-- url  :请求地址 -->  
　　　　type : 'post',　　　　　　　　<!--type ：请求类型:post/get --> 
　　　　data : {　　　　　　　　　　　<!--data ：发送给服务器的数据 -->      
　　　　　　　　uUsername : u,　　　　　　  <!-- 使用自己声明的对象 -->  
　　　　　　　　uPwd : $("#pwd").val()　　　 <! -- 直接获取页面的对象 -->  
　　　　　　},
　　　　dataType : 'json',                    <!--dataType:服务器返回的数据类型 text/xml/script/html/json/jsonp -->
　　　　success: function(data){　　　<!--回调函数 -->        
　　　　　　console.log(data);             <! -- 浏览器控制台显示返回内容（建议使用） -->
　　　　　　alert(data);　　　　　　     <! -- 弹框显示返回内容 -->
　　　　　　}

　　　　});
```

### 2019.06.12
#### Eclipse保存工作空间个人配置  
下面XXX表示之前的工作空间，将下面文件夹内容在新的工作空间进行覆盖即可！  
保存字体等配置：XXX\.metadata\.plugins\org.eclipse.core.runtime
保存布局等配置：XXX\.metadata\.plugins\org.eclipse.e4.workbench

#### Eclipse设置UTF-8编码
1. 修改workspace编码  
windows->preferences->gengral->workspace  
在下面编码选择other->UTF-8应用。  
2. 修改Content Types编码  
windows->preferences->gengral->conten Types->Text(->JSP)  
Default enconding–>UTF-8–>Update这样把里面所有的文件设置为UTF-8编码)  
3. 修改web下文件的编码  
windows->preferences->web->(css files、html files、javaServer face、jsp files)  
在enconding设置为ISO 10646/Unicode(UTF-8)  
4. 修改项目（文件）的编码  
鼠标右键->preferences->Resource 找到文件的编码属性。  

#### JavaEE SSH框架 jsp页面中提交修改中文出现???  
db.properties文件中  
连接字符串后加上 ?useUnicode=true&characterEncoding=UTF-8  
jdbc.jdbcUrl=jdbc:mysql:///card?useUnicode=true&characterEncoding=UTF-8

#### Python可变、不可变类型
Python中，数值类型（int和float）、字符串str、元组tuple都是不可变类型。  
而列表list、字典dict、集合set是可变类型。  

#### 解决tomcat启动log中文乱码
1、修改apache-tomcat-9.0.21/conf/conf/logging.properties  
2、添加语句：java.util.logging.ConsoleHandler.encoding = GBK  
3、重启tomcat，查看日志数据即可

#### 一般开放原代码软件都会有两个版本发布：  
Source Distribution 和 Binary Distribution   
Source Distribution 是源代码版，你需要自己编译成可执行软件。  
Binary Distribution 是可执行版，直接可以拿来用的，他已经给你编译好的版本  

### 2019.06.10
eclipse快捷键：  
alt+shift+W -> System Explorer 在资源管理器打开当前文件

### 2019.05.07
```jsp
<form:select path="deptId">
<form:options items="${deptList}" itemLabel="name" 
</form:select>
```
itemLabel：显示  
itemValue：值  
Eclipse全局搜索：ctrl+H  

SQL server  
如果缺少"dbo."就会提示"不是可以识别的内置函数名称"的错误，dbo是databaseobject的意思。

### 2019.05.06
JeeSite  
引入不同service要用多个@Autowired

### 2019.04.30-05.05
劳动节放假

### 2019.04.29
JeeSite  
.properties文件中文用Unicode编码

### 2019.04.27-28
🤭复联4  
MCU：漫威电影宇宙

### 2019.04.26
删除Eclipse导入的epf主题的正确方式：破坏性最小的恢复方法  
删除 workspace/.metadata/.plugins/org.eclipse.core.runtime/下的2个文件。  
org.eclipse.ui.editors.prefs  
org.eclipse.wst.css.ui.prefs  
重启即可.

### 2019.04.25
刷机 BootLoader锁

### 2019.04.24
<https://github.com/openbilibili/go-common>  
前排吃瓜 学习Golang

### 2019.04.22-23
期中考试

### 2019.04.21
准备期中考试  
eclipse安装阿里代码规范

### 2019.04.20
MySQL修改数据库存储路径  
在C:\ProgramData\MySQL\MySQL Server 5.7文件夹  
my.ini是默认的配置文件。在这里我们只更改数据存储路径。不更改配置文件  
`# Path to the database root`  
`datadir=C:/ProgramData/MySQL/MySQL Server 5.7/Data`  
报错：Can't connect to MySQL server on 'localhost' (10061)  
解决：自定义的文件夹需要在安全属性里面添加network service的访问权限，不然会触发10061（2003）的错误。  
mysql在Windows下使用network service权限运行  

### 2019.04.19
GitHub中fork的代码库会有一个upstream分支  
会显示原主人对代码库的更改，可以通过merge到master或其他分支来同步更新的代码  

### 2019.04.19
Python读取文本文件过程中发现一个问题：已有记事本文件（非空），转码 UTF-8，用open打开后，在开始位置会出现 `\ufeff` 导致后续处理出错  
解决：修改打开文件编码方式，把 UTF-8 编码 改成 UTF-8-sig
```python
fo = open('test.txt', encoding='UTF-8-sig')
linelist = []
for line in fo:
    linelist.append(line.strip())
print(linelist)
```

### 2019.04.18
[JeeSite](https://jeesite.gitee.io/ '百度一下，你就知道')
 是一个 Java EE 企业级快速开发平台，基于经典技术组合（Spring Boot、Spring MVC、Apache Shiro、MyBatis、Beetl、Bootstrap、AdminLTE）在线代码生成工具。

### 2019.04.15-17
担心😨

### 2019.04.14
GitHub  
Ant-Forest-autoscript  
线程、监听器、bounds、布局分析、forEach、indexOf

### 2019.04.12-13
扇贝单词

### 2019.04.11
决策树算法  
决策森林

### 2019.04.10
__T-SQL触发器__  
For触发器与After触发器是一个作用，所以触发器分为After触发器，与Instead of触发器。  
After触发器是在操作成功后，所采取的一些动作。  
而对于instead of触发器，真正起作用的是触发器里面的动作。  

```sql
create trigger trigger_name
on { table_name|view_name }
{ for|After|Instead of }
[ insert,update,delete ]
as
begin
    sql_statement
    rollback transaction    --回滚，阻止触发触发器的操作执行
end
```
rollback transcation：在事务中出错或用户决定取消事务，数据回滚到最初始状态。  
commit transcation：标志一个成功的隐性事务或显性事务的结束，提交事务并永久保存在数据库中。  

```sql
--sql_statement
DECLARE @title nchar(100)
select @title = title from deleted
delete FROM StarsIn where movieTitle = @title
```
SQL Server为每个触发器都创建了两个专用表：Inserted表和Deleted表。  
这两个表由系统来维护，它们存在于内存中而不是在数据库中。这两个表的结构总是与被该触发器作用的表的结构相同。触发器执行完成后，与该触发器相关的这两个表也被删除。  
Deleted表存放由于执行Delete或Update语句，而要从表中删除的所有行。  
Inserted表存放由于执行Insert或Update语句，而要向表中插入的所有行。  

在删除（delete）数据的时候，可以假定数据库将要删除的数据放到一个deleted临时表中，我们可以向读取普通的表一样，select 字段 from deleted  
而插入（insert）的时候道理一样，只不过是把要插入的数据放在inserted表中。  
更新（update）操作可以认为是执行了两个操作，先把那一行记录delete掉，然后再insert，这样update操作实际上就对deleted表和inserted表的操作，所以不会有updated表了。  

有的时候两个表是主外键关系，想删除主表数据的同时把子表相关的数据也删除，这个时候如果用触发器就没有效果了，因为这个触发器是在你删除表后才触发的，这个时候直接终止，提示“有主外键关系，不能删除等”，所有这样的删除触发器是没有效果的。

### 2019.04.09
标准化是按比例缩放，不改变原始数据的分布。
归一化则是在压缩，对不同特征维度的伸缩变换的目的是使各个特征维度对目标函数的影响权重是一致的，容易受到极大值极小值的影响。  

如果对输出结果范围有要求，用归一化。  
如果数据较为稳定，不存在极端的最大最小值，用归一化。  
如果数据存在异常值和较多噪音，用标准化，可以间接通过中心化避免异常值和极端值的影响。  

### 2019.04.08
```python
csv = open(r'大数据基础\data\food_info.csv')
food_info = pandas.read_csv(csv)    # read_csv方法不能使用有中文的参数
```

### 2019.04.05-07
放假三天😄

### 2019.04.04
K近邻算法  
标准化 方差为1  
归一化 取值区间(-1,1)  

### 2019.04.03
__SQL__  
where和having的不同：where是对原始数据进行筛选，having是对分组时候的数据进行筛选  

查询关键字家族成员
```sql
select top/distinct 字段列表
from 表列表 where 筛选条件
group by 分组字段列表
having 对分组之后得到的结果集筛选
order by 排序字段列表
```
执行顺序：  
>1.from  
>2.where  
>3.group by  
>4.having  
>5.根据select关键之后的要显示的字段，进行结果集显示  
>6.order by对最终结果集进行排序  
>7.top/dictinct

__Python__  
VS code默认Python调试目录在${workspaceFolder}，因此需要打开同目录下文件需要使用相对路径。  
Jupyter Notebook则是默认以文件同目录调试  

写相对路径时报错：EOL while scanning string literal  
扫描字符串文字时报错
在写文件时一定要小心 \\ ，因为这个字符可以和多个字符表示不同的意思，比如'\b','\u','\t','\n'而这里出错的原因就是因为和后面的 ' 混合在一起了。  

解决办法：
```python
path=r"Python程序设计\实验二"
fo = open(path+r"\Text.txt", "r")
```
或者
```python
path=r"Python程序设计\实验二\\"
fo = open(path+"Text.txt", "r")
```

### 2019.04.02
restart  
重新开始早起

### 2019.04.01
JavaEE

### 2019.03.31
514小聚

### 2019.03.30
[中国研究生招生信息网](https://yz.chsi.cn/)

### 2019.03.29
[comment]: # (This is a comment, it will not be included)

return、break和continue  
这三个关键字有一个共同点，那就是读能让后面的语句不执行，不同的地方就是挑的距离不一样。

return很强大，如果一个函数中有一个return，并且执行了，那么这个函数就完了。return 表示从被调函数返回到主调函数继续执行，返回时可附带一个返回值，由return后面的参数指定。 return通常是必要的，因为函数调用的时候计算结果通常是通过返回值带出的。 如果函数执行不需要返回计算结果，也经常需要返回一个状态码来表示函数执行的顺利与否（-1和0就是最常用的状态码），主调函数可以通过返回值判断被调函数的执行情况。

break稍微弱小一点，它一般用在循环语句中，用于结束循环，从当前循环外面开始执行,忽略循环体中任何其他语句和循环条件测试。他只能跳出一层循环，如果你的循环是嵌套循环，那么你需要按照你嵌套的层次，逐步使用break来跳出。

continue和break类似，都是结束循环，不过，没有break强大，他只能结束本次循环，也就是说，他并不跳出循环,而是继续往下判断循环条件执行语句.他只能结束循环中的一次过程,但不能终止循环继续进行。

```c
//C语言获取输入字符串两种方法
scanf("%s",str);    //空格不会被读取
gets(str);          //空格也会被读取，以换行为结束
//C语言遍历字符串，strlen获取字符串长度
#include <string.h>
for (int i = 0; i < strlen(str); i++)
printf("%c\n",str[i]);
//C语言判断字符相等
c1==c2
//C语言strcmp函数判断字符串相等
char str_1[] = "abc"; 
char str_2[] = "abc";
if (strcmp(str_1, str_2) == 0)
printf("str_1 is equal to str_2. \n");
//也可以忽略大小写来比较，使用函数stricmp中间的i意思是ignore case sensitive
//还可以指定长度比较，strncmp，如：
char str_1[]="abc",str_2[]="abcdefg";
if(strncmp(s1,s2,3)==0) printf("first 3 characters are same");
```

### 2019.03.28
线性回归调参  
标准化、归一化、添加惩罚系数、计算模型精确度

### 2019.03.27
调和级数是发散的  
形如1/1+1/2+1/3+…+1/n+…的级数  
1000项7.485  

### 2019.03.26
[(´ . .̫ . `)]: # (以为自己是个难以接近的人吧，想要改变一下说话方式。傻乎乎一点，话多一点，幼稚也好，挨骂也好。现在发现好像，你并不喜欢。Though，那还是原来那样吧。)
[(´ . .̫ . `)]


### 2019.03.25
[微积分的本质](https://www.bilibili.com/video/av24325548)

### 2019.03.24
```
  _   _    _        
 (_) | |  | |       
  _  | |__| | __  __
 | | |  __  | \ \/ /
 | | | |  | |  >  < 
 |_| |_|  |_| /_/\_\
```

_Always give maximum effort, don't give yourself the excuse that you're "Saving your energy for the real thing."  
Listen to what Special Forces Lieutenant Colonel Mike Kenny has to say on this:  
"In Army parlance they say, 'train like you fight.' Don't screw around and say, "O.K., when it's for real then we'll really ramp up." No, you need to do that now. You need to train as hard and as realistic as possible, because this notion that when it's for real and the stakes are high, that's when we'll really turn it on and rise to the occasion... that's not what happens. You will not rise to the occasion. You will sink to the lowest level of your training. It's the truth.”  
We tend to say to ourselves: I'm just preparing, I shouldn't give it my best. I know I can do better when the stake are high. I don't have to try too hard while I'm in school, but when I own a startup I know I'll work harder.  
In reality, you're just cultivating a habit of making excuses and not putting forth 100% effort.  
If you cultivate the idea of just getting by, then when the stakes are high you will be used to giving just 20% effort, and it will be useless to tell yourself "I need to change completely, right now."_

### 2019.03.23
_Are you too tired?  
Didn't get enough sleep?  
Don't have enough energy?  
Don't have enough time?   
Is that what's stopping you right now?  
Don't have enough money?  
Is that the thing?  
Or is the thing that's stopping you?  
you?_  

_Excuses sound best  
to the person who's making them up.  
Stop felling sorry for youself.  
Get off the pity ppotty  
telling everybody you're sad  
and sob stories, trying to get people  
to show uo to your pity parties  
and your pity parades.  
If you ever see me in a rolls royce  
a 6 or 7 star hotel  
living my life to the fullest  
don't get jealous of me.  
because I worked my ass off to get it.  
Nobody handed me nothing. 
Wake your ass up.  
Awaken the beast  
inside.  
It's game on.  
It's go season.  
It's time for you to take advantage of the access  
and the resources that you have  
in your country and your community.  
You got a problem with your life?  
You got a problem with your enviroment?  
Do some thing about it.
If you want it  
go get it._  

_Recognise  
the excuses are not  
valid.  
Thry're conjured up  
They're fabricated  
they're lies.  
And how do you stop the lies?  
You stop the lies with the truth.  
And the truth is  
you have time  
you have the skill  
you have the knowledge  
and the support  
and the willpower  
and the discipline  
to get it done._  

_The fruit of everything good in life  
begins with a challenge.  
Everything is uphill that's worthwhile.  
And it's not going to come to you  
and it's not going to fall in yout lap  
and it's not going to be something that, oh my gosh  
it just was so simple  
it's always going to be difficult._  

_If you want it, you gotta go get it._  

_This is yout chance.  
This is your shot.  
This is your moment.  
This is your time.  
This is your place.  
This is your opportunity._  

_This is my time  
this is my moment
tomorrow, tomorrow, tomorrow  
ain't no such thing as tomorrow  
we only got today.  
It's your dream  
if you're going to have it  
get your butt up and make it happen  
if you're going to have it  
rise and grind._  

_You still got work to do  
stay on that basketball court  
stay on that football field  
it's grind season homie._

### 2019.03.22
Acoustic Version：常用意思是“不插电”，即表示不含电子合成音乐，而是由纯乐队演奏的版本，非MIDI合成音乐。  
Instrumental Version：伴奏版，纯背景音乐。  

可以把 .ipynb 文件对应的下载链接复制到 <https://nbviewer.jupyter.org> 中查看。  

### 2019.03.21
梯度下降求解逻辑回归  
线性回归、逻辑回归  
在线性回归模型中，输出一般是连续的， 对于每一个输入的x，都有一个对应的输出y。因此模型的定义域和值域都可以是无穷。  
但是对于逻辑回归，输入可以是连续的[-∞, +∞]，但输出一般是离散的，通常只有两个值{0, 1}。  
所以线性回归更适合用来预测数据，分类问题则需要逻辑回归来解决。  
线性回归用来预测，逻辑回归用来分类。  
线性回归是拟合函数，逻辑回归是预测函数。  
线性回归的参数计算方法是最小二乘法，逻辑回归的参数计算方法是梯度下降。  
拟合函数结果分三种：合适拟合、欠拟合、过拟合。

### 2019.03.20
#### Markdown
#### 标题
>\# 一级标题  
>\## 二级标题  
>\### 三级标题  
>\#### 四级标题  
>\##### 五级标题  
>\###### 六级标题  
>
>一级标题  
>\===  
>二级标题  
>\---

#### 列表
>- 无序列表
>* 无序列表
>+ 无序列表
>1. 有序列表
>2. 数字后面的点只能是英文点
>5. 有序列表的序号是根据第一行列表的数字顺序来的

#### 引用
>这是一段引用文字
>>二级引用
>
#### 分割线
>***
>---
>___

#### 链接
>[Baidu]www.baidu.com '百度一下，你就知道')

>[link]:www.baidu.com "百度一下，你就知道"

>[Baidu][link]

>链接 [link]

><http://example.com>

#### 图片
>![图片前面要写一个！](https://www.baidu.com/img/baidu_jgylogo3.gif)

>[pic]:https://www.baidu.com/img/baidu_jgylogo3.gif

>这是一张图![pic]

#### 代码段
>`这是一行代码`
>```java
>//这是一段代码
>int a;
>```

#### 文本样式
>*字体倾斜*
>_字体倾斜_  
>**字体加粗**
>__字体加粗__  
>~~字体删除~~

#### 表格
>| 商品 | 价格 | 数量 |
>| --- | ---: | :--: |
>| 手机 | \$460 | 5   |
>| 插头 |  \$10 | 12  |
>| 铅笔 |   \$1 | 234 |
>: 是对齐方向

#### 转义符
>\\  
>\---

### 2019.03.19
tasks.json  
配置gcc编译 控制生成exe路径  
`"args": ["-g","${file}","-o","${fileDirname}/${fileBasenameNoExtension}.exe"]`  
最后一个参数对应生成exe路径，与launch.json的program项对应  
`"${fileDirname}/${fileBasenameNoExtension}.exe"`  
与`"${fileDirname}\\${fileBasenameNoExtension}.exe"`作用相同  

>${workspaceFolder}:表示当前workspace文件夹路径，也即C:\Users\admin\Desktop\test  
>${workspaceRootFolderName}:表示workspace的文件夹名，也即test  
>${file}:文件自身的绝对路径，也即C:\Users\admin\Desktop\test\.vscode\launch.json  
>${relativeFile}:文件在workspace中的路径，也即.vscode\launch.json  
>${fileBasenameNoExtension}:当前文件的文件名，不带后缀，也即launch  
>${fileBasename}:当前文件的文件名，launch.json  
>${fileDirname}:文件所在的文件夹路径，也即C:\Users\admin\Desktop\test\.vscode  
>${fileExtname}:当前文件的后缀，也即.json  
>${lineNumber}:当前文件光标所在的行号  
>${env:PATH}:系统中的环境变量  
>${workspaceRoot}:当前打开的文件夹的绝对路径+文件夹的名字  

launch.json
```json
"program": "${workspaceRoot}\\a.exe",   // 将要进行调试的程序的路径
"args": [],                             // 程序调试时传递给程序的命令行参数，一般设为空即可 
"cwd": "${workspaceRoot}",              // 调试程序时的工作目录，一般为${workspaceRoot}即代码所在目录
```

```c
//去除linklist中的重复项方法
//第一种调试出错 有空找bug
linklist p = head;
while (p != NULL)
{
    linklist q = p->next;
    while (q != NULL)
    {
        if (q->data == p->data)
        {
            p->next = q->next;
            free(q);    //free的问题
        }
        else
        {
            q = q->next;
        }
    }
    p = p->next;
}

//第二种调试正常 while条件还没懂
linklist p = head;
while (p != NULL)
{
    linklist q = head;
    while (q->next != p && q->next != NULL)
    {
        if (q->next->data == p->data)
        {
            q->next = q->next->next;
        }
        else
        {
            q = q->next;
        }
    }
    p = p->next;
}
```

python同时import两个包的时候可能会导致输出两次
```python
import pandas
import numpy
```
