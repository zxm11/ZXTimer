//
//  ZXTimerViewController.m
//  ZXTimer
//
//  Created by Richle  on 2017/2/21.
//  Copyright © 2017年 zxm. All rights reserved.
//

#import "ZXTimerViewController.h"
#import "ZXTimer.h"

@interface ZXTimerViewController (){
    ZXTimer * _timer;
}

@end

@implementation ZXTimerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _timer = [ZXTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(ZXTimerSelector:) userInfo:@"timer go..." repeats:true];
    // Do any additional setup after loading the view.
}

-(void)ZXTimerSelector:(NSDictionary *)info{
    NSLog(@"%@",info);
}

- (IBAction)reStart:(UIButton *)sender {
    [_timer reStart];
}
- (IBAction)stop:(UIButton *)sender {
    [_timer stop];
}

- (IBAction)invalidate:(UIButton *)sender {
    [_timer invalidate];
}

- (void)dealloc{
    NSLog(@"ZXTimerViewController release");
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
