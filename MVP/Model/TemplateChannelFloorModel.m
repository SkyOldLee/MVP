//
//  TemplateChannelFloorModel.m
//  MVP
//
//  Created by ccguo on 15/12/6.
//  Copyright © 2015年 ccguo. All rights reserved.
//

#import "TemplateChannelFloorModel.h"

@implementation TemplateChannelFloorModel


#pragma mark - TemplateContainerProtocol

- (NSInteger)numberOfChildFloorModelsInContainer
{
    return [self.itemList count];
}

- (id <TemplateContentProtocol>)childFloorModelAtIndex:(NSInteger)index
{
    return nil;
}

#pragma mark - TemplateJumpProtocol

- (TemplateJumpModel *)jumpFloorModelAtIndexPath:(NSIndexPath *)indexPath
{
    return nil;
}

#pragma mark -  TemplateRenderProtocol
- (NSString *)floorIdentifier
{
    return nil;
}

@end
