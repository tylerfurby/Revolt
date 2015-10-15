//
//  MainInterface.m
//  Revolt
//
//  Created by Tyler Furreboe on 10/15/15.
//  Copyright © 2015 Furby Studios. All rights reserved.
//

#import "MainInterface.h"
#import "AppDelegate.h"

@interface MainInterface ()

@end

@implementation MainInterface

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

-(IBAction) changeViewController:(id)sender
{
    ViewController *viewController = [[ViewController alloc] init];
    [self presentViewController:viewController animated:YES completion:nil];
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
