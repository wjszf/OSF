//
//  OSFQuestionNoAnswer.m
//  OSF
//
//  Created by 赵锋 on 15/7/9.
//  Copyright (c) 2015年 赵锋. All rights reserved.
//

#import "OSFQuestionNoAnswer.h"
#import "OSFCellCollection.h"
#import <objc/message.h>
@interface OSFQuestionNoAnswer ()

@end

@implementation OSFQuestionNoAnswer

- (void)viewDidLoad {
    [super viewDidLoad];
    [OSFCellCollection registerQuestionCell:self.tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return 10;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    UITableViewCell *cell=[OSFCellCollection cellForQuestion:tableView indexPath:indexPath answerNum:@"0" questionStatus:0 userName:@"未解答的" date:@"一天前" content:@"未解答的问题，我不知道如何打开keyboard得开关什么的 导致keyboard打不开，一片底色灰的未解答的问题，我不知道如何打开keyboard得开关什么的 导致keyboard打不开，一片底色灰的"];
    return cell;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static UITableViewCell *cell = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        cell = [tableView dequeueReusableCellWithIdentifier:QuestionCell];
    });
    
    CGFloat height=70.0;
    if([cell respondsToSelector:@selector(calulateHeight:)])
    {
        CGFloat (*action)(id, SEL, NSString*) = (CGFloat (*)(id, SEL, NSString*)) objc_msgSend;
        height =  action(cell, @selector(calulateHeight:), @"IOS 热门的 的问题，我不知道如何打开keyboard得开关什么的 导致keyboard打不开，一片底色灰的未解答的问题，我不知道如何打开keyboard得开关什么的 导致keyboard打不开，一片底色灰的");
        
    }
    
    return height;
}
-(CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 70.0;
}

@end