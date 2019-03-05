//
//  AppDelegate.h
//  Rechner
//
//  Created by Adrian Kunz on 26.12.12.
//  Copyright (c) 2012 Adrian Kunz. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate> {
	double var1;
	double var2;
	Byte curVar;
	NSString* curCal;
	BOOL commaMode;
	int commaPos;
	Byte cMode;
	double result;

	__weak NSTextFieldCell* _TextView;
	__weak NSTextFieldCell* _ResultTextView;
	__weak NSTextField* _Console;
	__weak NSTextField* _ConsoleCommand;
}

@property(weak) IBOutlet NSTextFieldCell* TextView;

@property(weak) IBOutlet NSButton* Button1;
@property(weak) IBOutlet NSButton* Button2;
@property(weak) IBOutlet NSButton* Button3;
@property(weak) IBOutlet NSButton* Button4;
@property(weak) IBOutlet NSButton* Button5;
@property(weak) IBOutlet NSButton* Button6;
@property(weak) IBOutlet NSButton* Button7;
@property(weak) IBOutlet NSButton* Button8;
@property(weak) IBOutlet NSButton* Button9;
@property(weak) IBOutlet NSButton* Button0;
@property(weak) IBOutlet NSButton* ButtonNeg;
@property(weak) IBOutlet NSButton* ButtonComma;
@property(weak) IBOutlet NSButton* ButtonPlus;
@property(weak) IBOutlet NSButton* ButtonMinus;
@property(weak) IBOutlet NSButton* ButtonMultiplicate;
@property(weak) IBOutlet NSButton* ButtonDivide;
@property(weak) IBOutlet NSButton* ButtonExponent;
@property(weak) IBOutlet NSButton* ButtonSQRT;
@property(weak) IBOutlet NSButton* ButtonReciprocal;
@property(weak) IBOutlet NSButton* ButtonPercent;
@property(weak) IBOutlet NSButton* ButtonSIN;
@property(weak) IBOutlet NSButton* ButtonCOS;
@property(weak) IBOutlet NSButton* ButtonTAN;
@property(weak) IBOutlet NSButton* ButtonEquals;
@property(weak) IBOutlet NSButton* ButtonPI;
@property(weak) IBOutlet NSButton* ButtonE;
@property(weak) IBOutlet NSTextFieldCell* ResultTextView;
@property(weak) IBOutlet NSButton* ButtonC;
@property(weak) IBOutlet NSTextField* Console;
@property(weak) IBOutlet NSTextField* ConsoleCommand;
@property(weak) IBOutlet NSButton* ButtonADD;
@property(weak) IBOutlet NSButton* ButtonLCM;
@property(weak) IBOutlet NSButton* ButtonGCD;
@end
