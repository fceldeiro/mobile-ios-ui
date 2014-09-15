//
//  ViewController.m
//  MLUIComponents
//
//  Created by Fabian Celdeiro on 9/10/14.
//  Copyright (c) 2014 MercadoLibre. All rights reserved.
//

#import "ViewController.h"
#import <MLUI/MLUIRedCircleView.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    MLUIRedCircleView * redCircle = [[MLUIRedCircleView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    redCircle.fillColor = [UIColor redColor];
    [self.view addSubview:redCircle];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
