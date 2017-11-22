//
//  main.m
//  Exercise9
//
//  Created by Tống Đăng Tình on 11/22/17.
//  Copyright © 2017 Tống Đăng Tình. All rights reserved.
//__________________________________________________________
/*
 After completing exercise 8, add the following methods to the Calculator class and test them:
  -(double) changeSign;  // Change sign of accumulator
  -(double) reciprocal;  // 1/accumulator
  -(double) xSquared;    // accumulator squared
 */

#import <Foundation/Foundation.h>


// -------interface section
@interface Calculator : NSObject
{
    double accumulator;
}
-(void) setAccumulator: (double) value;
-(void) clear;
-(double) accumulator;
-(double) add: (double) value;
-(double) subtruct: (double) value;
-(double) multiply: (double) value;
-(double) divide: (double) value;

-(double) changeSign; // Change sign of accumulator
-(double) reciprocal; // 1/accumulator
-(double) xSquared;    // accumulator squared
@end


// Implemetation section
@implementation Calculator


// setAccumulator method
-(void) setAccumulator:(double)value
{
    accumulator = value;
}

// clear method
-(void) clear
{
    accumulator = 0;
}
// Accumulator method
-(double) accumulator
{
    return  accumulator;
}
// add method
-(double) add:(double)value
{
    accumulator+=value;
    return accumulator;
}
// Subtruct method
-(double) subtruct:(double)value
{
    accumulator-=value;
    return accumulator;
}
// Multiply method
-(double) multiply:(double)value
{
    accumulator*=value;
    return accumulator;
}

// divide method
-(double) divide:(double)value
{
    accumulator/=value;
    return accumulator;
}

// Change sign method
-(double) changeSign
{
    accumulator = -accumulator;
    return accumulator;
}

// reciprocal method
-(double) reciprocal
{
    accumulator = 1/accumulator;
    return accumulator;
}
// xSquared method
-(double) xSquared
{
    accumulator *= accumulator;
    return accumulator;
}
@end

// Program section
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
       // NSLog(@"Hello, World!");
        
        Calculator *myCalculator = [[Calculator alloc] init];
        // setAccumulator
        [myCalculator setAccumulator:100];
        //addition
        NSLog(@"The addition is %g", [myCalculator add:10]);
        NSLog(@"The subtruction is %g",[myCalculator subtruct:5]);
        NSLog(@"The multipy is %g",[myCalculator multiply:4]);
        NSLog(@"The divide is %g",[myCalculator divide:3]);
        //Change sign
        NSLog(@"The change sign is %g",[myCalculator changeSign]);
        NSLog(@"The reciprocal is %g",[myCalculator reciprocal]);
        NSLog(@"The squared is %g",[myCalculator xSquared]);
        
        
    }
    return 0;
}
