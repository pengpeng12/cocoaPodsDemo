//
//  ViewController.m
//  cocoaPodsDemo
//
//  Created by apple  on 2016/12/27.
//  Copyright © 2016年 apple . All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //1.安装rvm
    //curl -L get.rvm.io | bash -s stable
    //sources ~/.bashrc
    //sources ~/.bash_profile   或者source /Users/apple
    
  /*  在Mac上安装好ruby的RVM后，在终端输入时，出现rvm: command not found，经过OverStackFlow上的查找，发现了解决办法：rvm: command not found MAC OX
    
    可能是因为ram的shell配置没有加载，
     在终端输入：source ~/.rvm/scripts/rvm

     接着输入：type rvm | head -n 1
   
     如果输出是rvm is a function，
     则需要将source ~/.rvm/scripts/rvm添加到~/.bash_profile文件中。*/
    
    //卸载rvm
   /* rvm自己有一个命令rvm implode.
    
    在rvm的Troubleshooting页面上有一段脚本
    
     #!/bin/bash
    /usr/bin/sudo rm -rf $HOME/.rvm $HOME/.rvmrc /etc/rvmrc /etc/profile.d/rvm.sh /usr/local/rvm /usr/local/bin/rvm
    /usr/bin/sudo /usr/sbin/groupdel rvm
    /bin/echo "RVM is removed. Please check all .bashrc|.bash_profile|.profile|.zshrc for RVM source lines and delete
    or comment out if this was a Per-User installation."
        可以使用这个脚本完整删除rvm环境。
    */
    
    //2.升级ruby
    //rvm list known
    //rvm list
    //rvm install 2.3.3
    //移除用rvm remove 2.2.2
    //rvm use 2.2.3 --default
    
    //3.更换源
    //sudo gem update --system
    //gem sources -l
    //gem sources --remove .......
    //gem sources -a http://rubygems-china.oss.aliyuncs.com(或者https://gems.ruby-china.org)
    
    //4.安装cocoapods
    //sudo gem install cocoapods(报错的话sudo nvram boot-args="rootless=0"  然后重启sudo reboot)
    //sudo gem install -n /usr/local/bin cocoapods
    //sudo gem install -n /usr/local/bin cocoapods --pre
    //pod --version
    
    //pod setup
    //另一种方法：git clone https://git.coding.net/CocoaPods/Specs.git ~/.cocoapods/repo/master  等待完成后 pod repo update
    
    //移除cocoapods
    //sudo gem uninstall cocoapods
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
