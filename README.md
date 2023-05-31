# 使用

本项目是对 STL 库的部分实现   
项目结构使用 CMAKE 开发     

**自主编译运行**

```
$ cmake -B build
$ cd build
$ make
```

运行

```
$ ./stllib
```

**使用库链接**

将本文件代码拉下来后引入 `/include` ，编译时调用 `/lib` 内的 `libzyzstl` 

# 工具

## 内存池 MemPool

采用动态分区分配方式管理连续的内存  
可构建多张空闲链表，每张链表管理相同长度的地址  
可动态进行空闲链表的合并，拥有极高的内存利用率    
  
设有 n 张空闲链表，平均空闲节点数为 m ，则  
- 配置复杂度：O(n + m)
- 回收复杂度：O(log_2(n) + m)

可视化，可以调用内置 `print()` 函数打印整个池结构，也可以调用内置 `print(i)` 函数打印第 i 张空闲链表  
 
## 配置器 zyz::Allocator<type>

一个封装成模板的借用内存池向外服务的工具，可作为 stl 的第二个模板参数

## 动态数组 zyz::Vector<type>

利用三个指针
- 首地址
- 元素结尾的下一个
- 空间结尾地址

来进行 2的幂次 地更换连续地址，成员函数仿制 `std::vector` 

## 栈 zyz::Stack<type>

内部使用 `zyz::Vector` ，扩充了 `pop(), push(), top()` 等方法

## 字典树 zyz::Trie<type>

以字典树组织一棵 key 类型为 string 的键值对，支持多种 `std::map<std::string, type>` 的操作与方法  
每一个节点最多有 63 个儿子指针与一个 value 指针