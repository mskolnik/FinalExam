//
//  CardView.m
//  FinalExam
//
//  Created by MariAnne Skolnik on 5/7/14.
//  Copyright (c) 2014 MariAnne Skolnik. All rights reserved.
//

#import "CardView.h"

@implementation CardView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"Test1bCardView" owner:self options:nil];
        // Initialization code
        
    }
    return self;
}

- (id)init {
    self = [super init];
    if (self) {
        [[NSBundle mainBundle] loadNibNamed:@"Test1bCardView" owner:self options:nil];
    }
    return self;
}

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIBezierPath *bz = [UIBezierPath bezierPathWithRoundedRect:[self frame] cornerRadius:12.0];
    [bz addClip];
    [bz fill];
}


@end

