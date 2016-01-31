//
//  ViewController.m
//  Myself
//
//  Created by ITHS on 2016-01-27.
//  Copyright © 2016 ITHS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISlider *slider;
@property (strong, nonatomic) IBOutlet UIView *backgroundResult;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(UIColor*)mixedColor{
    return [UIColor colorWithRed:1.0f
                           green:self.slider.value
                            blue:self.slider.value
                           alpha:1.0f];
}

- (IBAction)changeColor:(UISlider *)sender {
    self.backgroundResult.backgroundColor= [self mixedColor];
}

@end
