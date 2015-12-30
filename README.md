# Emacs-Houdini-vex-mode
     1->auto-complete for houdini-vex mode
     2->current only support auto-complete
     3->open a file like shader.vex,this can auto swith the vex-mode
#install
(add-to-list 'load-path "~/.emacs.d/yourpath/")
(require 'gearslogy-vex-mode)

#now features
     1->Support yasnippet
     2->Support ac-dictionaries
     3->Current support houdini version:Houdini14

#解释:
     1->这是只为Houdini Vex 模块设计的。当你打开.vex文件，会自动切换到
     gearslogy-vex-mode,支持Houdini14的所有函数.
     2->主模块是从C++派生来，所以完全支持C++的高亮，语法，indent。
     3->现在不支持company-mode,支持auto-complete补全。确保你装了auto-complete。
bug reports:
liuyangping207@qq.com
