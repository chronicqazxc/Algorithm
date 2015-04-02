//
//  main.m
//  TowersOfHanoi
//
//  Created by Wayne on 2/28/14.
//  Copyright (c) 2014 Wayne. All rights reserved.
//
/*
      A  B  C
    1.A -> B
    2.A -> C
    3.B -> C
    Hanoi:
    f(n) = f(n-1) + 1 + f(n-1)
         = 2^n - 1
 */
#import <Foundation/Foundation.h>
void hanoi(int n, char start[], char temp[], char destination[]);
int seq;
int A, B, C, sum;
int main(int argc, const char * argv[])
{

    @autoreleasepool {
        int over;
        int n;
        do{
            seq = 0;
            printf("Please enter amount of dist:");
            scanf("%d",&n);
            A = B = C = 0;
            sum = n;
            hanoi(n,"start","temp","destination");
            printf("Continue? 0:end 1:continue");
            scanf("%d",&over);
        }while(over!=0 && n != 0);
    }
    return 0;
}

void hanoi(int n, char start[], char temp[], char destination[]){
    if(n == 1){
        seq++;
        printf("%d.Move disc from %s to %s\n",seq,start,destination);
    }else{
        hanoi(n-1, start, destination, temp);   // A -> B
        hanoi(1, start, temp, destination);     // A -> C
        hanoi(n-1, temp, start, destination);   // B -> C
    }
}