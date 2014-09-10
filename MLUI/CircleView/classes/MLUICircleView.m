//
//  MLUICircleView.m
//  Pods
//
//  Created by Fabian Celdeiro on 9/9/14.
//
//

#import "MLUICircleView.h"

@implementation MLUICircleView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        self.fillColor = [UIColor yellowColor];
        
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    CGContextRef context = UIGraphicsGetCurrentContext();
  //  CGContextSetFillColorWithColor(context, self.fillColor.CGColor);
    CGContextSetStrokeColorWithColor(context, [self.fillColor CGColor]);
    UIBezierPath *circlePath = [UIBezierPath bezierPath];
    [circlePath addArcWithCenter:CGPointMake(rect.size.width/2  , rect.size.height/2) radius:rect.size.width/2 startAngle:-M_PI endAngle:M_PI clockwise:YES];
    [circlePath setLineWidth:1];
    [circlePath stroke];
}


@end
