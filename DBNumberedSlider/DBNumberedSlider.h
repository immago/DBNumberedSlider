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

/// Label format string (stringWithFormat:labelFormat). Default: %.0f
@property (nonatomic) IBInspectable NSString *labelFormat;

/// Color of label
@property (nonatomic) IBInspectable UIColor  *textColor;

/// Size of font (above 0)
@property (nonatomic) IBInspectable CGFloat  fontSize;

/// Name of font (fontWithName:fontName) Example: Menlo-BoldItalic List: http://iosfonts.com/
@property (nonatomic) IBInspectable NSString *fontName;

/// Set font directly
@property (nonatomic) UIFont *font;

@end
