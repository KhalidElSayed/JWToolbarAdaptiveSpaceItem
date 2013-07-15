//
//  JWToolbarAdaptiveSpaceItem.m
//
//  Created by John Wells on 7/14/13.
//  Copyright (c) 2013 John Wells. All rights reserved.
//

#import "JWToolbarAdaptiveSpaceItem.h"

@implementation JWToolbarAdaptiveSpaceItem

-(void)awakeFromNib
{
    JWClickThroughView *transparentView = [[JWClickThroughView alloc] init];
    
    self.view = transparentView;
}

-(NSString *)label
{
    return @"";
}

-(NSString *)paletteLabel
{
    return @"Adaptive Space Item";
}

-(NSSize)minSize
{
    if(linkedView){
        if (linkedView.frame.size.width-16 > -8) {
            return NSMakeSize(linkedView.frame.size.width-16, 0);
        } else {
            return NSMakeSize(-8, 0);
        }
    }
    
    return [super minSize];
}

-(NSSize)maxSize
{
    if(linkedView){
        if (linkedView.frame.size.width-16 > -8) {
            return NSMakeSize(linkedView.frame.size.width-16, 0);
        } else {
            return NSMakeSize(-8, 0);
        }
    }
    
    return [super maxSize];
}

- (void)updateWidth
{
    if(linkedView){
        if (linkedView.frame.size.width-16 > -8) {
            [self setMinSize:NSMakeSize(linkedView.frame.size.width-16, 0)];
            [self setMaxSize:NSMakeSize(linkedView.frame.size.width-16, 0)];
        } else {
            [self setMinSize:NSMakeSize(-8, 0)];
            [self setMaxSize:NSMakeSize(-8, 0)];
        }
    }
}



@end
