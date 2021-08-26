//
//  main.m
//  program1: Object C basis
//
//  Created by DevOpsThinh on 8/26/21.
//

#import <Foundation/Foundation.h>

// MARK: Fraction @interface
//--------- @interface section -------
@interface Fraction : NSObject
- (void) print;
- (void) setTu: (int) n;
- (void) setMau: (int) m;
- (int) tu;
- (int) mau;
@end
//--------- @implement section -------
@implementation Fraction
{
    int tu, mau;
}

- (void) print {
    NSLog(@"%i/%i", tu, mau);
}
- (void)setTu:(int)n
{
    tu = n;
}
- (void)setMau:(int)m
{
    mau = m;
}
- (int) tu {
    return tu;
}
- (int) mau {
    return mau;
}
@end

// MARK: Calculator @interface
//--------- @interface section -------
@interface Calculator : NSObject

// accumulator methods
- (void) setAccumulator: (double) value;
- (void) clear;
- (double) accumulator;

// arithmetic methods
- (void) add: (double) value;
- (void) subtract: (double) value;
- (void) multiply: (double) value;
- (void) divide: (double) value;
@end
//--------- @implement section -------
@implementation Calculator {
    double accumulator;
}

- (void) setAccumulator:(double)value {
    accumulator = value;
}

- (void) clear {
    accumulator = 0;
}

- (double) accumulator {
    return  accumulator;
}

- (void) add:(double)value {
    accumulator += value;
}

- (void) subtract:(double)value {
    accumulator -= value;
}

- (void) multiply:(double)value {
    accumulator *= value;
}

- (void) divide:(double)value {
    accumulator /= value;
}
@end

//----------- Program section ----------

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        int n, number, triangularNumber, counter;
        /* For 5 times
         Get the number from the user
         Calculate the requested triangular number
         Display the results.*/
        for (counter = 1;  counter <= 3; ++counter) {
            NSLog(@"What triangular number do you want?");
            scanf("%i", &number);
            
            triangularNumber = 0;
            
            for (n = 1; n <=number; ++n) {
                triangularNumber += n;
            }
            NSLog(@"Triangular number is %i is %i", number, triangularNumber);
        }
        NSLog(@"Hello, I'm Thinh!");
        NSLog(@"-------------------- Object C basis----------------------");
        int i, j;
        i = 10;
        j = i + 2;
        
        NSLog(@"Testing...");
        NSLog(@"....%i", j);
        NSLog(@"...%i\n", i + 1);
        NSLog(@"..%i", i + 2);
        
        Fraction *myFraction;
        //Fraction *myFraction = [Fraction new];
        
        myFraction = [Fraction alloc];
        myFraction = [myFraction init];
        //myFraction = [[Fraction alloc] init];
        
        [myFraction setTu: 1];
        [myFraction setMau: 3];
        
        NSLog(@"The value of my fraction components are: %i and %i", [myFraction tu], [myFraction mau]);
        NSLog(@"The value of my fraction is:"); [myFraction print];
        
        Fraction *phSo1 = [[Fraction alloc]init];
        Fraction *phSo2 = [[Fraction alloc]init];
        
        // set 1st fraction to 2/3
        [phSo1 setTu: 2]; [phSo1 setMau:3];
        // set 2nd fraction to 3/7
        [phSo2 setTu:3]; [phSo2 setMau:7];
        
        NSLog(@"First fraction is:"); [phSo1 print];
        NSLog(@"Second fraction is:"); [phSo2 print];
        
        // MARK: Data Type
        int intValue = 10;
        float floatValue = 8.50;
        double doubleValue = 9.5e+11;
        char charValue = 'a';
        //id memoryObject;
        
        NSLog(@"Display all: integer: %i. \nfloat: %f. \ndouble: %e. \nchar: %c.", intValue, floatValue, doubleValue, charValue);
        
        // MARK: Arithmetic Expressions
        int a, b, result;
        float c, d, casting;
        a = intValue;
        b = a + 2;
        c = floatValue;
        d = c * 2;
        result = a * c;
        casting = (float) -a / 100;
        
        NSLog(@"1 + a / b - 1 = %i", 1 + a / b - 1);
        NSLog(@"a / b * a = %i", a / b * a);
        NSLog(@"c / d * d = %f", c /d * d);
        NSLog(@"-b = %i and result: %i", -b, result);
        NSLog(@"-b %% a = %i", -a % b);
        NSLog(@"-a / b = %f", casting);
        NSLog(@"(int) c + (int) c = %i", (int)c + (int)c);
        NSLog(@"-------------------- Calculator Class ----------------------");
        // Allocate and init an instance of Calculator class
        Calculator *deskCacl = [[Calculator alloc]init];
        // Assign the accumulator value
        [deskCacl setAccumulator: 100.0];
        
        [deskCacl add: 200.0];
        [deskCacl subtract: 10.0];
        [deskCacl multiply: 5];
        [deskCacl divide: 15.0];
        NSLog(@"The result is %g", [deskCacl accumulator]);
    }
    return 0;
}

