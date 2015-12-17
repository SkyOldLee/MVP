//
//  TemplateNormalCell.m
//  MVP
//
//  Created by guochaoyang on 15/12/17.
//  Copyright © 2015年 ccguo. All rights reserved.
//

#import "TemplateNormalCell.h"
#import "TemplateNormalView.h"

@interface TemplateNormalCell ()
@property (nonatomic,strong) TemplateNormalView *normalView;
@end

@implementation TemplateNormalCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        self.selectionStyle = UITableViewCellSelectionStyleNone;
        self.contentView.backgroundColor = [UIColor whiteColor];
        
        _normalView = [[TemplateNormalView alloc] init];
        _normalView.translatesAutoresizingMaskIntoConstraints = NO;
        
        [_normalView mas_makeConstraints:^(MASConstraintMaker *make){
            make.edges.equalTo(self.contentView).insets(UIEdgeInsetsZero);
        }];
    }
    return self;
}

+ (CGSize)calculateSizeWithData:(id<TemplateRenderProtocol>)data constrainedToSize:(CGSize)size
{
    return [TemplateNormalView calculateSizeWithData:data constrainedToSize:size];
}

- (void)processData:(id <TemplateRenderProtocol>)data
{
    [_normalView processData:data];
}

@end
