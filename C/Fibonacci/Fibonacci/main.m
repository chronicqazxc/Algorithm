//
//  main.m
//  Fibonacci
//
//  Created by Wayne on 3/22/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//
/*
    Fibonacci:
    F0 = 0
    F1 = 1
    Fn = F(n-1) + F(n-2)
 
    Recursive:
    Procedure FIB(N)
        IF (N=0 OR N=1)
            RETURN N
        ELSE
            RETURN FIB(N-1) + FIB(N-2)
 
    Loop:
    Procedure FIB(N)
        IF (N=0 OR N=1)
            RETURN N
        a = 0;
        b = 1;
        FOR i = 2 TO N [
            temp = b;
            b = a + b;
            a = temp;
        ]
        RETURN b;
 
 */

#import <Foundation/Foundation.h>
#include <stdio.h>
#include <stdlib.h>
#define LEN 20
void fill_fibonacci_numbers(int *, int);
void print(int *, int len);

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int fib[LEN] = {0};
        
        fill_fibonacci_numbers(fib, LEN);
        print(fib,LEN);
        
    }
    return 0;
}

void fill_fibonacci_numbers(int *fib, int len){
    fib[0] = 0;
    fib[1] = 1;
    int i;
    for(i = 2; i<len; i++){
        fib[i] = fib[i-1] + fib[i-2];
    }
}

void print(int *arr, int len){
    int i;
    for(i = 0; i < len; i++){
        printf("%d\n",arr[i]);
    }
}

