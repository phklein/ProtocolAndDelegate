//
//  MainViewController.m
//  ThirdTask
//
//  Created by Pedro Almeida on 20/08/21.
//

#import "MainViewController.h"
#import "POPViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self start];
    
}
- (IBAction)DO:(UIButton *)sender {
    if ([sender.currentTitle  isEqual: @"Do it"]) {
        POPViewController *viewControler = [[POPViewController alloc ]init];
        viewControler.delegate1  = self;
        [[self navigationController] pushViewController:viewControler animated:YES];
    }
    else{
        [self start];
    }
}
-(void)changeColor: (UIColor *) color;{
    [[self view] setBackgroundColor:color];
    _lblTxt1.textColor= UIColor.darkTextColor;
    _lblTxt2.textColor= UIColor.darkTextColor;
    _lblName.textColor= UIColor.darkTextColor;
    _lblCity.textColor= UIColor.darkTextColor;
    _lblTitle.textColor = UIColor.darkTextColor;
    [_button setTitleColor:UIColor.grayColor forState:UIControlStateNormal];
}
-(void)changeFields:(NSString *)Name :(NSString *)City{
    _lblName.text = Name;
    _lblCity.text = City;
    _lblTitle.text = @"YOU DID'IT";
    [_button setTitle:@"Restart" forState:UIControlStateNormal];
    [self showLabels];
   
}
-(void)showLabels{
    _lblTxt1.hidden = false;
    _lblTxt2.hidden = false;
    _lblName.hidden = false;
    _lblCity.hidden = false;
}
-(void)start{
    _lblTxt1.hidden = true;
    _lblTxt2.hidden = true;
    _lblName.hidden = true;
    _lblCity.hidden = true;
    _lblTitle.text = @"Change my color";
    _lblTitle.textColor = UIColor.whiteColor;
    [_button setTitleColor:UIColor.blueColor forState:UIControlStateNormal];
    [_button setTitle:@"Do it" forState:UIControlStateNormal];
    [[self view] setBackgroundColor:UIColor.blackColor];
    [[self navigationController] setNavigationBarHidden:YES];
}
@end
