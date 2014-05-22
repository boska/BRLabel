//
//  BRViewController.m
//  BRLabelDemo
//
//  Created by Boska Lee on 5/22/14.
//
//

#import "BRViewController.h"
#import "BRLabel.h"
@interface BRViewController ()

@end

@implementation BRViewController

- (void)viewDidLoad {
  [super viewDidLoad];
  // Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidAppear:(BOOL)animated {
  [self.label setTextWithShuffle:@"123456789"];
}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}

@end
