# 逻辑综合

## 一. 基础知识

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415151255.png" style="zoom:50%;" />

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415151415.png" style="zoom:50%;" />

逻辑综合的目的：决定电路门级结构、寻求时序（性能）和面积的平衡、寻求功耗与时序的平衡、增强电路的测试性。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415152231.png" style="zoom:50%;" />

## 二. 逻辑综合流程

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415153104.png"/>

# Design Compiler使用

使用DesignCompiler综合过程：

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415153159.png" style="zoom:50%;" />

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415153450.png"  />

## 一. Design Compiler打开方式

一共有4种打开方式：

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414135903.png" style="zoom:33%;" />

### 1.dc_shell-t

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414134756.png" style="zoom:33%;" />

1.1 在shell中输入dc_shell-t

1.2 也可以在打开dc_shell-t的时候同时打开tcl脚本：dc_shell-t -f script（脚本）

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414135745.png" style="zoom:33%;" />

### 2.design_vision

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414140202.png" style="zoom:33%;" />

- 相关文件：

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414141301.png" style="zoom:33%;" />

.log文件很重要，当我们出现一些**警告或者错误**的时候，需要到.log文件中去追溯。

## 二. 文件读入方式：

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414141545.png" style="zoom: 50%;" />

一共有两种方式：

### 1. 使用read指令来读入

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414141717.png" style="zoom:33%;" />

```
read -format verilog[db/vhdl ...]file   //dcshell 的工作模式
read_db file.db //TCL工作模式读取DB格式
read_verilog file.v  //TCL工作模式读取verilog格式
read_vhdl file.vhd  //TCL工作模式读取VHDL格式
```

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414142159.png" style="zoom:33%;" />

### 2. analyze和elaborate一对指令同时使用（推荐使用）

```
analyze -f vhdl mychip.vhd
elaborate MYCHIP
```

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414142430.png" style="zoom:33%;" />

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414142607.png" style="zoom:33%;" />

### 3.比较：

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414142718.png" style="zoom:33%;" />

### 4. link

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414142933.png" style="zoom: 50%;" />

## 三. 工艺库

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414144132.png" style="zoom:50%;" />

### 1. 目标库

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414144319.png" style="zoom:50%;" />

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414144442.png" style="zoom:50%;" />

* dc优化方法

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414144647.png" style="zoom:50%;" />

### 2. 链接库

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414145023.png" style="zoom:50%;" />

==注：设置link_library的时候要注意设置 search_path==

* 目标库和链接库的区别

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414144823.png" style="zoom:33%;" />

- 实例

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414222405.png" style="zoom: 50%;" />

设置目标库和链接库：

```
set target library"my_tech.db"
set link_ library "*my_tech.db"
```

读入代码，并进行link操作：

```
dc_shell-t> read_ verilog source/ALU.V 
dc_shell-t> read verilog source/TOP.V 
dc_shell-t> link
```

发现错误：

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414222623.png" style="zoom:50%;" />

原因：因为**没有设置搜索路径**，这样dc就无法找到db文件

修改：

​	增加一句：`lappend search_path {bob}`

结果：

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414223626.png" style="zoom:50%;" />

**或者：**

```
set target_library "my_tech.db"
set link library "*my_tech.db"
lappend search_path {bob}

dc_shell-t> analyze-f vhdl source/ALU. vhd
dc_shell-t> analyze-f vhdl source/TOP. vhd 
dc_shell-t> elaborate TOP 
```

输出：

```
Loading db file bob/DECODE. db 
Current design is now ' TOP'
```

### 3. 符号库

symbol_library是定义了单元电路显示的Schematic的库

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414224408.png" style="zoom:50%;" />

### 4. 算术运算库

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414225212.png" style="zoom: 50%;" />

DesignWare 库中包含了许多高性能的运算器，比如超前进位加法器

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414225402.png" style="zoom:50%;" />

## 四. 工艺库内部的信息

### 1.单元时序信息

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414225641.png" style="zoom:50%;" />

#### 1.1 简单的反相器逻辑单元的timing arc

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414225749.png" style="zoom:50%;" />

​	注：延迟是根据单元库中定义的阈值点测量的，通常为50%VDD

#### 1.2 Timing arc的延迟取决于两个因素：

- 输出负载，即反相器输出引脚的电容负载
- 输入信号的转换时间
  - 延迟值与负载电容直接相关：负载电容越大，延迟越大
  - 在大多数情况下，延迟随着输入转换时间的增加而增加。

#### 1.3 标准单元的时序模型

- 线性模型和非线性模型

##### 1.3.1 线性时序模型

简单的时序模型是线性延迟模型，其中单元的延迟和输出转换时间表示为两个参数的线性函数：输入转换时间和输出负载电容。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414230645.png" style="zoom:50%;" />

线性延迟模型在亚微米技术的输入转换时间和输出电容范围内不准确

##### 1.3.2 非线性时序模型

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414230807.png" style="zoom:67%;" />

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414231007.png"/>

索引的类型和表查找索引的顺序在查找表模板delay_template_3×3中描述。

###### 1.3.2.1 查找表中的信息

- 此查找表模板指定表中的第一个变量是输入转换时间，第二个变量是输出电容。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414231149.png" style="zoom: 67%;" />

- 每个变量有三个条目，因此它对应于一个3乘3的表。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414231241.png" style="zoom: 67%;" />

- 在大多数情况下，表的条目也像表一样格式化，然后第一个索引（index_1）可以被视为行索引，第二个索引（index2）变得等于列索引。索引值（例如1000）是虚拟占位符，它们被cell_fall和cell_rise延迟表中的实际索引值覆盖。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414231355.png" style="zoom:67%;" />

另一种方法是在模板定义中指定索引值，而不在cell_rise和cell_fall表中指定它们。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414231502.png" style="zoom:50%;" />

###### 1.3.2.2 Slew值

**Slew值基于库中指定的测量阈值**

- `大多数库（0.25或更早版本）：`使用10%和90%作为转换或转换时间的测量阀值。
  选择转换阀值以对应于波形的线性部分。

- 随着技术变得更精细，实际波形最线性的部分通常在30%和70%之间。
- `大多数新一代时序库：`将转换测量点指定为Vdd的30%和70%。
- 由于转换时间之前的测量值介于10%和90%之间，因此在填充库时，测量的转换时间通常会增加一倍，介于30%和70%之间。

**转换Derate系数：**

- 通常指定为0.5。阈值为30%和70%
- Slew Derating降低为0.5，导致等效测量点为10%和90%

**阈值示例设置：**

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414232133.png" style="zoom:50%;" />

- 转换时间必须乘以0.5，以获得与转换阈值（30-70）设置相对应的转换时间。
- 这意味着转换表中的值（以及相应的索引值）实际上是10-90值。
- 在表征期间，转变在30-70处测量，并且库中的转变数据对应于测量值的外推至10%至90%（（70-30）/（90-10）=0.5）。

**另一组具有不同的转换阈值设置的示例可能包含：**

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414232353.png" style="zoom: 50%;" />

- 在此示例中，20-80转换阈值设置，未指定slew_derate_from_library
  （默认值为1.0），这意味着库中的转换时间数据未降低额定值。转换表中的值直接对应于20-80特征转换值。

- 在这种情况下，slew_derate_from_library设置为0.6，表征转换点指定为20%和80%。这意味着库中的转换表数据对应于0%至100%
  （（80-20）/（100-0）=0.6）外推值。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414232520.png" style="zoom:50%;" />

- 这是延迟计算工具内部使用的转换，对应于特征化的转换阀值测量点。

- 当指定转换Derate系数时，延迟计算期间内部使用的transition_time为：`library transition time_value*slew_derate`

#### 1.4 组合逻辑单元和时序逻辑单元的内部时序模型

##### 1.4.1 时序模型-组合单元

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414232740.png" style="zoom:50%;" />

- 让我们考虑双输入和单元的时序弧。这个单元的两个时序弧都是ositive_unate；因此输入引脚上升对应于输出上升，反之亦然。
- 这意味着对于NLDM模型，将有四个用于指定延迟的表模型。类似地，将有四个这样的表模型用于指定输出转换时间。

##### 1.4.2 时序模型-时序单元

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414232921.png" style="zoom:50%;" />

## 五. DC时序约束

### 1. 施加约束

Design Compiler 是一个**约束驱动**（constrain-driven）的综合工具，它的结果是与设计者施加的约束条件密切相关的。

我们主要讨论怎样给电路施加约束条件：时序约束  面积约束

**综合过程：**

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414234307.png" style="zoom:50%;" />

#### 1.1 定义面积

```
dc_shell-t> current_design PRGRM_CNT_TOP
dc_shell-t> set_max_area 100
```

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414234455.png" style="zoom:50%;" />

上面的例子给PRGRM_CNT_TOP的设计施加了一个最大面积100单位的约束。100的具体单位是由Foundry规定的，定义这个单位有三种可能的标准：

- 第一种是将一个二输入与非门的大小作为单位；
- 第二种是以晶体管的数目规定单位；
- 第三种则是根据实际的面积（平方微米等等）。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414234612.png" style="zoom:50%;" />

#### 1.2 时序路径约束

我们要达到的目标是——约束电路中所有的时序路径,以此来实现对工作频率的约束。
这些时序路径可以分为4类：

●输入到寄存器的路径
●寄存器到寄存器之间的路径
●寄存器到输出的路径
●输入直接到输出的路径

##### 1.2.1 触发器到触发器

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414234759.png" style="zoom:50%;" />

对于图中触发器到触发器的路径，我们应该如何约束？

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414234852.png" style="zoom:50%;" />

在电路综合的过程中，所有时序电路以及组合电路的优化都是以时钟为基准来计算路径延迟的，因此，一般都要在综合的时候指定时钟，作为估计路径延迟的基准。

#### 1.3 定义时钟

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414235059.png" style="zoom:50%;" />

```
dc_shell-t> create_clock -period 10 [get ports Clk]
dc_shell-t> set dont_touch_ network [get_clocks Clk]
```

通过get ports拿到了设计里面的时钟端口，然后使用了reate clock指令来定义了时钟周期1Ons和占空比

对所有定义的时钟网络设置为`dont_touch`，即综合的时候不对clk信号优化。

如果不加这句，DC会根据Clk的负载自动对他产生Buffer，而在实际的电路设计中，时钟树（Clock Tree）的综合有自己特别的方法，它需要考虑到实际布线后的物理信息，所以DC不需要在这里对它进行处理，就算处理了也不会符合要求。

做DC的时候是一个非常理想的情况，单元在芯片中的实际位置并没有固定下来，如果我们让DC去综合时钟，会得到一个非常不准确的时钟网络。导致我们在做后面的布局布线的时候，还要先去除这个非理想的时钟网络，然后再来重新做一个正确的网络

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414235936.png" style="zoom:33%;" />

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200414235956.png" style="zoom:33%;" />

可以给时钟网络加一个`don't touch`的一个选项

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415000409.png" style="zoom:50%;" />

#### 1.4 定义输入延迟

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415000631.png" style="zoom:50%;" />

我们所定义的输入延时是指被综合模块外的寄存器触发的信号在到达被综合模块之前经过的延时，在图中就是外围触发器的clk-q的延时加上M电路延时。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415000856.png" style="zoom:50%;" />

```
dc_shell-t> set_input_delay -max 4 -clock Clk[get_ports A]
```

通过get_ports指令把输入延迟就施加到了A端口上

mmax的选项其实指的就是这个端口最大的延时是多少，最大延时通常是用来算建立时间的，也可以写最小延时，来对保持时间进行约束

clock 指的是这个端口的输入延迟是针对哪个CLK的，一定是针对某个时钟域的输入延迟，通常电路里可能存在很多个时钟，每个时钟域下，都有它相关的输入和输出的引脚

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415001524.png" style="zoom:50%;" />

练习：

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415001620.png"/>

```
create_clock -period 20 [get_ ports CLK]
set_dont_touch_network [get_clocks CLK]
set _input_delay -max 7.4 -clock Clk [get_ports A]   （因为图中标注的是worst，所以用-max）
```

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415163219.png"/>

为了约束S的path，需要提供哪些信息？

信号在被综合模块的触发器U3里触发，被外围的一个触发器接收。对外围电路而言，它有一个T电路延时和外围触发器的建立时间。当确定了他们的延时之后，被综合模块内部的输出路径延时范围也就确定下来了。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415001946.png" style="zoom:50%;" />

定义输出延时：

```
dc_shell-t> set_ output_delay -max 5.4 -clock Clk[get_ports B]
```

## 六. DRC约束

### 1. rule constraints

#### 1.1 set_max_transition

是约束design中的信号、端口、net最大transition不能超过这个值，当然是越小越严苛了，net的transition time取决于net的负载（fanout），负载越大，transition time越大。

data transition time；      clock transition time：小

#### 1.2 set_max_fanout

对design，net，output port进行操作，设定的不是具体的电容值。扇出负载值是用来表示单元输人引脚相对负载的数目，它并不表示真正的电容负载，而是个无量纲的数字。

#### 1.3 set_max_capacitance

基于工艺库的信息进行设定。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415002611.png" style="zoom:50%;" />

·以上三个由工艺厂商提供，但是我们可以约束的更紧一些。
·数字IC设计中max_cap和max_tran这类逻辑DRC或者说时序DRC是在设计中必须修复的问题，否则无法流片。

## 七. TCL脚本实例

```tcl
sh date //显示开始时间
remove_design -designs//移除DC中原有的设计
//下面是库的设置，对应图形界面操作的2
##########################
#set library       #
##########################
set search_path[list*********]
set target_library {tt.db}
set link_library {*tt.db}
set symbol_library {tt.sdb}

//下面是屏蔽一些warning信息，DC在综合时遇到这些warning时就把它们忽略，不会报告这些信息，VER-130，VER-129等是不同warning信息的编码，具体含义可以查看帮助
#############################
#void warning Info #
###########并并#并并##########
suppress_message VER-130
suppress_message VER-129
suppress_message VER-318
suppress_message ELAB-311
suppress_message VER-936

//读入example1.v文件，对应于图形界面的3
###################################
#read&amp；link&amp；Check design#
###################################
read_file -format verilog ~/example1.v
#analyze -format verilog ~/example1.v

#elaborate EXAMPLE1
current_design EXAMPLE1/把EXAMPLE1指定为当前设计的顶层模块,否则DC会默认把最后一个独到的模块设置为module
uniquify 
check design

//设置一些变量
#############################
#define IO port name#
#############################
set clk[get_ports clk]  //设置变量clk的值是[get_ports clk]，在下面的代码中若出现$clk字样，则表示引用该变量的值，即用[get_ports clk]代替$clk。
set rst_n [get_ports rst_n]
set general_inputs [list a b c]
set outputs [get_ports o]

//设置约束条件，对应于图形界面的4
#############################
#set_constraints#
#############################
//设置时钟约束，对应于图形界面的4.1
#1 set constraints for clock signals 
create_clock -n clock $clk -period 20 -waveform{0 10}//创建一个周期为20ns，占空比为1的时钟
set dont_touch_network [get_clocks clock]
set_drive 0 $clk//设置时钟端口的驱动为无穷大
set_ideal_network [get_ports clk] //设置时钟端为理想网络

//设置复位信号约束，对应于图形界面的4.2
#2 set constraints for reset signals 
set dont_touch_network $rst_n 
set_drive 0 $rst_n 
set_ideal_network [get_ports rst_n]

//设置输入延时，对应图形界面的4.3
#3 set input delay 
set_input_delay -clock clock 8
$general_inputs
//设置输出延时，对应图形界面的4.4
#4 set output delay 
set output_delay-clock clock 8
$outputs

//设置面积约束和设计约束，对应图形界面的4.5
#5 set design rule constraints 
set_max_fanout 4 $general_inputs 
set_max_transition 0.5 [get_designs "EXAMPLE1"]
#6 set area constraint 
set_max_area 0  //在时序满足的条件下,尽可能把电路面积做小一些
```

## 八. 环境约束

### 1.有没有遗漏的约束？

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415163830.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415164035.png" style="zoom: 67%;" />

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415164105.png" style="zoom:67%;" />

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415164139.png"/>

#### 1.1 capacitive load

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415164323.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415164402.png"/>

- 方法

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415164446.png"/>

可以使用set_load来设定load值，可以设定一个精确值，也可以使用工艺中现有单元的load值来进行代替

#### 1.2 Input Drive Strength

为了精确计算输入电路的时序，DC需要知道input port的transition时间

- set_driving_cell 允许用户可以自行定一个实际的外部驱动cell：
- 默认情况下，DC假定外部信号的transition time为0
- 可以让DC能够计算一个实际的（non-zero）transition time

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415164845.png" style="zoom:67%;" />

```tcl
dc_shell-t> set_driving_cell -lib_cell and2a0 \[get_ports IN1]
```

#### 1.3 设置工作条件

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415165109.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415165134.png"/>

一般综合只要考虑到两种情况：最差情况用于作基于建立时间（setup time）的时序分析，最好情况用于作基于保持时间（hold time）的时序分析。

#### 1.4 Net Delays

- 在DC综合的过程中，连线延时是通过设置连线负载模型（wire load model）确定的。
- 连线负载模型基于连线的扇出，估计它的电阻电容等寄生参数，它是也是由Foundry提供的。
- Foundry 根据其他用这个工艺流片的芯片的连线延时进行统计，从而得到这个值。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415165500.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415165534.png"/>

- 在每一种工作条件下都会有很多种负载模型，各种负载模型对应不同大小的模块的连线，如上图的模型近似认为是160K门大小的模块适用的。

- 模块越小，它的单位长度的电阻及电容值也越小，负载模型对应的参数也越小。

设置输入驱动是通过DC的`set_wire_load_model`命令完成的。
Manual model selection：

```
dc_shell-t> set current_design addtwo

dc_shell-t> set wire_load_model -name 160KGATES
```

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415165819.png"/>

1.5 Wireload Model Mode

- 连线连接的是不同的模块，它的负载模型怎么估计？

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415170006.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415170110.png"/>

具体设置方式：

```
dc_shell-t> set_wire_load_ mode enclosed
```

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415170230.png"/>

九. 编译得到的结果

```
//综合优化，对应图形界面的5
#############################
#compile_design#
#############################
compile-map_effort medium
//保存文件，对应图形界面的7
##########################
#write*.db and*.v #
##########################
write -f db -hier- output ~/EXAMPLE1.db //保存整个工程
write -f verilog -hier -output ~/EXAMPLE1netlist.v //保存网表，用于布局布线和后仿真
write_sdf -version 2.1 ~/EXAMPLE1.sdf //保存反标文件，sdf文件标注了我们用的标准单元的延迟值，后仿真时也需要

//产生报告并保存，对应图形界面的6
##########################
#generate reports#
##########################
report_areal> EXAMPLE1.area_rpt//面积报告,把报告面积的文件保存成EXAMPLE1.area_rpt文件，运行完脚本以后可以查看该文件。主要包括：时序电路面积，组合逻辑电路面积，总面积
report_constraint -all_violators >EXAMPLE1.constraint_rpt //约束违例报告，给出了逻辑综合过程中哪些约束没有达到要求
report timing>EXAMPLE1.timing_rpt //时序报告，看建立时间和保持时间是否满足要求
sh date//显示结束时间

```

**时序报告主要内容：**

- 表头
- 数据发射路径
- 数据捕获路径
- 时序结果

## 九. 优化策略

DC进行优化的目的是权衡timing和area约束，以满足用户对功能，速度和面积的要求。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415171533.png"/>

DC有很多的优化策略：
●对数据通道的优化
●对状态机的优化
●对布尔逻辑的优化

### 1. Creating Path Groups

●默认情况下，DC根据不同的时钟划分path group。但是如果设计存在复杂的时钟，复杂的时序要求或者复杂的约束，用户可以将所关心的几条关键路径划分为一个path group，指定DC专注于该组路径的优化。
●也可以对不同的组设置不同的权重，权重的值范围为0.0-100.0

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415171745.png"/>

### 2. Optimizing Near-Critical Paths

●默认情况下，DC只优化关键路径，即负slack最差的路径。如果在关键路径附近指定一个范围，那么DC就会优化指定范围之内的所有路径。若指定范围较大，会增大DC运行时间，因此一般情况该范围设定为时钟周期的10%。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415171854.png"/>

 <img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415171959.png"/>

### 3. Performing High-Effort Compile

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415172115.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415172215.png"/>

●通常，使用incrementa可以提高电路优化的性能。如果电路在compile之后不满足约束，通过incremental也许能够达到要求的结果。
●Incremental只进行门级（gate-level）的优化，而不是逻辑功能级（logic-level）的优化。它的优化结果可能是电路的性能和之前一样，或者更好。

Incremental会导致大量的计算时间，但是对于将最差的负slack减为0，这是最有效的办法。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415172340.png"/>

### 4. Gate-Level Optimizations

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415172459.png"/>

### 5. Automatic Ungrouping

- Ungrouping取消设计中的层次，移除层次的边界，并且允许DC UItra通过减少逻辑级数改进时序，以及通过共享资源减小面积。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415172610.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415172656.png"/>

### 6. Adaptive Retiming

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415172759.png"/>

DC在移动寄存器的优化中，只能对有相同时序约束的寄存器进行调整，如果两个寄存器约束不同，则不能一起移动。

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415172842.png"/>

### 7. High-Level Optimization and Datapath Optimization

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415172936.png"/>

DC Ultra对数据的优化主要通过以下手段：

- 使用design ware库。design ware可以提供更高性能的运算器
- 数据路径提取：使用多个树形阵列的CSA的加法器代替数据通路中的加法运算，可大大提高电路的运算速度。但是，这只适合多个运算单元之间没有任何逻辑。同时，design ware中的单元不能被提取。
- 对加乘进行重新分配，比如：（A * C+B * C）优化为（A+B）*C。
- 比较器共享，比如A>B，A<B，A<=B会调用同一个减法器。
- 优化并行的常数相乘。
- 操作数重排。

### 7. Verifying Functional Equivalence

以下优化均会引起网表和RTL design不一致，因此需要使用formality工具进行一致性检查，确认不一致的地方是否由DC优化造成：
·由ungroup，group，uniquify，rename_design等造成部分寄存器，端口名字改变。
·等效和相反的寄存器被优化，常量寄存器被优化。
·Retiming策略引起的寄存器，电路结构不一致。
·数据通路优化引起的不一致。
·状态机的优化。
因此，DC在综合过程中必须生成formality的setup文件（默认为default.svf）

### 8. 设计划分Partitioning for Synthesis

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415173536.png"/>

模块应该如何划分，才能够得到一个好的综合结果呢？

#### 8.1 不要让一个组合电路穿越过多的模块

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415173631.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415173709.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415173746.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415173838.png"/>

#### 8.2 寄存模块的输出

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415173934.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415174009.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415174044.png"/>

#### 8.3 根据综合时间长短控制模块大小

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415174117.png"/>

#### 8.4 将同步逻辑部分与其他部分分离

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415174203.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415174229.png"/>

## 十. TCL语言

### 1. Overview

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415174439.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415174500.png"/>

### 2. Design Object

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415174839.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415174912.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415174938.png"/>

---

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415175005.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415175152.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415175223.png"/>

---

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415175318.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415175412.png"/>

```
get_nets *：包含所有net的collection
get_object_name：所有的net名称的list
llength：tcl自带的指令计算list的长度
```

siezeof_collection是synopsis带的tcl指令

例如：

```
sizeof_collection [all_clocks]
€52
```

---

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415175846.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415175901.png"/>

-----

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415180029.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415180111.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415180133.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415180217.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415180305.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415180345.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415180405.png"/>

<img src="https://pics-1301774945.cos.ap-chengdu.myqcloud.com/20200415180447.png"/>









