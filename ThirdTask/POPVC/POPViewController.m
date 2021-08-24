//
//  POPViewController.m
//  ThirdTask
//
//  Created by Pedro Almeida on 20/08/21.
//
#import "MainViewController.h"
#import "POPViewController.h"

@interface POPViewController ()

@end

@implementation POPViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}
- (IBAction)btnSend:(UIButton *)sender {
    [_delegate1 changeFields:_txtName.text :_txtCity.text];
    [[self navigationController] popToRootViewControllerAnimated:YES];
}
- (IBAction)btnGreen:(UIButton *)sender {
    [_delegate1 changeColor:UIColor.greenColor];
}
- (IBAction)btnRed:(UIButton *)sender {
    [_delegate1 changeColor:UIColor.redColor];

}
- (IBAction)bntBlue:(UIButton *)sender {
    [_delegate1 changeColor:UIColor.blueColor];

}
//-(void) show:(MainViewController *) delegate{
//    MainViewController *mainViewController = delegate;
//    
//    UIColor *colorAlpha = [UIColor blackColor];
//    colorAlpha = [colorAlpha colorWithAlphaComponent:0.5f];
//    
//    UIColor *colorTransparant = [UIColor blackColor];
//    colorTransparant = [colorTransparant colorWithAlphaComponent:0.0f];
//    
//    [self.view setFrame: mainViewController.view.bounds];
//    [self.view setBackgroundColor:colorTransparant];
//    [self.view setContentScaleFactor: 0.6f];
//    [mainViewController.view addSubview: self.view];
//
//    [UIView animateWithDuration: 0.3f animations: ^{
//       [self.view setBackgroundColor:colorAlpha];
//       [self.view setContentScaleFactor: 1.0f];
//   }];
//}


@end
