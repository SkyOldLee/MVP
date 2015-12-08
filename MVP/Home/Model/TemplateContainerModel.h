//
//  TemplateFloorContainerModel.h
//  MVP
//
//  Created by ccguo on 15/12/6.
//  Copyright © 2015年 ccguo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TemplateHeaderModel.h"
#import "TemplateMarginModel.h"
#import "TemplateActionProtocol.h"

/**
 *  容器概念
 */
@protocol TemplateContainerProtocol <NSObject>

@required

- (NSInteger)numberOfChildFloorModelsInContainer;

- (id <TemplateContentProtocol>)childFloorModelAtIndex:(NSInteger)index;

@end

@class TemplateChannelModel;
@interface TemplateContainerModel : NSObject<TemplateContainerProtocol,TemplateActionProtocol,TemplateContentProtocol>

//netList
@property (nonatomic,strong) NSNumber                 *identityId;
@property (nonatomic,strong) NSString                 *pattern;
@property (nonatomic,strong) TemplateHeaderModel *fheader;
@property (nonatomic,strong) NSArray                  *itemList;
@property (nonatomic,strong) TemplateJumpModel        *jump;
@property (nonatomic,strong) TemplateMarginModel *margin;
//other add
@property (nonatomic,assign) TemplateChannelModel     *channelModel;
@end