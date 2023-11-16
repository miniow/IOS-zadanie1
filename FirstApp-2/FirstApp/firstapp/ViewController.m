//
//  ViewController.m
//  firstapp
//
//  Created by student on 30/10/2023.
//  Copyright © 2023 P. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction) enter {
    NSString *yourName = self.inputField.text;
    NSString *myName = @"Olek";
    NSString *message;
    NSString *surname = self.surnameField.text;
    
    if([yourName length] == 0) {
        yourName = @"World";
    }
    if ([yourName isEqualToString:myName]) {
        message = [NSString stringWithFormat:@"Cześć %@ %@. mamy takie same imie", yourName, surname];
    } else {
        message = [NSString stringWithFormat:@"Witaj %@ %@!", yourName, surname];
    }
    
    self.messageLabel.text = message;
}

- (void) prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"sendSurnameSegue"]) {
        SecondViewController *controller = (SecondViewController *) segue.destinationViewController;
        controller.surname = self.surnameField.text;
        controller.delegate = self;
    }
}


- (void)addItemViewController:(SecondViewController *)controller didFinishEnteringItem:(NSString *)item {
    NSLog(@"This was returned from SecondViewController %@", item);
    self.surnameField.text = item;
}

@end

