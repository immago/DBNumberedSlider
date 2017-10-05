//
//  DBNumberedSlider.h
//  DBNumberedSlider
//
//  Created by Dmitry Byankin on 05.10.17.
//  Copyright © 2017 Dmitry Byankin. All rights reserved.
//

#import <UIKit/UIKit.h>

IB_DESIGNABLE
@interface DBNumberedSlider : UISlider
{
    UILabel *thumbLabel;
}

@property (nonatomic) IBInspectable NSString *labelFormat;
@property (nonatomic) IBInspectable UIColor  *textColor;
@property (nonatomic) IBInspectable CGFloat  fontSize;
@property (nonatomic) IBInspectable NSString *fontName;
@property (nonatomic) UIFont *font;

@end
