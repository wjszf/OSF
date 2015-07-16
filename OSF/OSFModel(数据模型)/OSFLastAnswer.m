//
//  OSFLastAnswer.m
//  OSF
//
//  Created by 赵锋 on 15/7/13.
//  Copyright (c) 2015年 赵锋. All rights reserved.
//

#import "OSFLastAnswer.h"
#import "OLog.h"
@implementation OSFLastAnswer


-(instancetype)initWithDic:(NSDictionary *)dic
{
    self=[super init];
    if (!self) return nil;
    
    
    [self setValuesForKeysWithDictionary:dic];
    
    _user=[[OSFUserModel alloc] initWithDic:[dic objectForKey:@"user"]];
    
    return self;
}

-(void)setValue:(id)value forUndefinedKey:(NSString *)key
{
    
}

@end
