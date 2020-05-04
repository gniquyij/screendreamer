//
//  readyView.m
//  ready
//
//  Created by yuqing.ji on 2019/04/19.
//  Copyright © 2019 vjyq. All rights reserved.
//

#import "readyView.h"

@implementation readyView

- (instancetype)initWithFrame:(NSRect)frame isPreview:(BOOL)isPreview
{
    self = [super initWithFrame:frame isPreview:isPreview];
    if (self) {
        [self setAnimationTimeInterval:1/30.0];
    }
    return self;
}

- (void)startAnimation
{
    [super startAnimation];
}

- (void)stopAnimation
{
    [super stopAnimation];
}

- (void)drawRect:(NSRect)rect
{
    [super drawRect:rect];
    NSFont *font = [NSFont fontWithName:@"Courier" size:(50)];
    NSDictionary *attributes = @{NSFontAttributeName:font, NSForegroundColorAttributeName:[NSColor whiteColor]};
    NSAttributedString *string = [[NSAttributedString alloc] initWithString:@"READY?" attributes:attributes];
    NSSize stringSize = string.size;
    NSPoint drawPoint = NSMakePoint(NSMidX(self.bounds)-stringSize.width/2, NSMidY(self.bounds)+stringSize.height);
    
    [string drawWithRect:NSMakeRect(drawPoint.x, drawPoint.y, stringSize.width, stringSize.height) options:NSStringDrawingUsesLineFragmentOrigin];
}

- (void)animateOneFrame
{
    return;
}

- (BOOL)hasConfigureSheet
{
    return NO;
}

- (NSWindow*)configureSheet
{
    return nil;
}

@end
