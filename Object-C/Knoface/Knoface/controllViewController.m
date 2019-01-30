//
//  controllViewController.m
//  Knoface
//
//  Created by 徐贤达 on 2018/4/30.
//  Copyright © 2018年 Bryce_Xu. All rights reserved.
//

#import "controllViewController.h"

@interface controllViewController ()

@property (weak, nonatomic) IBOutlet UILabel *surface1;

@property (weak, nonatomic) IBOutlet UILabel *surface2;

@property (weak, nonatomic) IBOutlet UILabel *surface3;

@property (weak, nonatomic) IBOutlet UISwitch *iswitch;

@property (weak, nonatomic) IBOutlet UIView *topView;

@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activity;

@property NSTimer *timer;

@property NSInteger timeLeft;


@end

#define channelOnCharacteristicView @"CharacteristicView"

@implementation controllViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    NSLog(@"xuxianda:%@",_characteristic);
    
    [self deleteLabels];
    
    UIImageView *backImage=[[UIImageView alloc]initWithFrame:self.view.bounds];
    backImage.image=[UIImage imageNamed:@"controllerBack.jpg"];
    [self.view insertSubview:backImage atIndex:0];
    
    _topView.backgroundColor=[UIColor clearColor];
    UIVisualEffectView *backView=[[UIVisualEffectView alloc]initWithEffect:[UIBlurEffect effectWithStyle:UIBlurEffectStyleRegular]];
    backView.frame=CGRectMake(0, 0, _topView.bounds.size.width, _topView.bounds.size.height);
    [_topView insertSubview:backView atIndex:0];
    
    [self babyDelegate];
    baby.channel(channelOnCharacteristicView).characteristicDetails(self.currPeripheral,self.characteristic);
    
    self.tableView.backgroundColor=[UIColor clearColor];
    self.tableView.layer.borderWidth=3;
    self.tableView.layer.borderColor=[[UIColor orangeColor] CGColor];
    self.tableView.delegate=self;
    self.tableView.dataSource=self;
    
    self.timeLeft=5;
    
    [baby cancelNotify:self.currPeripheral characteristic:self.characteristic];
}

-(void)deleteLabels
{
    _surface1.text=@"";
    _surface2.text=@"";
    _surface3.text=@"";
}

- (IBAction)selectSurfaces:(id)sender
{
    UIButton *button = (UIButton *)sender;
    [self deleteLabels];
    NSString *string=[[NSString alloc]init];
    if(button.tag==1){
        string=@"01";
        _surface1.text=@"表面";
    }
    else if(button.tag==2){
        string=@"10";
        _surface2.text=@"表面";
    }
    else{
        string=@"11";
        _surface3.text=@"表面";
    }
    NSData *data=[self convertHexStrToData:string];
    NSLog(@"write");
    [self.currPeripheral writeValue:data forCharacteristic:self.characteristic type:CBCharacteristicWriteWithoutResponse];
}

-(void)babyDelegate
{
    //设置写数据成功的block
    [baby setBlockOnDidWriteValueForCharacteristicAtChannel:channelOnCharacteristicView block:^(CBCharacteristic *characteristic, NSError *error) {
        NSLog(@"setBlockOnDidWriteValueForCharacteristicAtChannel characteristic:%@ and new value:%@",characteristic.UUID, characteristic.value);
    }];
}


- (IBAction)controllAction:(UISwitch *)sender
{
    if(_surface1.text==@""&&_surface2.text==@""&&_surface3.text==@"")
    {
        UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"注意" message:@"请先选择表面！" delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
        [alert show];
        [_iswitch setOn:NO];
    }
    else
    {
        [self activityStart];
        NSString *string=[[NSString alloc]init];
        if(sender.on==YES)
        {
            string=@"001";
        }
        else
        {
            string=@"010";
        }
        NSData *data=[self convertHexStrToData:string];
        NSLog(@"write");
        [self.currPeripheral writeValue:data forCharacteristic:self.characteristic type:CBCharacteristicWriteWithoutResponse];
    }
}

-(void)activityStart
{
    [self.activity startAnimating];
    [self timeDown];
}

-(NSData *)convertHexStrToData:(NSString *)str
{
    if(!str||[str length]==0)
    {
        return nil;
    }
    NSMutableData *hexData=[[NSMutableData alloc]initWithCapacity:8];
    NSRange range;
    if([str length]%2==0)
    {
        range=NSMakeRange(0,2);
    }
    else
    {
        range=NSMakeRange(0,1);
    }
    for(NSInteger i=range.location;i<[str length];i+=2)
    {
        unsigned int anInt;
        NSString *hexCharStr=[str substringWithRange:range];
        NSScanner *scanner=[[NSScanner alloc]initWithString:hexCharStr];
        [scanner scanHexInt:&anInt];
        NSData *entity=[[NSData alloc]initWithBytes:&anInt length:1];
        [hexData appendData:entity];
        range.location+=range.length;
        range.length=2;
    }
    NSLog(@"hexdata:%@",hexData);
    return hexData;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

-(UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString * cellStr=@"cell";
    
    UITableViewCell *cell =[self.tableView dequeueReusableCellWithIdentifier:cellStr];
    
    if(cell==nil)
    {
        //创建一个单元格对象
        //p1：单元格的样式
        //p2：单元格的复用标记
        cell=[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellStr];
    }
    NSString *str=[NSString stringWithFormat:@"Light"];
    //将单元格的主文字内容赋值
    cell.textLabel.text=str;
    
    cell.backgroundColor=[UIColor whiteColor];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.tableView deselectRowAtIndexPath:indexPath animated:YES];
}

-(NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    NSIndexPath *oldIndex = [self.tableView indexPathForSelectedRow];
    
    [self.tableView cellForRowAtIndexPath:oldIndex].accessoryType = UITableViewCellAccessoryNone;
    
    [self.tableView cellForRowAtIndexPath:indexPath].accessoryType = UITableViewCellAccessoryCheckmark;
    
    return indexPath;
    
}

-(void)timeDown
{
    [self handleTimer];
    self.timer=[NSTimer scheduledTimerWithTimeInterval:(1.0) target:self selector:@selector(handleTimer) userInfo:nil repeats:YES];
}

-(void)handleTimer
{
    //倒计时还有时间
    if(self.timeLeft>=0)
    {
        
    }
    //倒计时结束
    else
    {
        [self setAlert];
        [self.timer invalidate];
        [self.activity stopAnimating];
        [self.activity setHidesWhenStopped:YES];
        
    }
    self.timeLeft--;
}

-(void)setAlert
{
    UIAlertView *alert=[[UIAlertView alloc]initWithTitle:@"连接成功！" message:@"" delegate:nil cancelButtonTitle:@"我知道了" otherButtonTitles:nil, nil];
    [alert show];
}

@end
