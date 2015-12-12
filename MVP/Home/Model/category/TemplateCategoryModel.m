//
//  TemplateCategoryModel.m
//  MVP
//
//  Created by ccguo on 15/12/12.
//  Copyright © 2015年 ccguo. All rights reserved.
//

#import "TemplateCategoryModel.h"

@implementation TemplateCategoryModel

+ (NSDictionary *)mj_replacedKeyFromPropertyName
{
    return @{
             @"itemList" : @"categoryList"
             };
}

+ (NSDictionary *)mj_objectClassInArray
{
    return @{
             @"itemList" : @"TemplateCategoryItemModel"
             };
}

#pragma mark - TemplateContainerProtocol

- (NSInteger)numberOfChildModelsInContainer
{
    NSUInteger rows = 0;
    if (self.margin) rows++;
    if (self.itemList) rows++;
    return rows;
}

- (id <TemplateContentProtocol>)childFloorModelAtIndex:(NSInteger)index
{
    if ((self.margin)&&(index+1) == [self numberOfChildModelsInContainer])
        return self.margin;  //最后一行
    return self;
}

#pragma mark - TemplateJumpProtocol

- (TemplateJumpModel *)jumpFloorModelAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

#pragma mark -  TemplateRenderProtocol
- (NSString *)floorIdentifier
{
    return @"TemplateCategoryHeaderCell";
}

- (id <TemplateContentProtocol>)headerFloor
{
    return self;
}

@end