//
//  ViewController.m
//  Pie Chart Avatar
//
//  Created by Hamish Knight on 29/01/2016.
//  Copyright © 2016 Redonkulous Apps. All rights reserved.
//

#import "ViewController.h"
#import "AvatarView.h"

@implementation ViewController {
    AvatarView* avatarView;
}

-(void) viewDidLoad {
    [super viewDidLoad];
    
    CGFloat size = 300;
    
    avatarView = [[AvatarView alloc] initWithFrame:CGRectMake(0, 0, size, size)];
    avatarView.center = (CGPoint){self.view.frame.size.width*0.5, self.view.frame.size.height*0.5};
    avatarView.avatarImage = [UIImage imageNamed:@"photo.png"];
    avatarView.borderWidth = 10;
    avatarView.borderColors = @[[UIColor colorWithRed:122.0/255.0 green:108.0/255.0 blue:255.0/255.0 alpha:1],
                                [UIColor colorWithRed:100.0/255.0 green:241.0/255.0 blue:183.0/255.0 alpha:1],
                                [UIColor colorWithRed:0 green:222.0/255.0 blue:255.0/255.0 alpha:1],
                                [UIColor colorWithRed:1 green:138.0/255.0 blue:0 alpha:1],
                                [UIColor colorWithRed:1 green:0 blue:102.0/255.0 alpha:1]
                                ];
    avatarView.borderStrokeWidth = 0;
    
    
    [self.view addSubview:avatarView];
    
}

-(void) viewDidAppear:(BOOL)animated {
    
    [super viewDidAppear:animated];
    
    dispatch_time_t time = dispatch_time(DISPATCH_TIME_NOW, 1.0 * NSEC_PER_SEC);
    dispatch_after(time, dispatch_get_main_queue(), ^{
        [avatarView animateToBorderValues:@[@(0.4), @(0.35), @(0.25)] duration:2];
        [avatarView animateToStrokeWidth:10 duration:2];
    });
    
}

-(void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    [avatarView animateToBorderValues:@[@(0.1), @(0.2), @(0.3), @(0.25), @(0.15)] duration:2];
    [avatarView animateToStrokeWidth:5 duration:2];

    
}

@end
