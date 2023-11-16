//
//  SecondViewController.h
//  firstapp
//
//  Created by student on 30/10/2023.
//  Copyright © 2023 P. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class SecondViewController;


@protocol SecondViewControllerDelegate <NSObject>

- (void) addItemViewController:(SecondViewController *) controller didFinishEnteringItem: (NSString *) item;

@end


@interface SecondViewController : UIViewController

@property (nonatomic, weak) id <SecondViewControllerDelegate> delegate;

@property (nonatomic, weak) IBOutlet UITextField *modifiedSurnameTextField;

@property NSString *surname;

- (IBAction)goBack;
@end

NS_ASSUME_NONNULL_END
