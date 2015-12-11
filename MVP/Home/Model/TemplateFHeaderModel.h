//
//  TemplateFHeaderModel.h
//  MVP
//
//  Created by guochaoyang on 15/12/11.
//  Copyright © 2015年 ccguo. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TemplateJumpModel.h"
#import "TemplateContentProtocol.h"

@interface TemplateFHeaderModel : NSObject<TemplateContentProtocol>

@property (nonatomic,strong) NSString           *lctitle;
@property (nonatomic,strong) NSString           *lctitleImg;
@property (nonatomic,strong) NSString           *rctitle;
@property (nonatomic,strong) TemplateJumpModel  *jump;

@end