//
//  SignupVC.m
//  PerfectFIT
//
//  Created by AJ on 13/07/17.
//  Copyright © 2017 AJ. All rights reserved.
//

#import "SignupVC.h"

@interface SignupVC () {
    
    __weak IBOutlet UITextField *emailTF;
    __weak IBOutlet UITextField *passwordTF;
    __weak IBOutlet UITextField *confirmPasswordTF;
}

@end

@implementation SignupVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)backAction:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}
- (IBAction)doneAction:(id)sender {
    UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"TabBarVC"];
    self.view.window.rootViewController = view;
}
- (IBAction)forgotAction:(id)sender {
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
