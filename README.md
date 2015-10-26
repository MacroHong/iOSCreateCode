# iOSCreateCode
###iOS条形码和二维码的生成
###条形码:
###导入头文件:
   #import "UIImage-NKDBarcode.h"
   
   #import "NKDCode128Barcode.h"
### 生成条形码的Image
    NSString *codeStr = @"90876543212276";
    UIImage *barImage = [UIImage imageFromBarcode:[[NKDCode128Barcode alloc]initWithContent:codeStr printsCaption:NO]];
    barIV.image = barImage;
###二维码:
###导入头文件:
   #import "QRCodeGenerator.h"
### 生成条形码的Image
    NSString *codeStr = @"90876543212276";
    UIImage *qrImage = [QRCodeGenerator qrImageForString:codeStr imageSize:qrIV.bounds.size.width];
    qrIV.image = qrImage;
