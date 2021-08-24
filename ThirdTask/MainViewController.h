//
//  MainViewController.h
//  ThirdTask
//
//  Created by Pedro Almeida on 20/08/21.
//

#import <UIKit/UIKit.h>
#import "POPViewController.h"

NS_ASSUME_NONNULL_BEGIN

@interface MainViewController : UIViewController <POPdelegate>
@property (weak, nonatomic) IBOutlet UILabel *lblTxt1;
@property (weak, nonatomic) IBOutlet UILabel *lblName;
@property (weak, nonatomic) IBOutlet UILabel *lblTxt2;
@property (weak, nonatomic) IBOutlet UILabel *lblCity;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UILabel *lblTitle;

@end

NS_ASSUME_NONNULL_END
