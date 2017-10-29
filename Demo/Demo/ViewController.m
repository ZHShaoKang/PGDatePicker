//
//  ViewController.m
//  Demo
//
//  Created by piggybear on 2017/8/8.
//  Copyright © 2017年 piggybear. All rights reserved.
//

#import "ViewController.h"
#import "PGDatePicker.h"

@interface ViewController ()<PGDatePickerDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (IBAction)yearHandler:(UIButton *)sender {
    PGDatePicker *datePicker = [[PGDatePicker alloc]init];
    datePicker.delegate = self;
    [datePicker show];
    datePicker.minimumDate = [NSDate setYear:2015];
    datePicker.maximumDate = [NSDate setYear:2030];
    datePicker.datePickerMode = PGDatePickerModeYear;

}

- (IBAction)yearAndMonthHandler:(id)sender {
    PGDatePicker *datePicker = [[PGDatePicker alloc]init];
    datePicker.delegate = self;
    [datePicker show];
//    datePicker.minimumDate = [NSDate setYear:2015 month:5];
    datePicker.maximumDate = [NSDate setYear:2020 month:10];
    datePicker.datePickerMode = PGDatePickerModeYearAndMonth;
    
//    NSCalendar *calendar = [NSCalendar currentCalendar];
//    NSDateComponents *components = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:[NSDate date]];
//    components.year = 2018;
//    components.month = 11;
//    components.day = 15;
//    NSDate *date = [calendar dateFromComponents:components];
//    [datePicker setDate:date animated:YES];
}

- (IBAction)dateHandler:(id)sender {
    PGDatePicker *datePicker = [[PGDatePicker alloc]init];
    datePicker.delegate = self;
    [datePicker show];
    datePicker.minimumDate = [NSDate setYear:2015 month:5 day:27];
    datePicker.maximumDate = [NSDate setYear:2020 month:10 day:20];
    datePicker.datePickerMode = PGDatePickerModeDate;
    
//    NSCalendar *calendar = [NSCalendar currentCalendar];
//    NSDateComponents *components = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:[NSDate date]];
//    components.year = 2019;
//    components.month = 11;
//    components.day = 15;
//    NSDate *date = [calendar dateFromComponents:components];
//    [datePicker setDate:date animated:YES];
}

- (IBAction)timeHandler:(id)sender {
    PGDatePicker *datePicker = [[PGDatePicker alloc]init];
    datePicker.delegate = self;
//    datePicker.minimumDate = [NSDate setHour:19 minute:01];
//    datePicker.maximumDate = [NSDate setHour:22 minute:20];
    [datePicker show];
    datePicker.datePickerMode = PGDatePickerModeTime;
    
//    NSCalendar *calendar = [NSCalendar currentCalendar];
//    NSDateComponents *components = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:[NSDate date]];
//    components.hour = 22;
//    components.minute = 11;
//    NSDate *date = [calendar dateFromComponents:components];
//    [datePicker setDate:date animated:YES];
}

- (IBAction)dateAndTimeHandler:(id)sender {
    PGDatePicker *datePicker = [[PGDatePicker alloc]init];
    datePicker.delegate = self;
//    datePicker.minimumDate = [NSDate setMonth:10 day:10 hour:18 minute:6];
//    datePicker.maximumDate = [NSDate setMonth:12 day:27 hour:22 minute:30];
    [datePicker show];
    datePicker.datePickerMode = PGDatePickerModeDateAndTime;
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay fromDate:[NSDate date]];
    components.month = 11;
    components.day = 15;
    components.hour = 22;
    components.minute = 11;
    NSDate *date = [calendar dateFromComponents:components];
    [datePicker setDate:date animated:YES];
}

- (IBAction)titleHandler:(UIButton *)sender {
    PGDatePicker *datePicker = [[PGDatePicker alloc]init];
    datePicker.delegate = self;
    [datePicker show];
    datePicker.titleLabel.text = @"PGDatePicker";
    datePicker.datePickerMode = PGDatePickerModeDate;
}

- (IBAction)styleHandler:(id)sender {
    PGDatePicker *datePicker = [[PGDatePicker alloc]init];
    datePicker.delegate = self;
    [datePicker show];
    datePicker.datePickerMode = PGDatePickerModeDate;
    
    datePicker.titleLabel.text = @"PGDatePicker";
    //设置线条的颜色
    datePicker.lineBackgroundColor = [UIColor redColor];
    //设置选中行的字体颜色
    datePicker.titleColorForSelectedRow = [UIColor redColor];
    //设置未选中行的字体颜色
    datePicker.titleColorForOtherRow = [UIColor blackColor];
    //设置取消按钮的字体颜色
    datePicker.cancelButtonTextColor = [UIColor blackColor];
    //设置取消按钮的字
    datePicker.cancelButtonText = @"Cancel";
    //设置取消按钮的字体大小
    datePicker.cancelButtonFont = [UIFont boldSystemFontOfSize:17];
    
    //设置确定按钮的字体颜色
    datePicker.confirmButtonTextColor = [UIColor redColor];
    //设置确定按钮的字
    datePicker.confirmButtonText = @"Sure";
    //设置确定按钮的字体大小
    datePicker.confirmButtonFont = [UIFont boldSystemFontOfSize:17];
}

#pragma PGDatePickerDelegate
- (void)datePicker:(PGDatePicker *)datePicker didSelectDate:(NSDateComponents *)dateComponents {
    NSLog(@"dateComponents = %@", dateComponents);
}

@end
