//
//  MainViewController.m
//  Twitter
//
//  Created by Dan Weng on 7/1/15.
//  Copyright (c) 2015 com.danweng. All rights reserved.
//

#import "MainViewController.h"
#import "TwitterClient.h"
#import "TweetsViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    /*
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Sign In" style:UIBarButtonItemStylePlain target:self action:@selector(LoginTap)];
    // Do any additional setup after loading the view from its nib.
*/
}
- (IBAction)onLogin:(id)sender {
    [[TwitterClient SharedInstance] loginWithCompletion:^(User *user, NSError *error){
    
        if (user != nil){
            //show tweets;
            UINavigationController *nvc = [[UINavigationController alloc] initWithRootViewController:[[TweetsViewController alloc] init ]];

            [self presentViewController:nvc animated:YES completion:nil];
            
        }else{
            //show error;
            
        }
    }];

}

- (void)LoginTap{
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
