//
//  MLUIRedCircleView.m
//  Pods
//
//  Created by Fabian Celdeiro on 9/9/14.
//
//

#import "MLUIRedCircleView.h"
#import <MLNewBoxDependecy/MLNewBox.h>


@implementation MLUIRedCircleView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        self.fillColor = [UIColor redColor];
        
        [self addSubview:[[MLNewBox alloc] initWithFrame:CGRectMake(0, 0, 50, 50)]];
        
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
