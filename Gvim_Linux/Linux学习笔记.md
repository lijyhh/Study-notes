<img src="https://i.loli.net/2020/04/07/J3twqzMG7KBkiZY.png"/<img src="https://i.loli.net/2020/04/07/kGTPhDr4eoSxLEH.png"/>[<img src="https://i.loli.net/2020/04/07/kGTPhDr4eoSxLEH.png"/>Linux学习网站](https://man.linuxde.net/)

# 一．Linux基础知识

## 1.Linux系统特点

开放性（开源）、多用户、多任务（单任务）、良好的用户界面、优异性能与稳定性

- 单用户：一个用户，在登录计算机（操作系统），只能允许同时登录一个用户；

- 单任务：一个任务，允许户同时进行的操作任务数量；

- 多用户：多个用户，在登录计算机（操作系统），允许同时登录多个用户进行操作；

- 多任务：多个任务，允许用户同时进行多个操作任务；

- Windows属于：单用户、多任务。

- Linux属于：多用户、多任务。

## 2.Linux分支

分支：Linux分支有很多，现在比较有名的ubuntu、debian、centos（Community Enterprise Operating System社区企业操作系统）、redhat、suse等等。

# 二．Linux系统的安装

## 1.安装方式

目前安装操作系统方式有2种：真机安装、虚拟机安装。

- 真机安装：使用真实的电脑进行安装，像安装 windows操作系统一样，真机安装的结果就是替换掉当前的Windows操作系统； 
- 虚拟机安装：通过一些特定的手段，来进行模拟安装，并不会影响当前计算机的真实操作系统；

- 如果是学习或者测试使用，强烈建议使用虚拟机安装方式。

## 2、虚拟机软件

什么是虚拟机？

- 虚拟机，有些时候想模拟出一个真实的电脑环境，碍于使用真机安装代价太大，因此而诞生的一款可以模拟操作系统运行的软件。 
- 虚拟机目前有2个比较有名的产品：wmware出品的wmware workstation、oracle 出品的vfirtual Box。

## 3.Linux版本的选择

- 版本选择：CentOS5【镜像一般都是xxx.iso文件】 

- Vmvare中使用`Ctrl+alt`释放鼠标

- 虚拟机怎么关机？

  答：可以通过命令行方式进行关机。命令的输入需要在终端中进行输入。

  所谓终端，其实类似于windows下cmd命令行模式。在终端中可以输入需要执行的一些指令，同样可以通过终端进行关机（注意：以后在工作中很少会去使用关机命令，会使用重启）。

![img](https://raw.githubusercontent.com/lijyhh/My_typora_pics/master/img/终端介绍.png)

- 如何使用终端命令进行关机？

  在Linux中关机命令有以下几个：`shutdown -h now（正常关机）`、`halt（关闭内存）`、`init 0` 

## 4、使用VMware备份操作系统

在vm中备份方式有2种：快照、克隆。

1. 快照：又称还原点，就是保存在拍快照时候的系统的状态（包含了所有的内容），在后期的时候随时可以恢复。【侧重在于短期备份，需要频繁备份的时候可以使用快照，做快照的时候虚拟的操作系统一般处于开启状态】

步骤：

- 在菜单“虚拟机”“快照”“拍摄快照”

- 输入相关信息，点击拍摄快照

- 搞事情

- 使用快照恢复搞事情之前的状态

- 路径：虚拟机-快照-快照管理器

2. 克隆：就是复制的意思。【侧重长期备份，做克隆的时候是必须得关闭】 

- 路径：先关机-右键需要克隆的虚拟机-管理-克隆

- 克隆时注意：

![img](https://raw.githubusercontent.com/lijyhh/My_typora_pics/master/img/20200404235517.png)

- 克隆好的服务器相关密码帐号等信息与被克隆的系统一致。

# 三．Linux系统的文件

## 1、文件与文件夹（目录）

### 1.1什么是文件？

- 一般都是一个独立的东西，可以通过一些特定的工具进行打开，并且其中不能在包含除了文字以外的东西。

### 1.2什么是文件夹？

- 可以在其中包含其他文件的东西。 

### 1.3为什么先讲文件？

- 日常运维工作中，有近一半以上的工作内容精力其实都是对文件的操作。

- Linux本身也是一个基于文件形式表示的操作系统。

## 2、Linux一切皆文件

### 2.1 简介：

- 在windows是文件的，在Linux下同样也是文件；

- 在windows不是文件的，在Linux下也是以文件的形式存储的； 

- 日常学习中和日常工作中，对于文件的操作的都有哪些种类？

  创建文件、编辑文件、保存文件、关闭文件、重命名文件、删除文件、恢复文件。

### 2.2目录结构：

![文件结构](https://raw.githubusercontent.com/lijyhh/My_typora_pics/master/img/文件结构.png)

Bin：全称binary，含义是二进制。该目录中存储的都是一些二进制文件，文件都是可以被运行的。

Dev：该目录中主要存放的是外接设备，例如u盘、其他的光盘等。在其中的外接设备是不能直接被使用的，需要挂载（类似windows下的分配盘符）。

Etc：该目录主要存储一些配置文件，里面的passwd文件是记录用户信息的文件。

Home：表示“家”，表示除了root用户以外其他用户的家目录，类似于windows下的User/用户目录。

Proc：process，表示进程，该目录中存储的是Linux运行时候的进程（不要打开，容易卡屏）。

Root：该目录是root用户自己的家目录。

Sbin：全称super binary，该目录也是存储一些可以被执行的二进制文件，但是必须得有super权限的用户才能执行。

Tmp：表示“临时”的，当系统运行时候产生的临时文件会在这个目录存着。

usr：存放的是用户自己安装的软件，类似于windows 下的program files。

Var：存放的程序/系统的日志文件的目录。

Mnt：当外接设备需要挂载的时候，就需要挂载到mnt目录下。

Boot：操作系统启动的时候产生的一些文件，boot：启动，开机

```
/bin:
bin为binary的简写主要放置一些 系统 的必备执行档例如:cat、cp、chmod df、dmesg、gzip、kill、ls、mkdir、more、mount、rm、su、tar等。 

/usr/bin:
主要放置一些 应用软体工具 的必备执行档例如c++、g++、gcc、chdrv、diff、dig、du、eject、elm、free、gnome*、 gzip、htpasswd、kfm、ktop、last、less、locale、m4、make、man、mcopy、ncftp、 newaliases、nslookup passwd、quota、smb*、wget等。 

/sbin:
主要放置一些 系统管理 的必备程式例如:cfdisk、dhcpcd、dump、e2fsck、fdisk、halt、ifconfig、ifup、 ifdown、init、insmod、lilo、lsmod、mke2fs、modprobe、quotacheck、reboot、rmmod、 runlevel、shutdown等。 

/usr/sbin: 
放置一些 网路管理 的必备程式例如:dhcpd、httpd、imap、in.*d、inetd、lpd、named、netconfig、nmbd、samba、sendmail、squid、swap、tcpd、tcpdump等。 
```



# 四．Linux的基本指令

## 指令与选项

### 一、什么是Linux的指令？

- 指在Linux终端（命令行）中输入的内容就称之为指令。 

- 一个完整的指令的标准格式：Linux通用的格式

- #指令主体 [选项] [操作对象]  []表示可选

- 一个指令可以包含多个选项

- 操作对象也可以是多个

- 例如：需要让张三同学帮忙去楼下小卖铺买一瓶农夫山泉水和清风餐巾纸，在这个指令中“买东西”是指令的主体，买的水和餐巾纸是操作的对象，农夫山泉、清风是操作的选项。 

### 二、基础指令

#### 1、ls指令

含义：ls（list）

![根目录](https://raw.githubusercontent.com/lijyhh/My_typora_pics/master/img/20200405003610.png)

/表示盘的根目录 

用法1：`#ls`

- 含义：列出当前工作目录下的所有文件/文件夹的名称

![ls1](https://raw.githubusercontent.com/lijyhh/My_typora_pics/master/img/ls_1.png)

用法2：`#ls  路径`

- 含义：列出指定路径下的所有文件/文件夹的名称

![ls2](https://raw.githubusercontent.com/lijyhh/My_typora_pics/master/img/ls2.png)

==关于路径（重要）：==

- 路径可以分为两种：相对路径、绝对路径。

- 相对路径：相对首先得有一个参照物（一般就是当前的工作路径）；

  相对路径的写法：在相对路径中通常会用到2个符号”./”(./等价与不写./)【表示当前目录下】、“../”【上一级目录下】

- 绝对路径：绝对路径不需要参照物，直接从根“/”开始寻找对应路径； 

用法3：`ls 选项 路径`

- 含义：在列出指定路径下的文件/文件夹的名称，并以指定的格式进行显示。

- 常见的语法：

  - `#ls -l 路径`

  - `#ls -la 路径` 

- 选项解释：

  1. -1：表示list，表示以详细列表的形式进行展示

     ![ls3](https://raw.githubusercontent.com/lijyhh/My_typora_pics/master/img/ls3.png)

     - 上述列表中的第一列字符表示文档的类型，其中“-”表示该行对应的文档类型为文件，“d”表示文档类型为文件夹。

  2. -a：表示显示所有的文件/文件夹（包含了隐藏文件/文件夹）

     ![ls4](https://raw.githubusercontent.com/lijyhh/My_typora_pics/master/img/20200405005921.png)

     - 在Linux中隐藏文档一般都是以“.”开头。 

用法4：`#ls –lh路径`

- 含义：列出指定路径下的所有文件/文件夹的名称，以列表的形式并且在显示文档大小的时候以可读性较高的形式显示

![ls4](https://raw.githubusercontent.com/lijyhh/My_typora_pics/master/img/20200405075251.png)

- 注意：ls列出的结果颜色说明，其中蓝色的名称表示文件夹，黑色的表示文件，绿色的表示其权限为拥有所有权限。

#### 2、pwd指令

用法：`#pwd`（print working directory，打印当前工作目录）

![pwd](https://raw.githubusercontent.com/lijyhh/My_typora_pics/master/img/20200405075557.png)

#### 3、cd命令

命令：`#cd`（change directory，改变目录）

作用：用于切换当前的工作目录

语法：`#cd 路径`

补充：

在Linux中有一个特殊的符号“~”，表示当前用户的家目录

切换方式：`#cd ～`

![cd](https://raw.githubusercontent.com/lijyhh/My_typora_pics/master/img/20200405075845.png)

#### 4、mkdir指令

指令：`mkdir`（make directory，创建目录）

语法1：`mkdir 路径`【路径，可以是文件夹名称也可以是包含名称的一个完整路径】

![mkdir1](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405095050.png)

语法2：`#mkdir -p 路径`

含义：当一次性创建多层不存在的目录的时候，添加-p参数，否则会报错

![mkdir2](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405095315.png)

语法3：#mkdir 路径1 路径2 路径3 …【表示一次性创建多个目录】 

#### 5、touch指令

指令：`touch`

作用：创建文件

语法：`#touch 文件路径`【路径可以是直接的文件名也可以是路径】 

也可以使用touch来同时创建多个文件

![touch](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405095551.png)

#### 6、cp指令

指令：cp（copy，复制）

作用：复制文件/文件夹到指定的位置

语法：`#cp 被复制的文档路径 文档被复制到的路径`

注：复制过程中可以改名，但建议保持一致

![cp](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405100232.png)

案例：使用cp命令来复制一个文件夹

注意：当使用cp命令进行文件夹复制操作的时候需要添加选项“-r”【-r（recursion）表示递归复制，递归是指很多层次的东西】，否则目录将被忽略

![cp2](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405101057.png)

#### 7、mv指令

指令：mv（move，移动，剪切）

作用：移动文档到新的位置

语法：`#mv 需要移动的文档路径 需要保存的位置路径`

确认：移动之后原始的文件不在原来的位置了

==注：移动文件时不需要加-r了==

![mv1](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405101348.png)

补充：在Linux中重命名的命令也是mv，语法和移动语法一样。但是路径得不变。

![mv2](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405101439.png)

#### 8、rm命令

指令：rm（remove，移除、删除）

作用：移除/删除文档

语法：`#rm 选项 需要移除的文档路径`

选项：

```
-f:force，强制删除，不提示是否删除

-r:递归
```

在删除的时候如果不带选项，会提示是否删除，如果需要确认则输入“y/yes”，否则输入“n/no”按下回车。

注意：如果在删除的时候不想频繁的确认，则可以在指令中添加选项“-f”，表示force（强制）-r -f 可以写在一起 -rf 

案例：要删除一个目录下有公共特性的文档，例如都以.txt结尾

其中  称之为通配符，意思表示任意的字符，.txt，则表示只要文件以.txt结尾，其他字符则不管。

![rm](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405102436.png)

#### 9、vim命令

指令：vim（vim是一款文本编辑器，编辑器之神）

语法：#vim 文件的路径

作用：打开一个文件（可以不存在，也可以存在）

命令：

![vim1](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405102613.png)

打开后界面：

![vim](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405102734.png)

#### 10、输出重定向

一般命令的输出都会显示在终端中，有些时候需要将一些命令的执行结果想要保存到文件中进行后续的分析/统计，则这时候需要使用到的输出重定向技术。

\>：覆盖输出，会覆盖掉原先的文件内容

\>>：追加输出，不会覆盖原始文件内容，会在原始内容未尾继续添加

Eg:ls -la > ls.txt

语法：`#正常执行的指令 >/>> 文件的路径`

注意：文件可以不存在，不存在则新建

![>](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405103544.png)

#### 11、cat指令

作用1：cat有直接打开一个文件（非文件夹）的功能。

语法1：`#cat 文件的路径` 

作用2：cat还可以对文件进行合并

语法2：`#cat 待合并的文件路径1 待合并的文件路径2... 文件路径n > 合并之后的文件路径`

![cat](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405104102.png)

### 三、进阶指令（重点）

#### 1、df指令

作用：查看磁盘的空间

语法：`#df -h`  -h表示以可读性较高的形式展示大小

![df](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405104159.png)

```
Filesystem 相当于windows中的盘符

Size 大小

Used 已使用

Avail 可用

Use% 使用百分比

Mounted on 挂载点（根目录下有个文件夹叫mnt）
```

 

#### 2、free指令

作用：查看内存使用情况

语法：`#free -m`  -m表示以mb为单位查看内存的使用情况(-g以g为单位查看)最常用-m

![free](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405104445.png)

```
看内存的话，cache比较准确（剩余的真实可以用的内存），因为包括了已经被分配了但没有被使用的

右侧Buffers（输出）和cached（输入）就是已经被分配了但没有被使用的

Swap：用于临时内存，当系统真实内存不够用的时候可以临时使用磁盘空间来充当内存。
```

(Tips:Windows使用计算器：win+r，输入calc) 

#### 3、head指令

作用：查看一个文件的前n行，如果不指定n，则默认显示前10行。

语法：`#head -n文件路径`  【n表示数字】

![head](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405105535.png)

#### 4、tail指令

作用1：查看一个文件的末n行，如果n不指定默认显示后10行

作用2：可以通过tail 指令来查看一个文件的动态变化【如果是-f，则变化的内容不能是用户手动增加的，如果是-F，则可以】，使用ctrl+c退出

语法：`#tail -F 文件路径`该命令一般用于查看系统的日志比较多。

![tail](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405110258.png)

#### 5、less指令

作用：查看文件，以较少的内容进行输出，按下辅助功能键:`数字+回车、空格键（翻页）+上下方向键`，查看更多

语法：`#less 需要查看的文件路径`

#### 6、wc指令

作用：统计文件内容信息（包含行数、单词数、字节数）

语法：`#wc -lwc 需要统计的文件路径`

![wc](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405111117.png)

l：表示lines，行数

w：表示words，单词数  依照空格来判断单词数量

c：表示bytes，字节数 

#### 7、date 指令（重点）

作用：表示操作时间日期（读取、设置）

语法1：`#date` 

输出形式：

![data1](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405111322.png)

- CST：当地时间

语法2：`#date +%F`

- 输出形式：（等价于#date +“%Y-%m-%d”）

![img](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405111433.png)

语法3：`#date “+%F %T”`  引号表示让“年月日与时分秒”成为一个不可分割的整体

输出形式：等价操作 #date "+%Y-%m-%d %H:%M:%S”

![img](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405111540.png)

语法4：获取之前或者之后的某个时间（备份）

\#date -d “-1 day" “+%Y-%m-%d  %H:%M:%S”

![date4](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405111807.png)

符号的可选值：+（之后）或者 -（之前）

单位的可选值：day（天）、month（月份）、year（年）

```
%F：表示完整的年月日

%T：表示完整的时分秒

%Y：表示四位年份

%m：表示两位月份（带前导0）

%d：表示日期（带前导0）

%H：表示小时（带前导0）

%M：表示分钟（带前导0）

%S：表示秒数（带前导0）
```

####  8、cal指令（calendar）

作用：用来操作日历的，不是计算器

语法1：`#cal` 等价于#cal-1直接输出当前月份的日历

语法2：`#cal-3`表示输出上一个月+本月+下个月的日历

![cal1](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405111953.png)

语法3：`#cal -y`年份 表示输出某一个年份的日历

![cal2](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405112030.png)

9、clear/ctrl+L

指令作用：清除终端中已经存在的命令和结果（信息）。

语法：`clear或者快捷键：ctrl+L`

需要注意的是，该命令并不是真的清除了之前的信息，而是把之前的信息的隐藏到了最上面，通过滚动条继续查看以前的信息。 

#### 10、管道（重要）

管道符：|

作用：管道一般可以用于==“过滤”，“特殊”，“扩展处理”==。

语法：管道不能单独使用，必须需要配合前面所讲的一些指令来一起使用，其作用主要是辅助作用。

过滤案例（100%使用）：需要通过管道查询出当前目录下包含“p”字母的文档名称。

\#ls /|grep p

![|](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405112451.png)

针对上面这个命令说明：

- 以管道作为分界线，前面的命令有个输出，后面需要先输入，然后再过滤，最后再输出，通俗的讲就是管道前面的输出就是后面指令的输入；

- grep指令：主要用于过滤

- 特殊用法案例：通过管道的操作方法来实现less的等价效果（了解）

  之前通过less查看一个文件，可以#less路径现在通过管道还可以这么：#cat 路径|less

- 扩展处理：请使用学过的命令，来统计某个目录下的文档的总个数？

  答：ls / | wc -l

![|](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405112554.png)

​	可以看到是正确的。

# 五．Linux的基本指令（2）

## 一、高级指令

### 1、host name指令

作用：操作服务器的主机名（读取、设置）

语法1：`#hostname`    含义：表示输出完整的主机名

![hostname](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405113257.png)

语法2：`#hostname -f（FQDN）` 含义：表示输出当前主机名中的FQDN（全限定域名）

### 2、id指令

作用：查看一个用户的一些基本信息（包含用户id，用户组id，附加组id..），该指令如果不指定用户则默认当前用户。

语法1：`#id`  默认显示当前执行该命令的用户的基本信息

语法2：`#id 用户名` 显示指定用户的基本信息

![id](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405113357.png)

验证上述信息是否正确？

验证用户信息：通过文件/etc/passwd

验证用户组信息：通过文件/etc/group

### 3、whoami指令

作用：“我是谁？” 显示当前登录的用户名，一般用于shell脚本，用于获取当前操作的用户名方便记录日志。

语法：`#whoami`

![whoami](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405113515.png)

### 4、ps -ef指令（重点）

指令：`#ps`

作用：主要是查看服务器的**进程信息**选项含义：

```
-e：等价于“-A”，表示列出全部的进程

-f：显示全部的列（显示全字段）
```

执行结果：

​    ![img](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405113627.png)

列的含义：

```
UID：该进程执行的用户id；

PID：进程id；

PPID：该进程的父级进程id，如果一个程序的父级进程找不到，该程序的进程称之为僵尸进程；

C：Cpu的占用率，其形式是百分数；

STIME：进行的启动时间；

TTY：终端设备，发起该进程的设备识别符号，如果显示“？”则表示该进程并不是由终端设备发起；（pts/1表示当前终端）

TIME：进程的执行时间；

CMD：该进程的名称或者对应的路径；
```

案例：（100%使用的命令）在ps的结果中过滤出想要查看的进程状态

\#ps -ef | grep 进程名称

![ps](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405114252.png)

### 5、top指令（重点）

作用：查看服务器的**进程占的资源**

语法：

进入命令：`#top（动态显示）`

退出命令：`按下q键`

输出结果：

![top](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405114411.png)

表头含义：

```
PID：进程id；

USER：该进程对应的用户；

PR：优先级；

VIRT：虚拟内存；

RES：常驻内存；

SHR：共享内存；计算一个进程实际使用的内存=常驻内存（RES）-共享内存（s函R）

S：表示进行的状态（sleeping，其中S表示睡眠，R表示运行）；

%CPU：表示CPU的占用百分比；

%MEM：表示内存的占用百分比；

TIME+：执行的时间；

COMMAND：进程的名称或者路径；
```

- chrome进行：
  - 虚拟内存：申请500MB 实际使用了320MB 此时的虚拟内存就是500MB
  - 常驻内存：申请500MB 实际使用了320MB 此时的常驻内存就是320MB

  - 共享内存：申请500MB 实际使用了320MB，但是其中还包含对其他进程的调用开销则需要扣除 

- 在运行top的时候，可以按下方便的快捷键：

```
M：表示将结果按照内存（MEM）从高到低进行降序排列；

P：表示将结果按照CPU使用率从高到低进行降序排列；

l：当服务器拥有多个cpu的时候可以使用“l”快捷键来切换是否展开显示各个cpu的详细信息
```

### 6、du -sh指令

作用：查看目录的真实大小

语法：`#du -sh 目录路径`

选项含义：

```
-s：summaries，只显示汇总的大小

-h：表示以高可读性的形式进行显示
```

![du](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405115801.png)

### 7、find指令

作用：用于查找文件（其参数有55个之多）

语法：`#find 路径范围 选项 选项的值`

选项：

```
-name：按照文档名称进行搜索（支持模糊搜索）

-type：按照文档的类型进行搜索

文档类型：“-”表示文件（在使用find的时候需要用f来替换），“d”表示文件夹
```

案例：使用find 来搜索prc2

```
#find ./ -name prc2
```

![find1](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405120236.png)

案例：搜索etc目录下所有的conf后缀文件

```
#find /etc -name .conf

#find /etc -name  .conf | wc -l（个数）
```

案例：使用find 来搜索/etc/sane.d/目录下所有的文件

```
#find /etc/sane.d/ -type -
```

案例：使用find 来搜索/etc/目录下所有的文件夹

```
#find /etc -type d
```

### 8、service 指令（重点）

作用：用于**控制一些软件的服务启动/停止/重启**

语法：`#service 服务名 start/stop/restart`

例如：需要启动本机安装的Apache（网站服务器软件），其服务名httpd

\#service httpd start

![httpd](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200407000233.png)

### 9、kill 指令（重点）

作用：表示杀死进程（当遇到僵尸进程或者出于某些原因需要关闭进程的时候）

语法：`#kill 进程PID（语法需要配合ps一起使用）`

![kill](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200407000427.png)

与kill命令作用相似但是比kill更加好用的杀死进程的命令：killall

语法：`#killall 进程名称`

![killall](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200407000652.png)

案例：寻找并杀死僵尸进程

```
ps -A -o stat,ppid,pid,cmd | grep -e '^[Zz]'
```

命令注解：

```
-A 参数列出所有进程

-o 自定义输出字段 我们设定显示字段为 stat（状态）, ppid（进程父id）, pid(进程id)，cmd（命令）这四个参数
因为状态为 z或者Z的进程为僵尸进程，所以我们使用grep抓取stat状态为zZ进程
```

- 查看是否有僵尸进程：

![zombie](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405121531.png)

- 查找pid,ppid等：

![ps](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405122203.png)

- kill：

   可以使用 kill -HUP 5323 来杀掉这个**僵尸进程**

### 10、ifconfig指令（重点）

作用：用于操作网卡相关的指令。

简单语法：`#ifconfig（获取网卡信息）`

![ifconfig](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405122819.png)

Eth0表示Linux中的一个网卡，eth0是其名称。Lo（loop，本地回还网卡，其ip地址一般都是127.0.0.1）也是一个网卡名称。

注意：inet addr 就是**网卡的ip地址**。

11、reboot指令

作用：重新启动计算机，reboot：重启

语法1：`#reboot重启`

语法2：`#reboot -w摸拟重启，但是不重启（只写关机与开机的日志信息）`

### 12、shutdown指令

作用：关机（慎用）

语法1：`#shutdown -h now “关机提示”或者#shutdown -h 15：25 “关机提示"`

如果想要取消关机计划的话，则可以按照以下方式去尝试：

- 针对于centos7.x之前的版本：ctrl+c

- 针对于centos7.x（包含）之后的版本：shutdown -c

除了shutdown关机以外，还有以下几个关机命令：

```
#init 0

#hat

#poweroff
```

### 13、uptime指令

作用：输出计算机的持续在线时间（计算机从开机到现在运行的时间）

语法：`#uptime`

![img](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405125028.png)

​	Load average: 负载

### 14、uname指令

作用：获取计算机操作系统相关信息

语法1：`#uname`  获取操作系统的类型

语法2：`#uname -a`  -a是all，表示获取全部的系统信息（类型、全部主机名、内核版本、发布时间、开源计划）

![uname](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405125155.png)

### 15、netstat-tnlp指令

作用：查看网络连接状态

语法：#netstat -tnlp

![netstat](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405125348.png)

```
-t：表示只列出tcp协议的连接；

-n：表示将地址从字母组合转化成ip地址，将协议转化成端口号来显示；

-l：表示过滤出“state（状态）”列中其值为LISTEN（监听）的连接；

-p：表示显示发起连接的进程pid和进程名称；
```

### 16、man指令

作用：manual，手册（包含了Linux中全部命令手册，英文）

语法：`#man 命令`（退出按下q键）

## 二、练习题

1、如何通过命令行重启linux操作系统？#reboot

2、如何在命令行中快速删除光标前/后的内容？ 前：ctrl+u后：ctrl+k

3、如何删除/tmp下所有A开头的文件？#rm -f /tmp/A*

4、系统重要文件需要备份，如何把/etc/passwd备份到/tmp目录下？

\#cp /etc/passwd /tmp/

5、如何查看系统最后创建的3个用户？#tail -3 /etc/passwd

6、什么命令可以统计当前系统中一共有多少账户？

\#wc -l /etc/passwd  或  #cat/etc/passwd | wc -l

7、如何创建/tmp/test.conf文件？

\#touch /tmp/test.conf

8、如何通过vim编辑打开/tmp/test.conf？  vim /tmp/test.conf

9、如何查看/etc/passd的头3行和尾3行？

\#head -3 /etc/passwd

\#tail -3 /etc/passwd

10、如何一次性创建目录/text/1/2/3/4？

\#mkdir -p /text/1/2/3/4

11、如何最快的返回到当前账户的家目录？

\#cd ~ 或 #cd

12、如何查看/etc所占的磁盘空间？

\#du -sh /etc

13、如何删除/tmp下所有的文件？

\#rm -rf /tmp/*

14、尝试启动Apache的服务，并且检查是否启动成功。

\#service httpd start

\#ps -ef | grep httpd

15、使用已学命令杀死Apache的进程。

\#killall httpd

# 六．编辑器之神--vim编辑器

## 一、vi介绍

vi编辑器是所有Unix及Linux系统下标准的编辑器，类似于windows系统下的notepad（记事本）编辑器，由于在Unix及Linux系统的任何版本，Vi编辑器是完全相同的，因此可以在其他任何介绍vi的地方都能进一步了解它，Vi也是Linux中最基本的文本编辑器，学会它后，我们将在Linux的世界里畅行无阻，尤其是在终端中。

关于vim：

vi和vim都是Linux中的编辑器，不同的是，vim比较高级，可以视为vi的升级版本。vi使用于文本编辑，但是vim更适用于coding（编程）。

Vim重点是光标的移动，模式切换，删除，查找替换，复制，粘贴，撤销命令的使用。

## 二、vim三种模式

Vim中存在三种模式（大众的认知）：**命令模式、编辑模式（输入模式）、末行模式（尾行模式）**。

```
命令模式：在该模式下是不能对文件直接编辑，可以输入快捷键进行一些操作（删除行，复制行，移动光标，粘贴等等）【打开文件之后默认进入的模式】；

编辑模式：在该模式可以对文件的内容进行编辑；

末行模式：可以在末行输入命令来对文件进行操作（搜索、替换、保存、退出、撤销、高亮等等）；
```

 

Vim的打开文件的方式（4种，要求掌握的就前三种）：

```
#vim  文件路径          作用：打开指定的文件

#vim    +数字   文件的路径  作用：打开指定的文件，并且将光标移动到指定行

#vim    +/关键词  文件的路径  作用：打开指定的文件，并且高亮显示关键词

#vim    文件路径1 文件路径2 文件路径3  作用：同时打开多个文件
```

 

重点：先复制出一个/etc/passwd文件，复制当前家目录下

后续一切vim命令都是基/root/passwd文件进行操作。

退出方式：输入：q按下回车即可

## 三、命令模式

注意：该模式是打开文件的第一个看到的模式（打开文件即可进入）

### 1、光标移动

#### 1.1光标移动到行首

按键：shift+6 或 ^（T字母上面的6，不要按小键盘的6）

 

#### 1.2光标移动到行尾

按键：shift+4 或 $（R字母的左上角的4，不是小键盘的4）

正则表达式 *（通配符）^（开始）$（结尾）

 

#### 1.3光标移动到首行

按键：gg

 

#### 1.4光标移动到末行

按键：G

 

#### 1.5翻屏

向上翻屏：按键ctrl+b（before）或PgUp

向下翻屏：按键ctrl+f（after）或PgDn

 

### 2、复制操作

#### 2.1复制光标所在行

按键：yy

粘贴：在想要粘贴的地方按下p键

#### 2.2以光标所在行为准（包含当前行），向下复制指定的行数

按键：数字yy

#### 2.3可视化复制

按键：ctrl+v，然后按下上下左右方向键来选中需要复制的区块，按下yy键进行复制，最后按下p键粘贴

### 3、剪切/删除

#### 3.1剪切/删除光标所在行

按键：dd（删除之后下一行上移）注意：dd严格意义上说是剪切命令，但是如果剪切了不粘贴就是删除的效果。

#### 3.2剪切/删除光标所在行为准（包含当前行），向下删除/剪切指定的行

按键：数字dd（删除之后下一行上移）

#### 3.3剪切/删除光标所在的当前行，但是删除之后下一行不上移

按键：D（删除之后当前行会变成空白行）

### 4、撤销/恢复

撤销：输入 :u或者u（undo）

恢复：ctrl+r   恢复（取消）之前的撤销

### 5、扩展1：光标的快速移动

①快速将光标移动到指定的行按键：数字G

②以当前光标为准向上/向下移动n行按键：数字↑，数字↓

③以当前光标为准向左/向右移动n字符按键：数字←，数字→

④末行模式下的快速移动方式：移动到指定的行按键：输入英文“：”，其后输入行数数字，按下回车 

## 四、模式间的相互切换（重点）

![框图](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405133045.png) 

## 五. 末行模式

命令模式下按“:”或“/（表示查找）”进入末行模式；

退出末行模式：

- 按`一下esc`
- 按`两下esc`（一下和两下的区别是速度问题）
- `删除末行命令和冒号`，即退出末行模式

- 保存操作
  输入：`“:w”`保存文件
  输入：`“:w 路径”`另存为

- 退出（quit）
  输入：`“:q”`退出文件

- 保存并退出
  输入：`“:wq”`保存并且退出

- 强制（！）

  输入：`“:q！”`表示强制退出，刚才做的修改操作不做保存

- 调用外部命令（了解）

  输入：`“:!外部命令”`

  当外部命令执行结束之后按下任意键回到vim编辑器打开的内容

- 搜索/查找
  输入：“/关键词”

  在搜索结果中切换上/下一个结果：N/n

  如果需要取消高亮，则需要输入：`“:nohl”`【no highlight】

- 替换

  ```
  ：s/搜索的关键词/新的内容      替换光标所在行的第一处符合条件的内容
  ：s/搜索的关键词/新的内容/g    替换光标所在行的全部符合条件的内容
  ：%s/搜索的关键词/新的内容     替换整个文档中每行第一个符合条件的内容
  ：%s/搜索的关键词/新的内容/g   替换整个文档的符合条件的内容
  ```

  - %表示整个文件
  - g表示全局（global）

- 显示行号
  输入：“:set nu”[number]
  如果想取消显示，则输入：“:set nonu”

- 扩展2：使用vim同时打开多个文件，在末行模式下进行切换文件查看当前已经打开的文件名称：“:files”

  ```
  在%a的位置有2种显示可能
  %a:a=active，表示当前正在打开的文件；
  #：表示上一个打开的文件
  ```

  - 切换文件的方式：
    a.如果需要指定切换文件的名称，则可以输入：“：open 已经打开的文件名”

    b.可以通过其他命令来切换上一个文件/下一个文件

    ```
    输入：“：bn”切换到下一个文件（back next）
    输入：“：be”切换到上一个文件（back prev）
    ```

## 六. 编辑模式

![编辑模式](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405151742.png)

 重点看前2个进入方式：i（insert）、a（after）。
 退出方式：按下esc键

##  七、实用功能

1、代码着色

如何控制着色显示与否？
显示：“：syntax on”  syntax:语法
关闭显示：“：syntax off”

2、vim中计算器的使用
当在编辑文件的时候突然需要使用计算器去计算一些公式，则此时需要用计算器，但是需要退出，vim自身集成了一个简易的计算器。
a.进入编辑模式

b.按下按键“ctrl+R”，然后输入“=”，此时光标会变到最后一行

c.输入需要计算的内容，按下回车

## 八. 扩展

###  1、vim的配置（重点）

- Vim是一款编辑器，编辑器也是有配置文件的。

- Vim配置有三种情况：

  - a.在文件打开的时候在末行模式下输入的配置（临时的）
  - b.个人配置文件（~/.vimrc，如果没有可以自行新建一个）
  - c.全局配置文件（vim自带，/etc/vimrc）

  

- 新建好个人配置文件之后进入编辑

- 在配置文件中进行配置

  - 比如显示行号：set nu
  - 配置好之后vim打开文件就会永远显示行号

- 问题：如果某个配置项，在个人配置文件与全局配置文件产生冲突的时候应该以谁为准？
  - 测试步骤：在两个配置文件中针对同一个配置项设置不同的值
  - 先在全局的配置中设置不显示行号，在个人的配置文件中设置显示行号，观察结果最后显示行号：说明以个人为准
  - 先在全局中配置显示行号，在个人中设置不显示行号，观察结果最后的显示是不显示行号，说明以个人为准
  - 结论：如果针对同一个配置项，个人配置文件中存在，则以个人配置文件为准，如果个人配置文件中不存在这一项，则以全局配置文件为准。

### 2、异常退出

什么是异常退出：在编辑文件之后并没有正常的去wq（保存退出），而是遇到突然关闭终端或者断电的情况，则会显示下面的效果，这个情况称之为异常退出；

![yichang](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200407002805.png)

解决办法：将交换文件（在编程过程中产生的临时文件）删除掉即可

![delete](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200407003325.png)

### 3、别名机制

作用：相当于创建一些属于自己的自定义命令
例如：在windows下有cls命令，在Linux下可能因为没有这个命令而不习惯清屏。现在可以通过别名机制来解决这个问题，可以自己创造出cls命令别名机制依靠一个别名映射文件：~/.bashrc
#vim ~/.bashrc

![bashrc](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405175511.png)

注意：如果想新创造的命令生效，必须要重新登录当前用户。

### 4、退出方式

回顾：之前vim中退出编辑的文件可以使用“：q”或者“：wa”。

除了上面的这个语法之外，vim还支持另外一个保存退出方法“：x”。

说明：

- “：x”在文件没有修改的情况下，表示直接退出，在文件修改的情况下表示保存并退出；

- 如果文件没有被修改，但是使用wa进行退出的话，则文件的修改时间会被更新；但是果文件没有被修改，使用x进行退出的话，则文件修改时间不会被更新的；主要是会混淆用户对文件的修改时间的认定。
- 因此建议以后使用“：x”来进行对文件的保存退出。
  但是：==不要使用X，不要使用X，不要使用X。==X表示对文件进行加密操作.

# 七. Linux自有服务（1）

自有服务，即不需要用户独立去安装的软件的服务，而是当系统安装好之后就可以直接使用的服务。

## 一、运行模式

运行模式也可以称之为运行级别。
在linux中存在一个进程：`init`（initialize，初始化），`进程id是1`。
查看进程：`#ps -ef | grep init`

该进程存在一个对应的配置文件：inittab（系统运行级别配置文件，位置/etc/inittab）

文件的主要内容：

![主要内容](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405190822.png)

根据上述的描述，可以得知，Centos6.5中存在7中运行级别/模式。

```
0-表示关机级别（不要将默认的运行级别设置成这个值）
1-单用户模式
2-多用户模式，不带NFS（Network File Syetem）,即不联网
3-多用户模式，完全的多用户模式（不带桌面的，纯命令行模式）
4-没有被使用的模式（被保留模式）
5-X11，完整的图形化界面模式
6-表示重启级别（不要将默认的运行级别设置成这个值）
```

与该级别相关的几个命令：

```
#init 0表示关机
#init 3表示切换到不带桌面的模式
#init 5切换到图形界面
#init 6重启电脑
```

注意：init指令需要超级管理员的权限，普通用户无法执行。

这些命令其实都是调用的init进程，将数字（运行级别）传递给进程，进程去读配置文件执行对应的操作。

- 切换到纯命令行模式下（临时切换，重启后回到图形界面）
  #init 3

- 切换之后需要输入用户名和密码，在输入密码的时候没有“*”提示输入，只要自己确认输入的密码没有错误，按下回车即可。

- 回到桌面模式
  #init 5

- 设置模式永久为命令行模式

  将/etc/inittab文件中的initdefault值设置成3，然后重启操作系统。

## 二、用户与用户组管理（重点）

Linux系统是一个多用户多任务的操作系统，任何一个要使用系统资源的用户，都必须首先向系统管理员申请一个账号，然后以这个账号的身份进入系统。

用户的账号一方面可以帮助系统管理员对使用系统的用户进行跟踪，并控制他们对系统资源的访问；另一方面也可以帮助用户组织文件，并为用户提供安全性保护。

每个用户账号都拥有一个惟一的用户名和各自的密码。

用户在登录时键入正确的用户名和密码后，就能够进入系统和自己的主目录。

要想实现用户账号的管理，要完成的工作主要有如下几个方面：
用户账号的添加、删除、修改以及用密码的管理。
用户组的管理。

注意三个文件：
/etc/passwd 存储用户的关键信息
/etc/group  存储用户组的关键信息
/etc/shadow 存储用户的密码信息

### 1、用户管理

#### 1.1 添加用户

常用语法：`#useradd 选项 用户名`
常用选项：

```
-g：表示指定用户的用户主组，选项的值可以是用户组的id，也可以是组名
-G：表示指定用户的用户附加组，选项的值可以是用户组的id，也可以是组名
-u:uid，用户的id（用户的标识符），系统默认会从500之后按顺序分配uid，如果不想使用系统分配的，可以通过该选项自定义【类似于腾讯QQ的自选靓号】
-c:comment：添加注释
```

案例：创建用户zhangsan，不带任何选项.

![zhangsan](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405233333.png)

验证是否成功：
a.验证/etc/passwd的最后一行，查看是否有zhangsan的信息；

b.验证是否存在家目录（在Centos下创建好用户之后随之产生一个同名家目录）；

扩展：认识passwd文件

![dongxi](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405233627.png)

```
用户名：密码：用户ID：用户组ID：注释：家目录：解释器shell

用户名：创建新用户名称，后期登录的时候需要输入；

密码：此密码位置一般情况都是“x”，表示密码的占位；

用户ID：用户的识别符；用户组ID：该用户所属的主组ID；

注释：解释该用户是做什么用的；

家目录：用户登录进入系统之后默认的位置；

解释器 shell：等待用户进入系统之后，用户输入指令之后，该解释器会收集用户输入的指令，传递给内核处理；(信息转达的作用)
```

注：在不添加选项的时候，执行useradd之后会执行一系列的操作

- 创建同名的家目录；

- 创建同名的用户组；

案例2：添加选项，创建用户lisi，让lisi属于501主组，附加组500，自选靓号666

![lisi](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405234641.png)

![fujiazu](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200405234921.png)

 注意：查看用户的**主组**可以查看passwd文件，查看**附加组**可以查看group文件。

#### 1.2 修改用户

常用语法：`#usermod 选项 用户名`
usermod:user modify，用户修改常用选项：

```
-g：表示指定用户的用户主组，选项的值可以是用户组的id，也可以是组名
-G：表示指定用户的用户附加组，选项的值可以是用户组的id，也可以是组名
-u:uid，用户的id（用户的标识符），系统默认会从500之后按顺序分配uid，如果不想使用系统分配的，可以通过该选项自定义【类似于腾讯QQ的自选靓号情况】
-l：修改用户名
```

案例：修改zhangsan用户主组为500，附加组改为501
#usermod -g 500 -G 501 zhangsan

案例：修改zhangsan用户用户名，改为wangerma

#usermod -l 新的用户名 旧的用户名

#usermod -l wangerma zhangsan

#### 1.3 设置密码

Linux不允许没有密码的用户登录到系统，因此前面创建的用户目前都处于锁定状态，需要设置密码之后才能登录计算机。

常用语法：`#passwd 用户名`
案例：设置wangerma用户的密码

在设置密码的时候也是没有任何输入提示的，放心输入，确保两次输入的密码一致，按下回车即可。

也可以使用弱密码，但是不建议，否则会看到以下的提示：

![ruo](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406000257.png)

设置密码之后shadow文件中的体现, 能看出lisi是没有密码的

![mima](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406000423.png)

在设置用户密码之后可以登录账号，例如此处需要登录 wangerma切换用户命令：

`#su [用户名]`（switch user）
如果用户名不指定则表示切换到root用户。![密码](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406000904.png)

切换用户需要注意的事项：

```
a.从root往普通用户切换不需要密码，但是反之则需要root密码；

b.切换用户之后前后的工作路径是不变的；

c.普通用户没有办法访问root用户家目录，但是反之则可以；
```

#### 1.4 删除用户

常用语法：`#userdel 选项 用户名`

Userdel:user delete（用户删除）常用选项：
-r：表示删除用户的同时，删除其家目录；

案例：删除wangerma用户

![shanchu](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406001132.png)

![erma](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406001307.png)

注意：已经登录的wangerma用户删除的时候提示删除失败，但是没有登录的lisi用户可以正常删除。
解决办法：简单粗暴，kill对应用户的全部进程

![killerma](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406001518.png)

提示：所有跟用户操作的命令（除passwd外）只有root超级管理员有权限执行。

### 2、用户组管理

每个用户都有一个用户组，紧统可以对一个用户组中的所有用户进行集中管理。不同

Linux系统对用户组的规定有所不同，如Linux下的用户属于与它同名的用户组，这个

用户组在创建用户时同时创建。

用户组的管理涉及用户组的添加、删除和修改。

组的增加、删除和修改实际上就是对/etc/group文件的更新。

![jiegou](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406001842.png)

文件结构：

```
用户组名：密码：用户组ID：组内用户名

密码：X表示占位符，虽然用户组可以设置密码，但是绝大部分的情况下不设置密码；

组内用户名：表示附加组是该组的用户名称；
```



#### 2.1 用户组添加

常用语法：`#groupadd 选项 用户组`名

常用选项：

-g：类似用户添加里的“u”，g表示选择自己设置一个自定义的用户组ID数字：如果自己不指定，则默认从500之后递增；

![group](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406002305.png)

![success1](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406002359.png)

#### 2.2 用户组编辑

常用语法：`#groupmod 选项 用户组名`

常用选项：

-g：类似用户修改里的“-u”，-g表示选择自己设置一个自定义的用户组ID数字

-n：类似于用户修改“-l”，表示设置新的用户组的名称

案例：修改Administrators用户组，将组ID从502改成520，将名称改为admins.

![改名](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406002710.png)

#### 2.3 用户组删除

常用语法：`#groupdel 用户组名`

![del](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406002813.png)

![删不了](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406002847.png)

注意：当如果需要删除一个组，但是这个组是某个用户的主组时，则不允许删除；如果确实需要删除，则先从组内移出所有用户。

![yichu](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406003332.png)

## 三、网络设置

首先知道网卡配置文件位置：/etc/sysconfig/network-scripts

![net](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406115118.png)

在目录中网卡的配置文件命名格式：ifcfg-网卡名称

![eth0](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406115520.png)

```
ONBOOT：是否开机启动
BOOTPROTO:ip地址分配方式，DHCP表示动态主机分配协议
HWADDR：硬件地址，MAC地址
```

如果后续需要重启网卡怎么去操作呢？

```
#service network restart
```

![restart](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406115751.png)

在有的分支版本中可能没有service命令来快速操作服务，但是有一个共性的目录：/etc/init.d这个目录中放着很多服务的快捷方式。
此处重启网卡命令还可以使用：
#/etc/init.d/network restart 

![res](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406120202.png)

**扩展：**如果修改网卡的配置文件，但是配置文件的目录层次很深，此时可以在浅的目录中创建一个快捷方式（软连接），方便以后去查找
#ln -s原始文件的路径快捷方式的路径

![ln](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406120542.png)

通过ls-l可以列出如下的效果：

![l](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406120723.png)

其中，文件类型位置的“l”表示其类型为link（连接类型），后面的“->”指向的是原始文件路径

**扩展2：**如何去重启单个网卡？
停止某个网卡：#ifdown 网卡名 

开启某个网卡：#ifup 网卡名

例如：需要停止-启动（重启）eth0网卡，则可以输入

```
#ifdown eth0

#ifup eth0
```

提示：在实际工作的时候不要随意禁网卡

## 四、ssh服务（重点）

ssh（secure shell，安全外壳协议），该协议有2个常用的作用：远程连接协议、远程文件传输协议。

协议使用端口号：默认是22

可以是被修改的，如果需要修改，则需要修改ssh服务的配置文件：

#/etc/ssh/ssh config

![ssh](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406125912.png)

端口号可以修改，但是得注意2个事项：

```
a.注意范围，端口范围是从0-65535；

b.不能使用别的服务已经占用的端口；
```

服务启动/停止/重启

```
#service sshd start/stop/restart

#/etc/init.d/sshd start/stop/restart
```

![sshd](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406130328.png)

### 1、远程终端

终端工具主要帮助运维人员连接远程的服务器，常见终端工具有：Xshell、secureCRT、Putty等。以putty为例：

- 获取服务器ip地址，可以通过ifconfig命令进行查看，然后顺手测试ip的连接相通性

![ping](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406130742.png)

- 打开putty，输入相关的信息

![putty](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406131149.png)

- 在弹出key确认的时候点击“是”，以后不会再提示

![yes](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406131317.png)



- 输入登录信息

![degnlu](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406131641.png)

### 2、SSH服务文件传输

可视化的界面传输工具：Filezilla
安装好之后可以查看到桌面图标：

![tubiao](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406134334.png)

- 选择“文件”-“站点管理器（ctl+s）”

![zhandian](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406134905.png)

- 连接之后的效果

![jiemian](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406135146.png)

- 从本地windows上传文件到linux中方式

   支持直接拖拽文件，也可以右键本地需要上传的文件，然后点选“上传”即可

- 下载linux文件到本地

  支持服务器文件直接拖拽到本地，也可以在右侧窗口选择需要下载的文件，右键，点选“下载”

**扩展3：通过命令行工具来传输文件/文件夹**
工具：PSCP.exe （必须通过cmd命令行打开），为了使用方便可以将其放到环境变量目录中

如果不清楚哪些路径是环境变量路径，只需要将其放到C:/Windows目录下即可。

![pscp](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406140543.png)

用法：

```
a.pscp 选项 用户名@linux主机地址:资源路径 windows本地的地址（下载到win）
b.pscp 选项 资源路径 用户名@linux主机地址:远程路径 （上传到linux）
c.pscp 选项 -ls 用户名@linux主机地址  （列出远程路径下结构）
```

```
#pscp -r root@192.168.21.128:/etc E:\tmp
```

在CMD中输入之后输入密码

![pscp1](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406142433.png)

- 上传文件到linux
  将“E:\coursedocs”所有的内容传输到linux下root用户的家目录

```
#pscp -r “E:\coursedocs” root@192.168.21.128:/root
```

# 八. Linux自有服务（2）

## 一、设置主机名

- 回顾：

  ```
  #hostname
  #hostname -f      FQDN（全限定域名）
  ```

- 临时设置主机名（立竿见影），需要切换用户使之生效
  #hostname 设置的主机名

- 永久设置主机名（需要重启）
  先找到一个文件
  /etc/sysconfig/network【主机名的配置文件】

  修改其中的HOSTNAME为自己需要设置的永久主机名

- 修改linux服务器的hosts文件，将yunwei指向本地hosts文件的位置（设置FQDN）：/etc/hosts

  问题：不设置FQDN会怎么样？
  ①很多开源服务器软件（例如Apache）则无法启动，或出现报错；
  ②方便记忆，看到主机名对其作用有一个初步判断；
  ③如果不设置则会影响本地的域名的解析（本地访问）；

## 二、chkconfig

作用：相当于windows下“安全卫士”、“电脑管家”之类的安全辅助工具提供“开机启动项”的一个管理服务。
在linux下不是所有的软件安装完成之后都有开机启动服务，有的可能需要自己去添加。除此之外还可以查看和删除。

#### 1. 开机启动服务查询

#chkconfig --list

![list](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406152144.png)

其中0-6表示各个启动级别
例如：以httpd为例，其3级别为关闭（off），则表示其在3启动形式下默认不启动;

5对应的也是关闭，则表示其在桌面环境下也是开机不启动。

再例如：kdump服务(记录系统崩溃的)，在2，3，4，5的级别下默认开机启动的，其他级别下默认开机不启动

#### 2.删除服务

#chkconfig --del 服务名
例如：删除httpd服务

![del](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406153143.png)

#### 3.添加开机启动服务

#chkconfig --add 服务名(注：服务和进程不一样，必须保证service start能运行)【必须要保证服务正常运行，才可以添加】

#### 4.设置服务在某个级别下开机启动/不启动【重点命令】

#chkconfig --level 连在一起的启动级别 服务名 开/关（on/off）

案例：设置httpd服务在3，5级别下默认开机启动

![level](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406154526.png)

案例：设置httpd服务在5的级别下默认开机不启动

![off](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406154648.png)

## 三、ntp服务

作用：ntp主要是用于对计算机的时间同步管理操作。
时间是对服务器来说是很重要的，一般很多网站都需要读取服务器时间来记录相关信息，如果时间不准，则可能造成很大的影响。

同时服务器时间方式有2个：一次性同步（手动同步）、通过服务自动同步。

上游的概念：

![shangyou](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406160500.png)

### 1.一次性同步时间（简单）

#ntpdate 时间服务器的域名或ip地址
ip地址查看可以访问：http://www.ntp.org.cn/pool.php

![update](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406160945.png)

### 2.设置时间同步服务

服务名：ntpd
启动ntpd服务

```
#service ntpd start 或者 /etc/init.d/ntpd start
```

### 3.设置ntpd服务开机启动：

#chkconfig --list|grep ntpd
#chkconfig --level 35 ntpd on

## 四、防火墙服务

防火墙：防范一些网络攻击。有软件防火墙、硬件防火墙之分。

![fanghuoqiang](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406162421.png)

防火墙选择让请求通过，从而保证网络安全性。

在当前的centos6.5中防火墙有一个名称：iptables(软件名和服务名)【7.x中默认使用的是firewalld】

### 1.查看iptables是否开机启动

![qidong](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406163006.png)

### 2.iptables 服务启动/重启/关闭

```
#service iptables start/restart/stop
/etc/init.d/iptables start/stop/restart
```

### 3.查看iptables的状态（规则）

```
#service iptables status
```

如果iptables没有启动，则提示服务没启动，如果已经启动，则显示防火墙的相关的规则

![iptables](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406164732.png)

### 4.查看规则的命令

```
#iptables -L -n
```

含义：
-L：表示列出规则
-n：表示将单词表达形式改成数字形式显示

### 5.简单设置防火墙规则

```
#允许本地回环接口（即运行本机访问本机）
iptables -A INPUT -s 127.0.0.1 -d 127.0.0.1 -j ACCEPT 
#允许已建立的或相关连的通行
iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT
#允许所有本机向外的访问
iptables -A OUTPUT -j ACCEPT
#允详访问22端口
iptables -A INPUT -p tcp --dport 22 -j ACCEPT
#允许访问80端口
iptables -A INPUT -p tcp --dport 80 -j ACCEPT
#允许ftp服务的21端口
iptables -A INPUT -p tcp --dport 21 -j ACCEPT
#允许FTP服务的20端口
iptables -A INPUT -p tcp --dport 20 -j ACCEPT
#禁止其他未允许的规则访问
iptables -A INPUT -j reject
#禁正其他未允许的规则访问
iptables -A FORWARD -j REJECT（大小写都行）

iptables：主命令
-A:add，添加规则
INPUT：进站请求【出站 output】
-p:protocol，指定协议（icmp/tcp/upd）
--dport：指定端口号
-j：指定行为结果，允许（accept）/禁止（reject）
```

添加完成之后需要保存操作：

```
/etc/init.d/iptables save
```

## 五、rpm管理（重点）

作用：rpm的作用类似于windows上的电脑管家中“软件管理”、安全卫士里面“软件管家”等产品，主要作用是对linux服务器上的软件包进行对应管理操作，管理分为：**查询、卸载、安装**。

### 1.查询某个软件的安装情况

#rpm -ga|grep 关键词

选项：

```
-q：查询，query
-a：全部，all
```

### 2.卸载某个软件

#rpm -e 软件的名称

![xiezai](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406174226.png)

火狐卸载的时候是没有依赖关系的，所以可以直接卸载。
但是在卸载Apache的时候提示无法卸载：

![yilai](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406174528.png)

#rpm -e 软件包名 --nodeps(dependency依赖)

![nodeps](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406174853.png)

### 3.软件的安装

要想装软件，和windows下一样，先得找到安装包。
软件包的获得方式：

```
a.去官网去下载；

b.不介意老版本的话，可以从光盘（或者镜像文件）中读取；
```

此处以光盘文件为例：
查看块状设备的信息：
#lsblk（list block devices）查看块状设备(光盘/u盘等)的信息

![lsblk](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406181351.png)

```
Name：名称
Size：设备大小
Type：类型
MountPoint：挂载点（类似windows下盘符）
```

- 扩展：光盘的挂载和解挂
  **a.解挂操作**
  命令：umount
  语法：`#umount 当前设备的挂载点（路径）`

  此时，相当于U盘在windows上已经被弹出了，但是没有拔下电脑USB接口。

  **b.挂载光盘**
  命令：mount

  语法：`#mount 设备原始地址 要挂载的位置路径`
  设备原始地址：地址统一都在/dev下，然后根据大小确定具体name值，拼凑在一起组成原始地址，例如当前：“/dev/sro”
  要挂载的位置路径：挂载目录一般都在mnt.下，也可以在mnt下建目录，此处以“/mnt/dvd”为例

![guangpan](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406182800.png)

***

**安装软件的命令：**
#rpm -ivh 软件包完整名称

选项：

```
-i: install，安装

-v：显示进度条

-h：表示以“#”形式显示进度条
```

![ivh](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406183445.png)

## 六、cron/crontab计划任务（重点）

作用：操作系统不可能24小时都有人在操作，有些时候想在指定的时间点去执行任务（例如：每天夜里2点去重新启动Apache），此时不可能真有人每天夜里2点去执行命令，此时可以交给计划任务程序去执行操作。

语法：#crontab选项
常用选项：

```
-l：list，列出指定用户的计划任务列表

-e:edit，编辑指定用户的计划任务列表

-u:user，指定的用户名，如果不指定，则表示当前用户

-r:remove，删除指定用户的计划任务列表
```

- 列出

![列出](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406183949.png)

编辑计划任务（重点）

```
计划任务的规则语法格式，以行为单位，一行则为一个计划：

分 时 日 月 周 需要执行的命令

分 时 日 月 周 需要执行的命令
```

例如：如果想要每天的0点0分执行reboot指令，

则可以写成

​	0 0 * * * reboot

**取值范围：**

```
分：0~59

时：0~23

日：1~31

月：1~12

周：0~7，0和7表示星期天

```

**四个符号：**

```
*：表示取值范围中的每一个数字

：做连续区间表达式的，要想表示1~7，则可以写成：1-7

/：表示每多少个，例如：想每10分钟一次，则可以在分的位置写：*/10

,：表示多个取值，比如想在1点，2点6点执行，则可以在时的位置写：1,2,6
```

**问题1：**每月1、10、22日的4：45重启network服务

```
45 4 1,10,22 service network restart
```

**问题2：**每周六、周日的1：10重启network服务

```
10 1 6,0 * * service network restart
```

**问题3：**每天18：00至23：00之间每隔30分钟重启network 服务

```
*/30 18-23 * * * service network restart
```

**问题4：**每隔两天的上午8点到11点的第3和第15分钟执行一次重启

```
3,15 8-11 */2 * * reboot
```

案例：真实测试案例，每1分钟往root家目录中的RT.txt中输入当前的时间信息，为了

看到效果使用追加输出

计划任务：

```
*/1 * * * * date +"%F %T” >> /root/RT.txt
```

Crontab权限问题：本身是任何用户都可以创建自己的计划任务。
但是超级管理员可以通过配置来设置某些用户不允许设置计划任务(黑名单);
配置文件位于：
/etc/cron.deny里面写用户名，一行一个

![ywq](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406194807.png)

![yw](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406194646.png)

还有一个配置文件：（白名单）
/etc/cron.allow（本身不存在，自己创建）

注意：白名单优先级高于黑名单，如果一个用户同时存在两个名单文件中，则会被默认允许创建计划任务。

# 九、Linux 的权限管理操作

Linux的权限操作与用户、用户组是兄弟操作。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406195332.png" alt="权限" style="zoom:80%;" />



## 一、权限概述

总述：Linux系统一般将文件可存/取访问的身份分为3个类别：owner、group、others，且3种身份各有read、write、execute等权限。

### 1、权限介绍

- 什么是权限？
  在多用户（可以不同时）计算机系统的管理中，权限是指某个特定的用户具有特定的系统资源使用权力，像是文件夹、特定系统指令的使用或存储量的限制。

- 在Linux中分别有读、写、执行权限：
  读权限：
  对于文件夹来说，读权限影响用户是否能够列出目录结构对于文件来说，读权限影响用户是否可以查看文件内容
- 写权限：
  对文件夹来说，写权限影响用户是否可以在文件夹下“创建/删除/复制到/移动到”文档
  对于文件来说，写权限影响用户是否可以编辑文件用
- 执行权限：
  一般都是对于文件来说，特别脚本文件。

### 2、身份介绍

**Owner身份**（文件所有者，默认为文档创建者）

由于Linux是多用户、多任务的操作系统，因此可能常常有多人同时在某台主机上工作，但每个人均可在主机上设置文件的权限，让其成为个人的“私密文件”，即个人所有者。因为设置了适当的文件权限，除本人（文件所有者）之外的用户无法查看文件内容。
例如某个MM给你发了一封Email情书，你将情书转为文件之后存档在自己的主文件夹中。为了不让别人看到情书的内容，你就能利用所有者的身份去设置文件的适当权限，这样，即使你的情敌想偷看你的情书内容也是做不到的。

**Group身份**（与文件所有者同组的用户）

与文件所有者同组最有用的功能就体现在**多个团队在同一台主机上开发资源**的时候。例如主机上有A、B两个团体，A中有a1，a2，a3三个成员，B中有b1，b2两个成员，这两个团体要共同完成一份报告F。由于设置了适当的权限，A、B团体中的成员都能互相修改对方的数据，但是团体C的成员则不能修改F的内容，甚至连查看的权限都没有。同时，团体的成员也能设置自己的私密文件，让团队的其它成员也读取不了文件数据。在Linux中，每个账户支持多个用户组。如用户al、b1即可属于A用户组，也能属于B用户组。【主组和附加组】

**Others身份**（其他人）

这个是个相对（相对于所有者）概念。打个比方，大明、二明、小明一家三兄弟住在一间房，房产证上的登记者是大明（owner），那么，大明一家就是一个用户组，这个组有大明、二明、小明三个成员；另外有个人叫张三，和他们三没有关系，那么这个张三就是其他人了。
同时，大明、二明、小明有各自的房间，三者虽然能自由进出各自的房间，但是小明不能让大明看到自己的情书、日记等，这就是文件所有者（用户）的意义。

**Root用户**（超级用户）

在Linux中，还有一个神一样存在的用户，这就是root用户，因为在所有用户中它拥有最大的权限，所以管理着普通用户。

### 3、Linux的权限介绍

要设置权限，就需要知道文件的一些基本属性和权限的分配规则。在Linux中，ls命令常用来查看文件的属性，用于显示文件的文件名和相关属性。

```
#ls -l 路径      【ls -l等价于ll】
```

![权限](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406202036.png)

拯红的部分就是Linux的文档权限属性信息。

Linux中存在用户、用户组和其他人概念，各自有不同的权限，对于一个文档来说，其权限具体分配如下：

![文档](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406202145.png)

十位字符表示含义：

```
第1位：表示文档类型，取值常见的有“d表示文件夹”、“-表示文件”、“l表示软连接”、“s表示套接字“等等；
第2-4位：表示文档所有者的权限情况，第2位表示读权限的情况，取值有r、-；第3位表示写权限的情况，w表示可写，-表示不可写，第4位表示执行权限的情况，取值有x、-。
第5-7位：表示与所有者同在一个阻的用户的权限情况，第5位表示读权限的情况，取值有r、-；第6位表示写权限的情况，w表示可写，-表示不可写，第7位表示执行权限的情况，取值有x、-。
第8-10位：表示除了上面的前2部分的用户之外的其他用户的权限情况，第8位表示读权限的情况，取值有r、-；第9位表示写权限的情况，w表示可写，-表示不可写，第10位表示执行权限的情况，取值有x、-。
```

权限分配中，均是rwx的三个参数组合，且位置顺序不会变化。没有对应权限就用-代替。

例如：以下一个文档权限是怎么样的？

![yunwei](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406215850.png)

```
a.基是文件夹类型
b.所有者：拥有全部权限（读写执行）
c.同组用户：可读、可执行
d.其他用户：可读、可执行
```

## 二、权限设置

语法：#chmod 选项权限模式文档

注意事项：
	常用选项：
	-R：递归设置权限（当文档类型为文件夹的时候）
权限模式：就是该文档需要设置的权限信息

文档：可以是文件，也可以是文件夹，可以是相对路径也可以是绝对路径。
注意点：如果想要给文档设置权限，操作者要么是root用户，要么就是文档的所有者。

### 1、字母形式

![shezhi](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406220428.png)

给谁设置：

```
u：表示所有者身份owner（user）
8：表示给所有者同组用户设置（group）
o：表示others，给其他用户设置权限a：表示all，给所有人（包含ugo部分）
```

设置权限如果在设置权限的时候不指定给谁设置，则默认给所有用户设置

权限字符：

```
r：读
w：写
x：表示执行
-: 没有权限
```

权限分配方式：

```
+：表示给具体的用户新增权限（相对当前）
：表示删除用户的权限（相对当前）
=：表示将权限设置成具体的值（注重结果）
```

例如：需要给anaconda-ks.cfg.文件（-rw----）设置权限，要求所有者拥有全部的权限，同组用户拥有读和执行权限，其他用户只读权限

![权限](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406220758.png)

答案：

1. #chmod u+x,g+rx,o+r anaconda-ks.cfg

![+](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406221141.png)

2. #chmod u=rwx,g=rx,o=r ahaconda-ks.cfg

![=](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406221420.png)

例如：如果anaconda-ks.cfa文件什么权限都没有，可以使用root用户设置所有人都有执行权限，则可以写成

```
#chmod +x anaconda-ks.cfg
#chmod a=x anaconda-ks.cfg
#chmod a+x anaconda-ks.cfg
```

提示：当文拥有执行权限，则其颜色在终端是绿色。

### 2、数字形式

经常会在一些技术性的网页上看到类似于#chmod 777a.txt这样的一个权限，这种形式称之为数字形式权限（777）。

```
读：r	4
写：w	2
执行：x  1
没有任何权限：0
```

![数字](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406221945.png)

例如：需要给anaconda-ks.cfg设置权限，权限要求所有者拥有全部权限，同组用户拥有读热行权限，其他用户只读。

```
全部权限（u）：读+写+执行=4+2+1=7
读和执行（g）：读+执行=4+1=5
读权限（o）：读=4
```

由上得知权限为：754
#chmod 754 anaconda-ks.cfg

面试题：用超级管理员设置文档的权限命令是#chmod-R 731 aaa，请问这个命令有没有什么不合理的地方？

```
拥有者：7=4+2+1=读+写+执行
同组用户：3=2+1=写+执行
其他用户：1=1=执行
```

注意：在写权限的时候千万不要设置类似于上面的这种“奇葩权限”(只能写不能读)。但凡出现2与3的数字，则该权限有不合理的情况。

### 3、注意事项

使用root用户创建一个文件夹（/oo），权限默认，权限如下：

![oo](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406224026.png)

需要在oo目录下创建文件（oo/xx.txt）,需要给777权限：

![quanxian](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406224245.png)

切换到test用户（不是文档所有者，也不是同组用户，属于other部分）：

```
问题1：test用户是否可以打开oo/xx.txt文件？【能打开】
问题2：test用户是否可以编辑 oo/xx.txt文件？【可以】
问题3：test用户是否可以删除oo/xx.txt文件？【不可以，同样还不允许创建文件/文件夹、移动文件、重命名文件】
```

在Linux中，如果要删除一个文件，不是看文件有没有对应的权限，而是看文件所在的目录是否有写权限，如果有才可以删除

## 三、属主与属组设置

属主：所属的用户（文件的主人）
属组：所属的用户组

![root](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406225259.png)

前面的那个root就是属主
后面的那个root就是属组

这两项信息在文档创建的时候会使用创建者的信息（用户名、用户所属的主组名称）

如果有时候去删除某个用户，则该用户对应的文档的属主和属组信息就需要去修改。

### 1、chown(重点)

作用：更改文档的所属用户
语法：`#chown -R username 文档路径`

案例：将刚才root用户创建的oo目录，所有者更改为test
#chown test oo/

### 2、chgrp(了解)

作用：更改文档的所属用户组
语法：`#chgrp -R groupname 文档的路径`

案例：将刚才root用户创建的oo目录，所有者更改为test，并且将所属用户组也改为test
#chgrp test oo/

![chgrp](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406230225.png)

思考，如何通过一个命令实现既可以更改所属的用户，也可以修改所属的用户组呢？
答：可以实现的，通过chown命令语法：`#chown -R username:groupname 文档路径`

案例：要求只使用chown.指令，将oo目录的所属用户和用户组改回成root，并且包含其子目录

![u:g](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406230600.png)

## 四、扩展（1）

问题：reboot、shutdown、init、halt、user管理，在普通用户身份上都是操作不了，但是有些特殊的情况下又需要有执行权限。又不可能让root用户把自己的密码告诉普通用户，这个问题该怎么解决？

该问题是可以被解决的，可以使用**sudo**（switch user do）命令来进行权限设置。sudo可以让管理员（root）事先定义某些特殊命令谁可以执行。

默认sudo中是没有除root之外用户的规则，要想使用则先配置sudo。
Sudo 配置文件：/etc/sudoers

![sodo](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406231428.png)

a.配置sudo文件请使用“visudo”，打开之后其使用方法和vim一致

b.配置普通用户的权限

![all](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406231732.png)

Root: 表示用户名，如果是用户组，则可以写成“%组名”

![yonghuzu](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406232201.png)

ALL：表示允许登录的主机（地址白名单）

(ALL)：表示以谁的身份执行，ALL表示root身份

ALL：表示当前用户可以执行的命令，多个命令可以使用“,”分割

案例：本身test用户不能添加用户，要求使用sudo配置，将其设置为可以添加用户，并且可以修改密码（但是不能修改root用户密码）

**注意：**在写sudo规则的时候不建议写直接形式的命令，而是写命令的完整路径。路径可以使用which命令来查看
语法：#which 指令名称

![!](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406232851.png)

![vi](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406233006.png)

在添加好对应的规则之后就可以切换用户，切换到普通用户test，再去执行：

![error](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406233157.png)

#sudo 需要执行的指令

![sudo](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406233407.png)

在输入sudo指令之后需要输入当前的用户密码进行确认的操作（不是root用户密码），输入之后在接下来5分钟内再次执行sudo指令不需要密码。

特别注意：此处按照案例要求，不能让test用户修改root密码，因此规则还需要调整，不然其可以修改root 密码的：

禁止修改 root 密码的配置：/usr/bin/passwd[A-Za-z]*，！/usr/bin/passwd root

![!sudo](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406234620.png)

补充：在普通用户下怎么查看自己具有哪些特殊权限呢？
#sudo -l

![sudo-l](https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200406234835.png)

最后：sudo不是任何Linux分支都有的命令，常见centos与ubuntu都存在sudo命令。

# 十. Linux的网络基础

## 一、网络相关概述

### 1、网络发展

**信息传递**
■远古时期，人们就通过简单的语言、壁画等方式交换信息
■千百年来，人们一直在用语言、图符、钟鼓、烟火、竹简、纸书等传递信息
■古代人的烽火狼烟、飞鸽传信、骚马邮递现代社会中，交通警的指挥手语、航海中的旗语等
■这些信息传递的基本方式都是依靠人的视觉与听觉电的产生
■1831年，法拉第制出了世界上最早的第一台发电机
■1866年，德国人西门子（Siemens）制成世界上第一台大功率发电机
■1837年，美国人塞缪乐·莫乐斯成功地研制出世界上第一台电磁式电报机

■1844年5月24日，莫乐斯在国会大厦联邦最高法院会议厅进行了“用莫尔斯电码”
发出了人类历史上的第一份电报，从而实现了长途电报通信

**网络诞生**
■1957年，前苏联发射了第一颗人造卫星，震惊了美国
■1958年美国成立了国防部高级研究计划署（ARPA，Advanced Research Projects Agency），应对冷战形势，ARPA是一个管理机构，没有实验室和科学家

■1969年，ARPANET(阿帕网)开始联机，因此1969年被称为Internet元年

**网络分类（记忆）**
■局域网（Lodal Area Network，LAN）是指范围在几百米到十几公里内办公楼群或校园内的计算机相互连接所构成的计算机网络。
■城域网（Metropolitan Area Network，MAN）所采用的技术基本上与局域网相类似，只是规模上要大一些。城域网既可以覆盖相距不远的几栋办公楼，也可以覆盖一个城。
■广域网（Wide Area Network，WAN）通常跨接很大的物理范围，如一个国家。
除了上述的划分，网络还可以按照所有者分为公网、私网是两种Internet的接入方式。
公网接入方式：上网的计算机得到的IP地址是Internet上的非保留地址，公网的计算机和Internet上的其他计算机可随意互相访问。私网则反之。

### 2、ip地址（重点）

IP是英文Internet Protocol的缩写，意思是“网络之间互连的协议”，也就是为计算机网络相互连接进行通信而设计的协议。
IP地址类型分为：**公有地址、私有地址**。

- 公有地址
  公有地址（Public address）由Inter NIC（Internet Network Information Center 因特网信息中心）负责。这些IP地址分配给注册并向Inter NIC提出申请的组织机构。通过它直接访问因特网。
- 私有地址（重点）
  私有地址（Private address）属于非注册地址，专门为组织机构内部使用。以下列出留用的内部私有地址：
  A类10.0.0.0--10.255.255.255
  B类172.16.0.0-172.31.255.255
  C类192.168.0.0-192.168.255.255
  IP地址按类型可以分为三类：

IP地址按类型可以分为三类：
<img src="https://i.loli.net/2020/04/07/Lof3l7SKqdGrTB2.png"/>

### 3、网卡

<img src="https://i.loli.net/2020/04/07/sjdQfu4o9Xcxg7l.png"/>

网卡是一个网络组件，属于硬件范畴，主要负责计算机之间数据的封装和解封。
MAC地址：网卡的物理地址，网卡设备的编号，默认情况是全球唯一的（16进制）。
与IP地址的区别：
	■长度不同。IP地址为32位，MAC地址为48位。
	■分配依据不同。

<img src="https://i.loli.net/2020/04/07/RA31bvY6DVtKSjJ.png"/>

网络寻址方式不同。OSI参考模型，ip地址是基于第三层工作（网络层），mac地址是第二层（数据链路层）

### 4、网线

网钱是连接局域网必不可少的。在局域网中常见的网线主要有双绞线（RJ45接口）、铜轴电缆、光缆三种。

<img src="https://i.loli.net/2020/04/07/IZFibDs2ftzSvKl.png"/>

​         双绞线				铜轴电缆					光缆

### 5、交换机

交换机（Switch）意为“开关”，是一种用于电（光）信号转发的网络设备，交换机它可以为接入交换机的任意两个网络节点提供独享的电信号通路。

<img src="https://i.loli.net/2020/04/07/MzvTeckwfmAbpxD.png"/>

目前，交换机品牌比较有名的是：华为、华三（h3c）、思科、锐捷。

### 6、路由器

路由器（Router）又称网关设备（Gateway）是用于连接多个逻辑上分开、相对独立的网络。

<img src="https://i.loli.net/2020/04/07/6QVLZO1UcKCAud4.png"/>

### 7、拓扑结构图

所谓“拓扑”就是把实体抽象成与其大小、形状无关的“点”，而把连接实体的线路抽象成“线”，进而以图的形式来表示这些点与线之间关系的方法，其目的在于研究这些点、线之间的相连关系。表示点和线之间关系的图被称为拓扑结构图。
常见的几种拓扑结构图：

<img src="https://i.loli.net/2020/04/07/WjHKVRNhmS1dq6E.png"/>

<img src="https://i.loli.net/2020/04/07/5BxdFvReHLMs7Py.png"/>

<img src="https://i.loli.net/2020/04/07/kGTPhDr4eoSxLEH.png"/>

<img src="https://i.loli.net/2020/04/07/J3twqzMG7KBkiZY.png"/>

## 二、网络相关命令

### 1、ping

作用：检测当前主机与目标主机之间的连通性（不是100%准确，有的服务器是禁ping）

语法：`#ping 主机地址（ip地址、主机名、域名等）`

<img src="https://i.loli.net/2020/04/07/jk4ADthqywCV7Ub.png"/>

该命令可以跨平台，windows下也可以使用，语法一致。（区别在于Linux下默认一致发送，windows下默认发送4个数据包，如果加-t就可以一直发了）

### 2、netstat

作用：表示查看网络的连接信息
语法：`#netstat -tnlp`（t；tcp协议，-n：将字母转化成数字，l：列出状态为监听，
-p：显示进程相关信息）
	  `#netstat -an` （-a：表示全部，-n：将字母转化为数字）

TCP/IP协议需要使用这个命令。

### 3、traceroute

作用：查找当前主机与目标主机之间所有的网关（路由器，会给沿途各个路由器发送icmp数据包，路由器可能会不给响应）。该命令不是内置命令，需要安装，但是目前的已经安装好了（之前选了开发工具）。

语法：`#traceroute 主机地址`

<img src="https://i.loli.net/2020/04/07/tALnaerIPDxm3CF.png"/>

类似于查看快递的跟踪路由；

扩展：在windows下也有类似的命令：`tracert 主机地址`

<img src="https://i.loli.net/2020/04/07/iGqdH5SlDz8tQ4e.png"/>

在线工具网址：http://tool.chinaz.com

### 4、arp地址解析协议

ARP（Address Resolution Protocol），是根据IP地址获取（MAC）物理地址的协议。

<img src="https://i.loli.net/2020/04/07/bkjq672xlSCKGeY.png"/>

当一个主机发送数据时，首先查看本机MAC地址缓存中有没有目标主机的MAC地址，如果有就使用缓存中的结果；如果没有，ARP协议就会发出一个广播包，该广播包要求查询目标主机IP地址对应的MAC地址，拥有该IP地址的主机会发出回应，回应中包括了目标主机的MAC地址，这样发送方就得到了目标主机的MAC地址。如果目标主机不在本地子网中，则ARP解析到的MAC地址是默认网关的MAC地址。
常用语法：`#arp -a`   查看本地缓存mac表

`#arp -d 主机地址`   删除指定的缓存记录

<img src="https://i.loli.net/2020/04/07/uHmKyY7v4QjcZJr.png"/>

该命令在windows下同样适用。

### 5、tcpdump（了解）

作用：抓包，抓取数据表
常用语法：
#tcpdume 协议 port 端口
#tcpdump 协议 port 端口 host 地址
#tcpdump -i 网卡设备名

查看22端口（ssh）的数据包：

<img src="https://i.loli.net/2020/04/07/HG6ZV8C2Ye3XT7m.png"/>

```
00：09：17.xxxx 监听数据的时分秒
IP：使用的协议类型
192.168.21.1数据包的一个方向（来自）
192.168.21.136数据包的另外一个方向（到达）
```

## 三、项目上线流程（必须掌握）

### 1、服务器选配购买项目上线服务器必须是外网服务器。

一般服务器有2种情况：购买真实服务器、购买云服务器。
	购买真实服务器一次性成本过高，所以现在基本都是选择云服务器。

云服的厂商：阿里云、腾迅云、知道创宇（加速乐）、华为云、盛大云、新浪云（sae）、亚马逊云等等。
以后以阿里云为例：
官网：http://www.aliyun.com

①打开阿里云官网，选择产品中的“云服务器ECS”

<img src="https://i.loli.net/2020/04/07/f78HlhUy9uLCpkn.png" style="zoom: 33%;" />

<img src="upload%5Cimage-20200407193942555.png" alt="image-20200407193942555" style="zoom: 60%;" />

②选择具体的配置

<img src="https://i.loli.net/2020/04/07/SLngBQeOAxMVcIF.png"/>

<img src="https://i.loli.net/2020/04/07/m8Nl3jVKstP2Co5.png"/>

<img src="https://i.loli.net/2020/04/07/J8UA3XWcugQK4G6.png"/>

<img src="https://i.loli.net/2020/04/07/LmhX6JAuMiUHbxv.png"/>

<img src="https://i.loli.net/2020/04/07/m5MS7UQewdNZs9y.png"/>

<img src="https://i.loli.net/2020/04/07/UmtzNChvs2WHjgc.png"/>

<img src="https://i.loli.net/2020/04/07/Dar4RMIeT7ZOC5b.png"/>

<img src="https://i.loli.net/2020/04/07/gX9Hhy7zVOspYGm.png"/>

进入后台查看信息：

<img src="https://i.loli.net/2020/04/07/W5ZTwElrJjpm67i.png"/>

需要重置密码的话，则可以选择右侧“更多”选择“重置密码”，后重启服务器，最后可以通过远程终端连接服务器：

<img src="https://i.loli.net/2020/04/07/tYSpwhQZRPoNALf.png"/>

### 2、域名购买

①在首页产品中找到域名注册

<img src="https://i.loli.net/2020/04/07/X6BK2cCOsEG1Akz.png"/>

域名注册得先查看是否可以注册：

<img src="https://i.loli.net/2020/04/07/YvZEpMunGtc2kxS.png"/>

选择需要的域名：

<img src="https://i.loli.net/2020/04/07/Jnxsw5h2maqDMlg.png"/>

确认购买信息：

<img src="https://i.loli.net/2020/04/07/bfWOU85rTKctp7E.png"/>

购买之后就可以在后台控制面板中去查看域名情况。

### 3、域名备案

备案：当申请域名的人要想在国内使用域名，则需要向当地的通信管理局（省级）去申请报备。
备案前提：想要使用境内服务器的话，则必须得备案。
在管理后台点击“ICP备案系统”

<img src="https://i.loli.net/2020/04/07/iDWknwQs6FpgU1T.png" style="zoom:67%;" />

点击新增主体备案：

<img src="https://i.loli.net/2020/04/07/JgOFnxj7YCIM1Hk.png"/>

填写完基本信息之后点击增加网站：

<img src="https://i.loli.net/2020/04/07/3ZfhGvxUmRX7EdV.png" style="zoom:67%;" />

备案服务号可以在控制台顶部去获取：

<img src="https://i.loli.net/2020/04/07/f2kiLSzM9HY3mxq.png"/>

申请到备案服务号之后填写继续：

<img src="https://i.loli.net/2020/04/07/Hoy3Eb769k14VIG.png" style="zoom:67%;" />

会让用户下载一个图片：网站真实性核验单下载打印，填写好上传到阿里云备案系统中。
后面等待初审，初审通过之后继续下一步（初审时间一般1天即可）

拍照（备案幕布）

上传照片

等待管局审核（到这个步骤基本是已经通过，审核周期一般是15个工作日）。

等待审核通过，就会收到工信部发送的短信与邮件通知，邮件中有备案号和备案密码。

### 4、域名解析

点击“解析”

<img src="https://i.loli.net/2020/04/07/vdLEVKNn7DtXeoZ.png"/>

解析：将域名绑定到一个服务器地址的操作

DNS:domain name server，用于将域名转化成ip地址的服务器。

<img src="https://i.loli.net/2020/04/07/YVU3RDFQo298WxB.png" style="zoom:67%;" />

点击右上角的添加记录：

<img src="https://i.loli.net/2020/04/07/uNx46HCUDJTP5zL.png" style="zoom:67%;" />

选择记录

<img src="https://i.loli.net/2020/04/07/Hcr2CoRMdgYsPAl.png" style="zoom:67%;" />

例如：需要将www.linux123.xyz解析到之前购买的云主机上，则解析可以设置如下：

<img src="https://i.loli.net/2020/04/07/s5fdaFt8HpQXmr9.png" style="zoom:67%;" />

解析之后可以通过在线ping命令检测效果：

<img src="https://i.loli.net/2020/04/07/EcZTdNX3rOQyPJx.png" style="zoom:67%;" />

### 5、配置生产环境（最后1天）

### 6、上传代码

此时需要使用上传工具：pscp，filezilla。

# 十一. Shell基础

## 一、关于shell

### 1、什么是shell？

Shell（外壳）是一个用c语言编写程序，它是用户使用Linux的桥梁。Shell既是一种命令语言，又是一种程序设计语言。
Shell 是指一种应用程序，这个应用程序提供了一个界面，用户通过这个界面访问操作系统内核的服务。什么是脚本？
脚本简单地说就是一条条的文字命令，这些文字命令是可以看到的（如可以用记事本打开查看、编辑）。
常见的脚本：JavaScript（JS,前端），VBScript，ASP，JSP，PHP（后端），SQL(数据库操作语言)，Perl，Shell，python，Ruby，JavaFX，Lua等。
为什么要学习和使用shell？

Shell 属于内置的脚本

程序开发的效率非常高，依赖于功能强大的命令可以迅速地完成开发任务(批处理)

常见的shell种类？
在linux中有很多类型的shell，不同的shell具备不同的功能，shell还决定了脚本中函数的语法，Linux中默认的shell是**/bin/bash**（重点），流行的shell有ash、bash、ksh、csh、zsh等，不同的shell都有自己的特点以及用途。
csh cshell 使用的是“类C”语法csh是具有c语言风格的一种shell，其内部命令有52个，较为庞大。目前使用的并不多，已经被/bin/tcsh所取代。
ksh Korn shell的语法与Bourne shell相同，同时具备了Cshell的易用特点。许多安装脚本都使用ksh，ksh有42条内部命令，与bash相比有一定的限制性。
tcsh tcsh是csh的增强版，与Cshell 完全兼容。

sh是一个快捷方式，已经被/bin/bash所取代。
nologin指用户不能登录

<img src="https://i.loli.net/2020/04/07/vMSVXG1f3kTwqZg.png" style="zoom: 67%;" />

zsh目前Linux 最庞大的一种shell:zsh。它有84个内部命令，使用起来也比较复杂。一般情况下，不会使用该shell。
bash大多数Linux系统默认使用的shell，bash shell 是Bourne shell的一个免费版本，它是最早的Unixshell，bash还有一个特点，可以通过help命令来查看帮助。包含的功能几乎可以涵盖shell所具有的功能，所以一般的shel脚本都会指定它为执行路径。

### 2、shell入门

编写规范：

```
代码规范：
#!bin/bash     [指定告知系统当前这个脚本要使用的 shell解释器]
Shell 相关指令
文件命名规范：
文件名.sh           sh是linux下bash shell的默认后缀
```

使用流程：

```
①创建.sh文件  touch/vim
②编写shell代码
③执行shell脚本      脚本必须得有执行权限
```

案例1：创建 test.sh，实现第一个shell脚本程序，输出hello world.
输出命令：`#echo 123`

注意：输出的内容如果包含字母和符号（不包含变量），则需要用引号包括起来。如果是纯数字可以包也可以不包。

<img src="https://i.loli.net/2020/04/07/REwFM1PWjXvBUDm.png" style="zoom:67%;" />

<img src="https://i.loli.net/2020/04/07/QNFX2ELdDIGToeY.png" style="zoom:67%;" />

<img src="https://i.loli.net/2020/04/07/n63DAP9jItmTfFc.png" style="zoom:67%;" />

注意，这里在运行时一定要写成`/test.sh`，而不是test.sh，运行其它二进制的程序也一样，直接写 test.sh，Linux系统会去PATH（环境变量）里寻找有没有叫test.sh的，而只有
/bin，/sbin，/usr/bin，/usr/sbin 等在PATH里，你的当前目录通常不在PATH里，所以写成test.sh 是会找不到命令的，要用/test.sh 告诉系统说，就在当前目录找。

案例2：使用root 用户账号创建并执行test2.sh，实现创建一个shelltest用户，并在其家目录中新建文件try.html。

<img src="https://i.loli.net/2020/04/07/qauV5wyKMP9CO23.png" style="zoom:67%;" />

<img src="https://i.loli.net/2020/04/07/tY34odLvjbSVcEJ.png" style="zoom:67%;" />

脚本执行的另外一个方式：`/bin/bash 脚本的路径`（了解）

Shell 脚本分为简单的写法（简单命令的堆积）和复杂写法（程序的设计）

## 二、shell进阶（重点）

### 1、变量

#### 1.1、变量的含义

##### a.什么是量

量就是数据.

##### b.什么是变量

数据可以发生改变就是变量。
在一个脚本周期内，其值可以发生改变的量就是变量

##### c.什么叫做一个脚本周期

一个脚本周期我们可以简单的理解为当前的shell文件变量是shell中不可或缺的一部分，也是最基础、最重要的组成部分。

#### 1.2、变量的定义与使用

变量，先定义后使用

定义形如：`class name="yunwei"`
使用形如：`echo $class name`

变量就是由2部分组成，一个是变量名（左边），另外一部分是变量的值（右边）变量名和变量值是什么关系？？
变量名和变量值是使用和被使用关系；我们的变量名来使用变量值；

在使用变量的时候一定需要在变量名前面添加一个s符号，该要求在其他语言中也存在的(例如php)。

变量名的规范
注意，变量名后面的等号左右==不能有空格==，这可能和你熟悉的所有编程语言都不一样。同时，变量名的命名须遵循如下规则：
命名只能使用英文字母，数字和下划线，首个字符不能以数字开头。
中间不能有空格，可以使用下划线“_”。
不能使用标点符号。
不能使用bash里的关键字（可用help命令查看保留关键字）。

<img src="https://i.loli.net/2020/04/07/EvTz9MKCPoc78J6.png"/>

案例1：使用变量改写入门脚本中的第1个shell脚本。

<img src="https://i.loli.net/2020/04/07/CXvGu3TL1aOH8NP.png" style="zoom:67%;" />

```
关于单双引号的问题：
	双引号能够识别变量,双引号能够转义（类似于“\*”）
	单引号是不能识别变量，只会原样输出,单引号是不能转义的
```

案例2：定义一个变量，输出当前时间，要求格式为“年-月-日时：分：秒”。

<img src="https://i.loli.net/2020/04/07/Cok6eWXYMytEuDh.png" style="zoom:67%;" />

注意：反引号（esc键下方的那个键），当在脚本中需要执行一些指令并且将执行的结果赋给变量的时候需要使用“反引号”。

<img src="https://i.loli.net/2020/04/07/QqcMAf3zphDO1Ya.png" style="zoom:67%;" />

#### 1.3、只读变量（了解）

语法：readonly 变量名

案例：定义变量a并且其值为10，随后设置其为只读变量，再去尝试重新赋值

<img src="https://i.loli.net/2020/04/07/dR9tpPTcaIA3uWx.png" style="zoom:67%;" />

<img src="https://i.loli.net/2020/04/07/XeDdCVoJYKQjfnO.png" style="zoom:67%;" />

#### 1.4、接收用户输入

语法：`read -p 提示信息 变量名`

案例：编写一个脚本test6.sh，要求执行之后提示用户输入文件的名称（路径），然后自动为用户创建该文件

<img src="https://i.loli.net/2020/04/07/FU1NoS6nEOZKCmz.png" style="zoom:67%;" />

<img src="https://i.loli.net/2020/04/07/4yRk6ZmGPdh1HYU.png" style="zoom:67%;" />

#### 1.5、删除变量（了解）

语法：`unset 变量名`
案例：定义变量b=20，再输出b的值，随后删除b，最后再输出下b

<img src="https://i.loli.net/2020/04/07/R8G6EKTXP1F2QxH.png" style="zoom:67%;" />

<img src="https://i.loli.net/2020/04/07/WAV6d5TB984mayg.png" style="zoom:67%;" />

### 2、条件判断语句

老婆给当程序员的老公打电话：下班顺路买一斤包子带回来，如果看到卖西瓜的，买一个。当晚，程序员老公手捧一个包子进了家门…老婆怒道：你怎么就买了一个包子？！老公答曰：因为看到了卖西瓜的。

把程序员老婆的话当作一段需分析一下吧。买一斤包子是一个确定无疑的需求项，无论后面是什么情况什么条件，前面这一斤包子是肯定要买的。看到卖西瓜的是一个条件判断，后面“买一个”是一个模糊不清的需求项，买一个什么呢？需求里没说啊。客户把这个当作开发人员默认了解的内容了。可是作为一个成熟合格的程序员，该老婆的丈夫应该马上跟进确认需求“买一个什么？”，要不然程序可怎么写呢？所以笑话里该程序员是不合格的，起码是不积极不负责的。在没有明确需求的情况下，他只能按照自己的理解来完成工作了。那比较可能的结果就有如下几种：
1看到卖西瓜的，买一个西瓜

​	如果 看到卖西瓜的
​		那么
​		买一个西瓜

2看到卖西瓜的，买一个包子

​	如果 看到卖西瓜的
​		那么
​		买一个包子

3看到卖西瓜的，买一个卖西瓜的

4看到卖西瓜的，买一个老婆一直想买的东西

5看到卖西瓜的，随便买一个东西

上述1和2下面的条件汉字描述称之为“伪代码”，也是属于条件表达式的语法。

#### 语法1：

if condition 

then 

​	command1

​	command2

​	……

fi

单行写法：（一般在命令行中执行的时候）

if[condition];then command;fi

#### 语法2：

if condition

then 

​	command1

​	command2

​	……

else
	command

fi

#### 语法3：

if condition1
then
	command1
elif condition2
then
	command2
else 
	commandN
fi

### 3、运算符

在shell中，运算符和其他编程脚本语言一样，常见的有算数运算符、关系运算符、逻辑运算符、字符串运算符、**文件测试运算符**等

#### 3.1、算数运算符

下表列出了常用的算术运算符，假定变量a为10，变量b为20：

<img src="https://i.loli.net/2020/04/07/nGBsUDyAC41fTYc.png" style="zoom: 67%;" />

注意：条件表达式要放在方括号之间，并且要有空格，例如：`[$a==$b]`是错误的，必须写成`[ $a == $b ]`。

```
原生bash 不支持简单的数学运算，但是可以通过其他命令来实现，例如awk和expr，expr最常用。
expr 是一款表达式计算工具，使用它能完成表达式的求值操作。
例如，两个数相加（注意使用的是反引号而不是单引号）：
#！/bin/bash
val=`expr 2 + 2`
echo“两数之和为：$val"
两点注意：
表达式和运算符之间要有空格，例如2+2是不对的，必须写成2+2，这与我们熟悉的大多数编程语言不一样。
完整的表达式要被包含，注意这个字符不是常用的单引号，在Esc键下边。
```

<img src="upload%5Cimage-20200407234328917.png" alt="image-20200407234328917" style="zoom: 50%;" />

<img src="https://i.loli.net/2020/04/07/tz2Cc5oqxkAvi7I.png" style="zoom: 67%;" />

#### 3.2、关系运算符

​	关系运算符只支持数字，不支持字符串，除非字符串的值是数字。下表列出了常用的关系运算符，假定变量a为10，变量b为20：

<img src="https://i.loli.net/2020/04/07/pqiLSZmWa1HOcxw.png" style="zoom:67%;" />

```
-eq:equal
-neq:not equal
-t:great thanI
-lt:less than
-ge:great than or equal
-le:less than or equal
```

<img src="https://i.loli.net/2020/04/07/3cT5ayrIOuLjHWS.png" style="zoom:67%;" />

<img src="https://i.loli.net/2020/04/07/Bja7Igqw69VJQxP.png" style="zoom:67%;" />

课堂作业：
写一个脚本，判断当前输入的用户是否存在。如果存在则提示“用户存在”否则提示“用户不存在”。







































































