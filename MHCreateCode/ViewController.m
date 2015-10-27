//
//  ViewController.m
//  MHCreateCode
//
//  Created by Macro on 10/15/15.
//  Copyright © 2015 Macro. All rights reserved.
//

#import "ViewController.h"
#import "QRCodeGenerator.h"
#import "UIImage-NKDBarcode.h"
#import "NKDCode128Barcode.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    UIImageView *barIV = [[UIImageView alloc] initWithFrame:CGRectMake(30, 40, [[UIScreen mainScreen] bounds].size.width - 60, 70)];
    [self.view addSubview:barIV];
    
    UIImageView *qrIV = [[UIImageView alloc] initWithFrame:CGRectMake(10, 150, [[UIScreen mainScreen] bounds].size.width - 20, [[UIScreen mainScreen] bounds].size.width - 20)];
    [self.view addSubview:qrIV];
    
    NSString *codeStr = @"90876543212276";
    // 生成条形码的image
    UIImage *barImage = [UIImage imageFromBarcode:[[NKDCode128Barcode alloc]initWithContent:codeStr printsCaption:NO]];
    barIV.image = barImage;
    // 生成二维码的image
    UIImage *qrImage = [QRCodeGenerator qrImageForString:codeStr imageSize:qrIV.bounds.size.width];
    qrIV.image = qrImage;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
