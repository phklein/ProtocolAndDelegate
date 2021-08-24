//
//  POPViewController.h
//  ThirdTask
//
//  Created by Pedro Almeida on 20/08/21.
//

#import <UIKit/UIKit.h>
#import "MainViewController.h"
NS_ASSUME_NONNULL_BEGIN
@class AppDelegate;
@class MainViewController;
@protocol POPdelegate <NSObject>
@required
-(void)changeColor: (UIColor *)color;
-(void)changeFields: (NSString *)Name : (NSString *) City;

@end

@interface POPViewController : UIViewController
    
@property (weak, nonatomic) IBOutlet UITextField *txtName;
@property (weak, nonatomic) IBOutlet UITextField *txtCity;
@property(nonatomic,retain) id <POPdelegate> delegate1;

@end

NS_ASSUME_NONNULL_END
