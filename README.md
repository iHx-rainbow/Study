# iHx

## Love Hx.

### 2019.03.24
```
  _   _    _        
 (_) | |  | |       
  _  | |__| | __  __
 | | |  __  | \ \/ /
 | | | |  | |  >  < 
 |_| |_|  |_| /_/\_\
```

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
线性回归？  
逻辑回归？  

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