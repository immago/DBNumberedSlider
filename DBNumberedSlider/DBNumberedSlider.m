//
//  DBNumberedSlider.m
//  DBNumberedSlider
//
//  Created by Dmitry Byankin on 05.10.17.
//  Copyright © 2017 Dmitry Byankin. All rights reserved.
//

#import "DBNumberedSlider.h"

@implementation DBNumberedSlider

#pragma mark - Init

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setup];
    }
    return self;
}


-(void)setup {
    
    if(!self.labelFormat){
        self.labelFormat = @"%.0f";
    }
    
    if(!self.textColor){
        self.textColor = [UIColor darkGrayColor];
    }

    if(!self.font){
        self.font = [UIFont systemFontOfSize:14.f];
    }

}

-(void)layoutSubviews {
    [super layoutSubviews];
    
    if(!thumbLabel){
        thumbLabel = [[UILabel alloc]initWithFrame:CGRectZero];
        thumbLabel.userInteractionEnabled = NO;
        thumbLabel.text = @"";
        thumbLabel.textAlignment = NSTextAlignmentCenter;
        thumbLabel.textColor = self.textColor;
        thumbLabel.backgroundColor = [UIColor clearColor];
        [self.superview addSubview:thumbLabel];
    }
    
    [self updateThumb];
}

-(CGRect)thumbRect {
    return [self thumbRectForBounds:self.bounds
                          trackRect:[self trackRectForBounds:self.bounds]
                              value:self.value];
}

-(void)updateThumb {
    
    CGRect thumbRect = [self thumbRect];
    thumbLabel.frame = CGRectMake(thumbRect.origin.x + self.frame.origin.x, self.frame.origin.y, self.frame.size.height,  self.frame.size.height);
    thumbLabel.text = [NSString stringWithFormat:self.labelFormat, self.value];
    thumbLabel.font = self.font;
}

#pragma mark - Setters & Getters

-(void)setLabelFormat:(NSString *)labelFormat {
    _labelFormat = labelFormat;
    [self updateThumb];
}

-(void)setFont:(UIFont *)font {
    _font = font;
    thumbLabel.font = font;
}

-(void)setFontSize:(CGFloat)fontSize {
    _font = [_font fontWithSize:fontSize];
    thumbLabel.font = _font;
}

-(CGFloat)fontSize {
    return _font.pointSize;
}

-(void)setFontName:(NSString *)fontName {
    _font = [UIFont fontWithName:fontName size:self.fontSize];
}

-(NSString*)fontName {
    return _font.fontName;
}

-(void)setTextColor:(UIColor *)textColor {
    _textColor = textColor;
    thumbLabel.textColor = textColor;
}

-(void)setValue:(float)value {
    [super setValue:value];
    [self updateThumb];
}

-(void)setValue:(float)value animated:(BOOL)animated {
    [super setValue:value animated:animated];
    [self updateThumb];
}

#pragma mark - UIControl touch event tracking

- (BOOL)beginTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    
    [self updateThumb];
    
    return [super beginTrackingWithTouch:touch withEvent:event];
}

- (BOOL)continueTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    [self updateThumb];
    return [super continueTrackingWithTouch:touch withEvent:event];
}

- (void)cancelTrackingWithEvent:(UIEvent *)event {
    [super cancelTrackingWithEvent:event];
}

- (void)endTrackingWithTouch:(UITouch *)touch withEvent:(UIEvent *)event {
    
    [self updateThumb];
    [super endTrackingWithTouch:touch withEvent:event];
}

@end
