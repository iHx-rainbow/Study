# iHx

## Love Hx.

### 2019.03.29 

[^_^]: <> (This is a comment, it will not be included)
[^_^]

```c
//C语言判断字符相等
c1==c2
//C语言strcmp函数判断字符串相等
#include <string.h>
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

### 2019.03.27
调和级数是发散的  
形如1/1+1/2+1/3+…+1/n+…的级数  
1000项7.485  

### 2019.03.26
[(´ . .̫ . `)]: <> (以为自己是个难以接近的人吧，想要改变一下说话方式。傻乎乎一点，话多一点，幼稚也好，挨骂也好。现在发现好像，你并不喜欢。Though，那还是原来那样吧。)
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
>[Baidu](www.baidu.com '百度一下，你就知道')

>[link]:www.baidu.com "百度一下，你就知道"

>[Baidu][link]

>链接 [link]

><http://example.com/>

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
