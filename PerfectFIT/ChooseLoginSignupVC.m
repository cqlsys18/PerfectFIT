//
//  ChooseLoginSignupVC.m
//  PerfectFIT
//
//  Created by AJ on 13/07/17.
//  Copyright © 2017 AJ. All rights reserved.
//

#import "ChooseLoginSignupVC.h"

@interface ChooseLoginSignupVC () {
    
    __weak IBOutlet UIImageView *backImv;
    __weak IBOutlet UIButton *loginBtn;
    __weak IBOutlet UIButton *signupBtn;
    __weak IBOutlet UIButton *becomeTrainerBtn;
    __weak IBOutlet UIButton *termsOfUseBtn;
}

@end

@implementation ChooseLoginSignupVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)loginAction:(id)sender {
    UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"LoginVC"];
    [self.navigationController pushViewController:view animated:YES];
}
- (IBAction)signupAction:(id)sender {
    UIViewController *view = [self.storyboard instantiateViewControllerWithIdentifier:@"SignupVC"];
    [self.navigationController pushViewController:view animated:YES];
}
- (IBAction)becomeTrainerAction:(id)sender {
}
- (IBAction)termsOfUseAction:(id)sender {
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
