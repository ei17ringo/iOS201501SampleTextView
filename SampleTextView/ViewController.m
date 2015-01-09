//
//  ViewController.m
//  SampleTextView
//
//  Created by Eriko Ichinohe on 2015/01/09.
//  Copyright (c) 2015年 Eriko Ichinohe. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.myTextView.text = @"Hello,World!";
    
    //20回Hello,Worldを繰り返す文字列を格納するための変数を用意
    NSString *strLong = @"";
    
    self.myTextView.text = strLong;
    //書式文字列を使用した場合
    for (int i= 0; i < 20; i++) {
        NSLog(@"%d",i);
        strLong = [NSString stringWithFormat:@"%@%@",strLong,@"Hello,World!\n"];
    }
    
    self.myTextView.text = strLong;
    
    
    //sringByAppendingFormatを使った場合
    for (int i = 0; i < 20; i++) {
        NSLog(@"%d",i);
        strLong = [strLong stringByAppendingFormat:@"%@",@"Hello,World!\n"];
    }

    self.myTextView.text = strLong;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
