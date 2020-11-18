# iHx

## Love Hx.
### 2020.10.30
#### hexo
hexo init 初始化
hexo sever 开启服务
hexo clean 清除静态文件和缓存文件
hexo generate 生成静态文件
hexo deploy 部署网站 hexo d -g 部署之前预先生成静态文件
#### npm换源
配置文件
npm config get userconfig
C:\Users\Admin\.npmrc 
registry=https://registry.npm.taobao.org

直接命令改
npm config set registry https://registry.npm.taobao.org
npm config get registry
还原
npm config set registry https://registry.npmjs.org/

### 2020.10.23
#### you-get使用
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple you-get
pip install -i https://pypi.tuna.tsinghua.edu.cn/simple --upgrade you-get
you-get -i https://www.youtube.com/watch?v=yKKwyLdhwbU

### 2020.08.20
#### JS中==和===的区别
===：称为等同符，当两边值的类型相同时，直接比较值，若类型不相同，直接返回false  
==：称为等值符，当等号两边的类型相同时，直接比较值是否相等，若不相同，则先转化为类型相同的值，再进行比较

### 2020.08.11
#### PHP empty、isset、isnull的区别
https://www.cnblogs.com/zdz8207/p/3789805.html

### 2020.08.06
#### postgre中inet字段设置默认值报错
`postgre inet ERROR:  syntax error at or near ".0"`
```sql
ALTER TABLE "public"."ztc_member_ip_assignment" 
  ALTER COLUMN "address" SET DEFAULT '127.0.0.1';
```
Navicat里用`'127.0.0.1'::inet`
#### js获取PHP中$this->assign()
`let rules= {$rules};`  
注意花括号内不要有空格，如果$param 是字符串，则需要加引号，json和int都可不加

#### jq设置textarea内容
`$("#txtArea").val('');`

### 2020.08.04
#### tinyMediaManager刮削电影信息失败的问题
HOST问题，导致无法访问  
[测试链接](https://api.themoviedb.org/3/configuration) 如有正常返回JSON则正常  
解决方式：  
HOST 添加 `13.226.238.82 api.themoviedb.org`  
IP使用 ipaddress 检测 themoviedb.org 的实际地址


### 2020.07.17
#### 引导修复命令行
BCDBoot BCDEdit
https://docs.microsoft.com/zh-cn/windows-hardware/manufacture/desktop/windows-deployment-command-line-tools-reference

### 2020.06.05

#### 关闭Windows系统混合睡眠、休眠、快速启动功能

管理员权限启动命令提示符`powercfg /h off`  
启用则为`powercfg /h on`

#### Windows系统文件修复
管理员权限启动命令提示符`sfc /scannow`扫描系统文件完整性  
然后执行`DISM /Online /Cleanup-Image /RestoreHealth`联网还原系统映像文件

### 2020.05.30

#### CCleaner

CCleaner 专业版下载 http://www.piriform.com/ccleaner/download/professional  

CCleaner 便携版下载 http://www.piriform.com/ccleaner/download/portable/downloadfile

1.添加 host 127.0.0.1 license.piriform.com

2.输入 名称 和 许可证密钥

 | 名称 | 许可证密钥 | 
 | :---: | :---: | 
 | Any Name | C2YW-6WRJ-5QTZ-IJYE-2ZPC | 
 | Any Name | C2YW-IAHG-ZU62-INZQ-WZPC | 
 | Any Name | C2YW-2BAM-ADC2-89RV-YZPC | 
 | Any Name | C2YW-XFCX-ABIG-GZD4-8ZPC | 
 | Any Name | C2YW-XK32-GBVV-N3BH-2ZPC | 
 | Any Name | C2YW-JKW5-KK79-XHR2-4ZPC | 
 | Any Name | C2YW-QTRT-ZVCG-PQDK-CZPC | 
 | Any Name | C2YW-GP33-TPIU-BGM8-AZPC | 

### 2020.05.26

#### 在指定目录下打开cmd

1. 在文件资源管理器地址栏直接打上“cmd”后回车
2. shift+右键菜单中有

### 2020.04.18

#### host文件修改与刷新

1、window环境：

hosts文件位置：C:\windows\system32\drivers\etc

刷新方式：  
ctrl+r，输入CMD，回车

在命令行执行:  
`ipconfig /flushdns` //清除DNS缓存内容  
`ipconfig /displaydns` //显示DNS缓存内容

2、linux环境  
文件位置：/etc/hosts  
刷新命令：systemctl restart nscd

### 2020.04.17

#### [水平居中布局与滚动条跳动的千年难题](https://www.zhangxinxu.com/wordpress/2015/01/css-page-scrollbar-toggle-center-no-jumping/)

#### Chrome中开启Overlay Scrollbars隐藏式滚动条功能方式

在chrome://flags/#overlay-scrollbars开启 这个功能开始于2012年 **Chrome 79后失效**

现在如果还想开启的话，可以在快捷方式目标后加 chrome 的运行参数：

`--enable-features=OverlayScrollbar --enable-prefer-compositing-to-lcd-text`

#### 为Chrome多账户添加单独的快捷方式

Chrome的多账户功能非常好用，每个账户都有自己的独立的收藏夹、个人设置等。但是，当你要使用的账户不是默认账户时，必须经过一个切换的操作。本文将简单的介绍一个如何各账户添加快捷方式，从而实现直接登陆到特定的账户中。

原理： Google会在用户数据文件夹下为每一个用户建立一个个人数据文件夹，只要在启动时加入参数 --profile-directory="XXX"（xxx为你的个人数据文件夹名称）即可。

现在的问题是，我们如何知道个人数据文件夹名称呢？答案很简单，通过 chrome://version/ 命令查看即可。

"个人资料"路径一栏既是，这里我用的是默认用户，个人文件夹名称为Default，启动参数为：--profile-directory="Default"。

### 2020.01.07

跳龙门 群发 群聊互怼  
有始有终  
应对的环境  
用户的操作  
return只跳出当前函数，在子函数里return父函数会导致多重循环

#### JS调用函数内部变量和调用子函数有以下两种方法：

1、添加return返回值
```js
var a = 5;
function xxx(){
    var a = 10;
    return a;
}
var b = xxx();
```

2、闭包
```js
var a = 5;
function xxx(){
    var a = 0;
    var ten = function(){
        a = 10;
        return a;
    }
    return ten;
}
var b = xxx();
b();
```

### 2020.01.01

https://infiniture.cn/2019/09/30/JavaScript%E5%B8%B8%E7%94%A8%E8%AE%BE%E8%AE%A1%E6%A8%A1%E5%BC%8F
https://infiniture.cn/2019/09/30/JavaScript常用设计模式

https://infiniture.cn/2019/09/29/%E6%B7%B1%E5%85%A5%E7%90%86%E8%A7%A3JavaScript%E5%87%BD%E6%95%B0
https://infiniture.cn/2019/09/29/深入理解JavaScript函数

### 2019.12.29

#### Anaconda换国内源

Anaconda 是一个用于科学计算的 Python 发行版，支持 Linux, Mac, Windows, 包含了众多流行的科学计算、数据分析的 Python 包。

Anaconda 安装包可以到 https://mirrors.tuna.tsinghua.edu.cn/anaconda/archive/ 下载。

TUNA 还提供了 Anaconda 仓库与第三方源（conda-forge、msys2、pytorch等，查看完整列表）的镜像，各系统都可以通过修改用户目录下的 .condarc 文件:

```
channels:
  - defaults
show_channel_urls: true
default_channels:
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free
  - https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/r
custom_channels:
  conda-forge: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  msys2: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  bioconda: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  menpo: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  pytorch: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
  simpleitk: https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud
```

即可添加 Anaconda Python 免费仓库。Windows 用户无法直接创建名为 .condarc 的文件，可先执行 `conda config --set show_channel_urls yes` 生成该文件之后再修改。

运行 conda create -n myenv numpy 测试一下吧。

### 2019.12.24

修改删除网络名称：网络1 网络2 网络3  
`win+r regedit`进入注册表编辑器  
`计算机\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\NetworkList\Profiles`  
多个Microsoft Wi-Fi Direct Virtual Adapter的问题还需要修改  
`计算机\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Network`  
`计算机\HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\{5d624f94-8850-40c3-a3fa-a4fd2080baf3}\vwifimp_wfd`
删除或修改对应键值即可

### 2019.12.23

#### 微信内测版

[64 位机型](https://support.weixin.qq.com/cgi-bin/mmsupport-bin/readtemplate?t=page/android_exp__index&clientversion=&from=singlemessage&exportkey=AStDx7QpwGrkQXcMP7sO1dE%3D&pass_ticket=l%2FN5O2HtGzHeHemeg4%2FGRFGJVYT0mUHt5dcaziOzQ1LCj2vWZVdZC09rVXu96%2FNO&wechat_real_lang=zh_CN)

[32 位机型](https://support.weixin.qq.com/cgi-bin/mmsupport-bin/readtemplate?t=page/android_exp__index&clientversion&from=singlemessage&exportkey=Adm2wfbrtg5qAAYoX4J%2Fd8Y%3D&pass_ticket=ZQ4U1OVdn5UR%2FbcrYiLBCNIcUK1cwkLQOGdDgAVtDKK1PPb%2BvBa2TPyKSrLC37GR&wechat_real_lang=zh_CN)

#### 微信禁用X5浏览器内核

1. 打开任意聊天窗口（建议文件传输助手）
2. 发送链接 ​debugmm.qq.com/?forcex5=false​
3. 点击刚刚发送的链接，此时微信国内版内置的 X5 浏览器内核将被强制禁用

禁用 X5 内核后微信将调用系统 Webview 进行网页加载，而系统默认的 Webview 是完美适配暗色主题的。公众号文章页面没有暗色主题覆盖，也可以通过此方法解决。

### 2019.12.16

#### 固态硬盘颗粒 SLC、MLC、TLC、QLC

SLC：每个Cell单元存储1bit信息，也就是只有0、1两种电压变化，结构简单，电压控制也快速，反映出来的特点就是寿命长，性能强，P/E寿命在1万到10万次之间，但缺点就是容量低而成本高，毕竟一个Cell单元只能存储1bit信息。

MLC：每个cell单元存储2bit信息，需要更复杂的电压控制，有00,01,10,11四种变化，这也意味着写入性能、可靠性能降低了。其P/E寿命根据不同制程在3000-5000次不等。

TLC：每个cell单元存储3bit信息，电压从000到001有8种变化，容量比MLC再次增加1/3，成本更低，但是架构更复杂，P/E编程时间长，写入速度慢，P/E寿命也降至1000-3000次，部分情况会更低。寿命短只是相对而言的，通常来讲，经过重度测试的TLC颗粒正常使用5年以上是没有问题的。

QLC：或者可以叫4bit MLC，电压有16种变化，但是容量能增加33%，就是写入性能、P/E寿命与TLC相比会进一步降低。具体的性能测试上，美光有做过实验。读取速度方面，SATA接口中的二者都可以达到540MB/S，QLC表现差在写入速度上，因为其P/E编程时间就比MLC、TLC更长，速度更慢，连续写入速度从520MB/s降至360MB/s，随机性能更是从9500 IOPS降至5000 IOPS，损失将近一半。

SLC是最好的，寿命最长速度也快，这是已经得到公认的，但是缺点也是十分明显，价格十分昂贵且容量太小，基本已经退出消费级市场，所以现在基本见不到SLC颗粒的固态硬盘；

MLC就相当于把SLC的容量扩大了一倍，也就是说相当于在SLC的基础上，把每个存储单元分成两半来使用，这样做的好处显而易见，容量更大了普遍能达到256GB。虽然容量变大了不少，但速度变慢寿命也缩减了不少，并且也远不能满足现在日益增大的使用需求；

所以TLC应运而生，容量再次增长，能做到512GB以上现在量产的产品最高达到了2TB，但速度和寿命不如前面两位前辈，这也就导致有些玩家因为寿命问题不屑于购买TLC，但其实根据现在的使用习惯再结合以TLC颗粒的基本素质，我们完全不用担心TLC颗粒的固态硬盘使用寿命问题；

QLC虽然可靠性会有降低，但是随着NAND技术的进步，P/E寿命是会提升的，之前TLC已经得到验证，相信QLC也会如此。QLC若是大规模量产，那SSD的写入速度将可达到200-300MB/s左右，而且5000+的随机写入性能依然高于HDD硬盘，容量也可达到10-100TB的数量级。总的来说，QLC固态硬盘并不糟糕，其性价比还是不错的。  

#### HDD 机械硬盘 PMR与SMR区别  

1、缓存不同：PMR的缓存是64MB或者32MB，转速可达7200转。SMR都是128MB或者250MB大缓存，转速最高5400转。

2、设计原理不同：  
垂直磁性记录 (PMR)，写入磁道紧密并列，但不相重叠。一般而言，写入磁头会比读取磁头要大。  
叠瓦式磁性记录 (SMR)，SMR 可视为 PMR 技术的一种延伸。磁道会如瓦片般堆叠在另一磁道的部分面积上，借此达到增加磁录密度的目的。读取磁头仍可从磁道上未被覆盖的部分来读取数据。

3、使用性不同：由于内部结构不同，PMR读取数据容错率高一点，并不会影响速度，而SMR 硬盘长时间进行密集的覆盖任务，不注意整理磁道的话。时间长了就会越用越慢。

4、单盘容量不同：SMR是为了追求硬盘容量而产生的方案，所以SMR硬盘的容量一般是比较大的。通常来说，3.5寸硬盘单盘大于1TB，或者2.5寸硬盘单盘大于500GB的，就有可能是SMR硬盘了。

相较于PMR的硬盘，SMR硬盘是不适合用来当做系统盘或者需要频繁读写的硬盘来用的，它更适合当做仓储盘来使用，用来备份、留存一些数据。尽管现在硬盘的整体寿命已经有了很大的提升，但是当你要选购硬盘作为计算机主力硬盘时，还是应该尽可能避免买到SMR硬盘。

日立HTS541010A9E680  
接口类型    SATA 6Gb/s  
容量    1TB  
缓存    8MB  
转速    5400RPM  
单碟容量    500GB  
目测为PMR

### 2019.12.15

`->　　<-空白字符`

### 2019.12.01

此篇整理了最完整的--Android逆向学习线路知识体系。希望给迷糊的入门者指出一个明确的方向。
建议先正向开发几年再搞逆向吧……

学习Android逆向之前，必备条件。【必备】
从事3-5年真实的Android开发工作，能够跟踪了解最新Android开发技术；
- 熟悉Android NDK开发和JNI技术，熟悉Log原理。有FrameWork开发经验；
- 熟悉Android虚拟机机制，打包原理，熟练使用C/C++，Java，kotlin，dart等Android开发常用语言；
- 了解ARM、Smali汇编语言，熟悉IPC原理，能够熟练搭建IPC框架；
- 熟悉Android/Linux底层框架，熟悉系统的工作原理和细节；
- 熟练使用Fiddler和Charles抓包工具进行抓包；
- 熟悉Python基础语法，并能写简单的脚本和爬虫。

第一阶段：  
Android 基础知识回顾：
- 回顾Android 开发编程，深入理解Android系统原理和层次结构，深入分析Handler源码和原理；
- 回顾Java，C/C++，Kotlin 在Android开发中必用的语言，了解几种语言的混淆后的特性；
- 回顾Android IPC和JNI的底层原理和热更新技术回顾Native开发要点，使用C++结合NDK完成Android Native开发；
- 回顾Android开发中常用的 AMS、PMS、WMS原理；
- 回顾Android开发中 Google的MVVM框架：DataBinding+LiveData+ViewModel；
- 回顾Android开发中 Google的MVP框架：Dagger2；
- 回顾Android开发网络架构：Okhttp3+RxJava2+Retrofit2+Rxdownload4+Rxcache+Glide；

Android 逆向基础知识：
- 熟悉Android逆向工具的使用，如apktool，IDA，dex2jar，JEB，Androidkiller，Androguard等；
- 深入分析APK中包含的各文件格式，分析Android系统源码中解析APK的相关代码；学习和熟悉smali语言（重点）；
- 仿微信写一个APP，并利用工具逆向出apk内的代码，并对比源码分析。


入门知识总结和实战（逆向入门）：
- 知识梳理，常用工具安装，adb命令与Linux常用命令，常见登录逻辑分析；
- 分析ELF可执行程序，调式ELF可执行程序；ARM汇编与寄存器，ARM反汇编速成，ARM指令机器码，常用ARM指令集；
- 反编译ELF文件与ObjDump，ELF文件解析与readelf，ELF文件解析与010Editor，深入分析ELF文件结构；IDA静态分析，IDA动态调式；
- 简易计算器实现及分析（练习）；
- 字符串加密与解密，冒泡排序算法分析；
- 关键android_server文件检测，IDA调试端口检测；
- ELF可执行程序加载so库，DEX解析与dexDump，DEX解析与010Editor；
- 实现自己的Dex解析工具与GDA（练习）；
- Androidkiller动态调试smali代码插件，AS+smalidea调式smali代码；
- Log注入实现免注册，如何定位关键代码，去除java层签名验证，去除广告和弹窗（实战）；
- 推荐阅读《AndroidXXXXXX……》随便找本系统源码讲解的书看看吧；

Android 基础算法和安全协议：
- 密码学，对称加密算法，非对称加密算法，散列函数；
- 数字签名，数字证书，SSL证书检测，协议与安全协议；
- 了解服务器端与客户端通信协议分析；
- 使用Charles抓登录封包和验证码，协议构造与Java层MD5算法，动态调式smali代码与sign字段；
- 协议构造类与SO层DESCBC算法，协议关键字段SIGN与SO层MD5算法，动态调试协议字段，动态调式协议关键字段SIGN；
- 协议关键字段pwad和sign，动态调式协议字段拼接与MD5加密，分析so层OpenSSLSHA1算法；
- 封包加密与反编译失败，使用方法跟踪分析加密；java层逆向分析，分析so层TEA算法；
- 练习：抓取验证码和登录封包，分析协议关键字段与RSA算法，证书与RSA原理及源码分析；
- 对称加密AES、PBE与CRC算法，数字签名RSA、DSA算法；

第二阶段：  
Android 逆向进阶学习：
- Android 系统结构深入分析，自定义 ClassLoader，自定义注解和元注解原理分析；
- 了解AndroidNDK，静态注册，动态注册，SO加载分析，
- App保护策略去除霸哥磁力搜素APK签名验证，一键去除签名验证，静态代{过}{滤}理，动态代{过}{滤}理Hook Activity启动函数，
- Hook签名验证函数介绍xposed框架：Xposed框架：
- 绕过验证码注册Xposed框架：
- 登陆劫持Xposed框架：
- 篡改IMEI信息介绍CydiaSubstrate框架：
- Java层Hook：
- 篡改系统文字颜色Java层Hook：
- 修改方法返回值绕过登录Java层Hook：
- 篡改游戏金币Java层Hook：
- 篡改主机名和端口号
- Native层Hook：
- ADBI框架：ELFARMHOOK框架内存抠取Dex文件过反调试技巧C++游戏
- 逆向练习：动态调试2048纯算法游戏，Zygote+Hook使2048游戏秒过关；

Android NDK与JNI全面剖析：
- so动态库的介绍JNI动态注册和静态注册NDK Build 工具介绍
- Cmake工具介绍JNI.h
- 介绍Android 源码工具和技巧
- ijkplayer 源码分析及原理讲解
- AndFix 源码分析及原理讲解
- Java调用so库的动态流程解析
- NDK实现增量更新
- 案例NDK实现换脸等工业级图像识别案例NDK文件实现拆分和加密处理

Android 加固防护和脱壳简介：
- DEX文件、ODEX文件与OAT文件；
- XML文件与ARSC文件；
- 分析App加固的产生及背景，最初加固方式，加固技术的发展；
- HOOK制作脱壳机，定制自己的脱壳系统；
- DexClassLoader动态加载分析，DEX自解析重构技术；
- 三代梆梆加固原理分析；爱加密加固原理分析；
- 360加固与脱壳机，360加固VM与置换表；
- 辅助脱壳机，IDA动态调式脱爱加密壳；
- IDA动态调式脱360壳，IDA动态调式脱SO壳；
- 脱360壳-dex2oat，脱360壳-drizzleDumper；
- 百度加固DD大法，百度加固VM与置换表；
- 阿里加固与脱壳机，腾讯乐固；
- ARSC资源保护与注解；
- 脱壳神器ZjDroid：
- 捕鱼达3加固技术总结；

Android 脱壳与反脱壳分析：
- Android脱壳中的思路，技巧elf结构详解：
- 动态运行库so文件的文件组成结构elf结构详解：
- 加载so文件的流程elf文件变形与保护，elf文件修复分析，so加壳文件修复常用调试检测方法与过检测方法
- Android源码定制添加反反调试机制Android dvm 脱壳，Dalvik dex处理分析IDA脱壳脚本编写，Odex修复方法，
- IDAOdex修复脚本编写

进阶知识总结和企业级实战（逆向进阶）：
- 病毒分析与脱壳学习，用Ransomware类和木马类进行学习；
- 手动脱壳《王者X耀》练习；从0开始打造自己的破解代码库；

第三阶段：  
Android 漏洞分析和挖掘：
- 学习常见的漏洞类型和原理。例如堆溢出，栈溢出，UAF等，可以参考漏洞分析相关书籍；
- 关注Android Security Bulletin，根据提供的diff分析漏洞成因；
- 学习并调试以前的经典漏洞；
- 学习漏洞挖掘fuzzing思路，参考书籍推荐《Android安全XXXX》；
- 病毒分析与病毒脱壳实战；

Android 虚拟机技术、系统源码分析、刷机机制介绍、制作ROM刷机包：
- ASP代码注入式写法；
- Android 免root进行hook；
- Android虚拟机原理，Android多开原理讲解；
- 在apk内部写一个虚拟机，在apk内安装apk；
- 虚拟机适配Android 10和64位系统；
- 从0开始开发自己的虚拟机库；
- 最完善的刷机工具 ：魔趣 ROM；
- 最完善的刷机工具 ：Devices - TWRP；

大型企业级项目练手（五个项目）：
- 略……

### 2019.11.30

VSCode插件Markdown PDF下载安装chromium失败解决方法  
找到Preferences-Settings，在设置界面找到markdown-pdf的executable path配置项，点击edit in settings.json链接  
在USER SETTINGS中配置chrome.exe文件的全路径，如
```json
"markdown-pdf.executablePath": "C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe"
```
然后重启VSCode即可

### 2019.11.28

修复Windows快速启动  
命令提示符-以管理员身份运行  
`powercfg -h off`   关闭休眠  
`powercfg -h on`    开启休眠  

注册表
按下快捷键“win+R”调出运行命令行，输入`regedit`启动注册表编辑器，展开  
`HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager`  
找到右侧的 BootExecute（作用好像是 开机硬盘自检）修改键值为autocheck autochk *

修复失败，已关闭快速启动，并禁用休眠

### 2019.11.27

#### 谷歌浏览器Software Reporter Tool长时间占用CPU解决办法  
我们虽然可以通过任务管理器手动结束进程或者选择删除SRT，但这都不是长久的解决办法。因为前者过一段时间它又会再次运行，后者在浏览器更新的时候就又会重新被下载下来。要完美地解决这一个问题我们可以进入SRT目录，默认它位于以下目录

`C:\Users\[YourName]\AppData\Local\Google\Chrome\User Data\SwReporter\[版本]`  
我们还可以通过win+r键打开运行命令窗口并输入以下命令快速找到它   
`%localappdata%\Google\Chrome\User Data\SwReporter`  
执行以下步骤：
- 右键单击software_reporter_tool.exe选择属性  
转到“安全”选项卡  
点击“高级”  
点击“禁用继承”  
选择"从此对象中删除所有继承的权限",之后点击“确定”  
这样就没有人可以访问SwReporter文件夹并启动Software Reporter Tool了。 

- 另一个方法是：修改配置文件  
与上文相同的文件夹下，有个manifest.json文件，  
用编辑器打开它，将 “allow-reporter-logs”: true 修改为 “allow-reporter-logs”: false

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

>[an example](http://example.com/ "Title")

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

#### 展开页
<details>
<summary>点击展开</summary>
##### aaa
##### bbb
</details>

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
