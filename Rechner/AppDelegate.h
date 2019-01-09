//
//  AppDelegate.h
//  Rechner
//
//  Created by Adrian Kunz on 26.12.12.
//  Copyright (c) 2012 Adrian Kunz. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>
{

@private double var1;
@private double var2;
@private Byte curVar;
@private NSString* curCal;
@private BOOL commaMode;
@private int commaPos;
@private Byte cMode;
    
@private double result;
    
    __weak NSTextFieldCell *_TextView;
    __weak NSTextFieldCell *_ResultTextView;
    __weak NSTextField *_Console;
    __weak NSTextField *_ConsoleCommand;
    
    __weak NSButton *_Button1;
    __weak NSButton *_Button2;
    __weak NSButton *_Button3;
    __weak NSButton *_Button4;
    __weak NSButton *_Button5;
    __weak NSButton *_Button6;
    __weak NSButton *_Button7;
    __weak NSButton *_Button8;
    __weak NSButton *_Button9;
    __weak NSButton *_Button0;
    __weak NSButton *_ButtonNeg;
    __weak NSButton *_ButtonComma;
    __weak NSButton *_ButtonC;
    
    __weak NSButton *_ButtonPlus;
    __weak NSButton *_ButtonMinus;
    __weak NSButton *_ButtonMultiplicate;
    __weak NSButton *_ButtonDivide;
    
    __weak NSButton *_ButtonExponent;
    __weak NSButton *_ButtonSQRT;
    __weak NSButton *_ButtonReciprocal;
    __weak NSButton *_ButtonPercent;
    __weak NSButton *_ButtonSIN;
    __weak NSButton *_ButtonCOS;
    __weak NSButton *_ButtonTAN;
    __weak NSButton *_ButtonADD;
    __weak NSButton *_ButtonLCM;
    __weak NSButton *_ButtonGCD;
    
    __weak NSButton *_ButtonPI;
    __weak NSButton *_ButtonE;
    
    __weak NSButton *_ButtonEquals;
}

@property (assign) IBOutlet NSWindow *window;

@property (weak) IBOutlet NSTextFieldCell *TextView;

@property (weak) IBOutlet NSButton *Button1;
@property (weak) IBOutlet NSButton *Button2;
@property (weak) IBOutlet NSButton *Button3;
@property (weak) IBOutlet NSButton *Button4;
@property (weak) IBOutlet NSButton *Button5;
@property (weak) IBOutlet NSButton *Button6;
@property (weak) IBOutlet NSButton *Button7;
@property (weak) IBOutlet NSButton *Button8;
@property (weak) IBOutlet NSButton *Button9;
@property (weak) IBOutlet NSButton *Button0;
@property (weak) IBOutlet NSButton *ButtonNeg;
@property (weak) IBOutlet NSButton *ButtonComma;
@property (weak) IBOutlet NSButton *ButtonPlus;
@property (weak) IBOutlet NSButton *ButtonMinus;
@property (weak) IBOutlet NSButton *ButtonMultiplicate;
@property (weak) IBOutlet NSButton *ButtonDivide;
@property (weak) IBOutlet NSButton *ButtonExponent;
@property (weak) IBOutlet NSButton *ButtonSQRT;
@property (weak) IBOutlet NSButton *ButtonReciprocal;
@property (weak) IBOutlet NSButton *ButtonPercent;
@property (weak) IBOutlet NSButton *ButtonSIN;
@property (weak) IBOutlet NSButton *ButtonCOS;
@property (weak) IBOutlet NSButton *ButtonTAN;
@property (weak) IBOutlet NSButton *ButtonEquals;
@property (weak) IBOutlet NSButton *ButtonPI;
@property (weak) IBOutlet NSButton *ButtonE;
@property (weak) IBOutlet NSTextFieldCell *ResultTextView;
@property (weak) IBOutlet NSButton *ButtonC;
@property (weak) IBOutlet NSTextField *Console;
@property (weak) IBOutlet NSTextField *ConsoleCommand;
@property (weak) IBOutlet NSButton *ButtonADD;
@property (weak) IBOutlet NSButton *ButtonLCM;
@property (weak) IBOutlet NSButton *ButtonGCD;
@end
