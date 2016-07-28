//
//  ViewController.m
//  MGLableExample
//
//  Created by Memet on 7/28/16.
//  Copyright © 2016 Memet. All rights reserved.
//

#import "ViewController.h"
#import "MGLable.h"

#define WIDTH [UIScreen mainScreen].bounds.size.width
#define HEIGHT [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self drawString];
}



-(void)drawString{
    
    NSString *string = @"ﺋﯘﻳﻐﯘﺭﻻﺭ (Uyghur)ﺋﯘﻳﻐﯘﺭ ﺋﺎﭘﺘﻮﻧﻮﻡ رايونىدا ﺗﻮﭘﻠﯩﺸﯩﭗ ﻳﺎﺷﺎﻳﺪﯨﻐﺎﻥ ﻏﻮﻟﻠﯘﻕ، ﻳﻪﺭﻟﯩﻚ ﻣﯩﻠﻠﻪﺕ ﯞﻩ ﺋﺎﭘﺘﻮﻧﻮﻣﯩﻴﻪ ﮬﻮﻗﯘﻗﻰ ﻳﯜﺭﮔﯜﺯﮔﯜﭼﻰ ﻣﯩﻠﻠﻪﺕ. نوپۇسى 10,069,346 ئادەم. ﺋﯘﻳﻐﯘﺭﻻﺭ ﭘﺎﺭﭼﻪ ﮬﺎﻟﻪﺗﺘﻪ، ﺟﯘﯕﮕﻮ(中国)ﻧﯩﯔ ﺑﯩﺮ ﻗﺎﺗﺎﺭ ﭼﻮﯓ ﺷﻪﮬﻪﺭﻟﯩﺮﯨﺪﻩ ﺧﯩﺰﻣﻪﺕ ﯞﻩ ﺗﯩﺠﺎﺭەﺕ ﻗﯩﻠﯩﺪﯗ. ﺋﯘﻳﻐﯘﺭﻻﺭ ﺟﯘﯕﮕﻮﺩﯨﻦ ﺑﺎﺷﻘﺎ، ﻗﺎﺯﺍﻗﯩﺴﺘﺎﻥ（Казахстан）، ﻗﯩﺮﻏﯩﺰﯨﺴﺘﺎﻥ، ﺋﯚﺯﺑﯧﻜﯩﺴﺘﺎﻥ، ﺗﺎﺟﯩﻜﯩﺴﺘﺎﻥ، ﺗﯜﺭﻛﻤﻪﻧﯩﺴﺘﺎﻥ (ﺋﺎﺳﺎﺳﻠﯩﻘﻰ ﺑﺎﻳﺮﺍﻡ ﺋﻪﻟﻰ ﺭﺍﻳﻮﻧﻰ)، ﭘﺎﻛﯩﺴﺘﺎﻥ، ﺋﻪﺭﻩﺑﯩﺴﺘﺎﻥ(عربي)، ﺗﯜﺭﻛﯩﻴﻪ（Türkiye）، ﺋﺎﯞﺳﺘﺮﺍﻟﯩﻴﻪ، ﮔﯧﺮﻣﺎﻧﯩﻴﻪ، ﺭﻭﺳﻴﻪ، ﺋﺎﻣﯧﺮﯨﻜﺎ (America)ﻗﺎﺗﺎﺭﻟﯩﻖ ﺩﯙﻟﻪﺗﻠﻪﺭﺩﻩ ﻛﯚﺭﯛﻧﻪﺭﻟﯩﻚ ﻧﻮﭘﯘﺳﺘﺎ ﻣﯘﺋﻪﻳﻴﻪﻥ ﺟﺎﻣﺎﺋﻪﺕ ﺗﯜﺭﻛﯜﻣﻰ ﺷﻪﻛﻠﯩﺪﻩ ﻳﺎﺷﺎﻳﺪﯗ.«ئۇيغۇر» دېگەن سۆزنىڭ مەنىسى «بىرلىشىش» ، «ھەمكارلىشىش» دېگەنلىك بولۇپ، ئۇيغۇرلار ئاساسلىقى شىنجاڭ ئۇيغۇر ئاپتونوم رايونىغا تارالغان، بۇلارنىڭ كۆپچىلىكى تەڭرىتېغىنىڭ جەنۇبىدىكى بوستانلىقلاردا توپلىشىپ ئولتۇراقلاشقان. ئاز بىر قىسمى خۇنەن (湖南)ئۆلكىسىنىڭ تاۋيۈەن（桃源）، چاڭدې قاتارلىق جايلىرىدا ئولتۇراقلاشقان.";

    //实例化MGLable
    MGLable *lable = [[MGLable alloc] initWithFrame:CGRectMake(10, (HEIGHT-360)/2, WIDTH-20, 360)];

    lable.text = string;
    
    lable.font = [UIFont fontWithName:@"ALKATIP Basma Tom" size:15];
    
    /*
     自定义字体的方法：（查看本项目的plist即可）
        1.把字体(xxx.ttf)文件，复制到我们的工程里面
        2.在plist文件中添加 Fonts provided by application(Array类型)
        3.为 Fonts provided by application(Array类型) 添加值 item 0 ---- xxx.ttf
        4.在工程相关位置直接实例化UIFont即可
     */
    
    [self.view addSubview:lable];

}

- (void)didReceiveMemoryWarning {
    
    [super didReceiveMemoryWarning];
}


@end
