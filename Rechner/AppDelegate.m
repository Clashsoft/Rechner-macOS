//
//  AppDelegate.m
//  Rechner
//
//  Created by Adrian Kunz on 26.12.12.
//  Copyright (c) 2012 Adrian Kunz. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate



- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
	var1 = 0;
	var2 = 0;
	curVar = 1;
	curCal = @"+";
	commaPos = 0;
	commaMode = NO;
	result = 0;
	cMode = 1;
}

#pragma mark "Numpad"

- (IBAction)Button1_Press:(id)sender
{
	[self addNumber:(1)];
}

- (IBAction)Button2_Press:(id)sender
{
	[self addNumber:(2)];
}

- (IBAction)Button3_Press:(id)sender
{
	[self addNumber:(3)];
}

- (IBAction)Button4_Press:(id)sender
{
	[self addNumber:(4)];
}

- (IBAction)Button5_Press:(id)sender
{
	[self addNumber:(5)];
}

- (IBAction)Button6_Press:(id)sender
{
	[self addNumber:(6)];
}

- (IBAction)Button7_Press:(id)sender
{
	[self addNumber:(7)];
}

- (IBAction)Button8_Press:(id)sender
{
	[self addNumber:(8)];
}

- (IBAction)Button9_Press:(id)sender
{
	[self addNumber:(9)];
}

- (IBAction)Button0_Press:(id)sender
{
	[self addNumber:(0)];
}

#pragma mark "Basic Operators"

- (IBAction)ButtonNegate_Press:(id)sender
{
	if (curVar == 1)
	{
		var1 *= -1;
	}
	else if (curVar == 2)
	{
		var2 *= -1;
	}
	[self updateTextView];
}

- (IBAction)ButtonComma_Press:(id)sender
{
	commaMode = true;
	commaPos = 1;
}

- (IBAction)ButtonC_Press:(id)sender
{
	if (cMode == 1)
	{
		if (curVar == 1)
		{
			var1 = 0;
		}
		else if (curVar == 2)
		{
			var2 = 0;
		}
		cMode = 2;
	}
	else
	{
		curVar = 1;
		var1 = 0;
		var2 = 0;
		result = 0;
		_ResultTextView.stringValue = @"";
		cMode = 1;
	}
	commaMode = NO;
	commaPos = 0;
	[self updateTextView];
}

- (IBAction)ButtonPlus_Press:(id)sender
{
	[self setNewCalculateMode:@"+"];
}

- (IBAction)ButtonMinus_Press:(id)sender
{
	[self setNewCalculateMode:@"-"];
}

- (IBAction)ButtonMultiplicate_Press:(id)sender
{
	[self setNewCalculateMode:@"*"];
}

- (IBAction)ButtonDivide_Press:(id)sender
{
	[self setNewCalculateMode:@"/"];
}

#pragma mark "Advanced Operators"

- (IBAction)ButtonExponent_Press:(id)sender
{
	[self setNewCalculateMode:@"^"];
}

- (IBAction)ButtonSQRT_Press:(id)sender
{
	[self setNewCalculateMode:@"√"];
}

- (IBAction)ButtonReciprocal:(id)sender
{
	if (curVar == 1)
	{
		var1 = 1 / var1;
	}
	else if (curVar == 2)
	{
		var2 = 1 / var2;
	}
	[self updateTextView];
}

- (IBAction)ButtonPercent_Press:(id)sender
{
}

- (IBAction)ButtonSIN_Press:(id)sender
{
	[self setNewCalculateMode:@"sin"];
}

- (IBAction)ButtonCOS_Press:(id)sender
{
	[self setNewCalculateMode:@"cos"];
}

- (IBAction)ButtonTAN_Press:(id)sender
{
	[self setNewCalculateMode:@"tan"];
}

- (IBAction)ButtonADD_Press:(id)sender
{
	[self setNewCalculateMode:(@"∑")];
}

- (IBAction)ButtonGCD_Press:(id)sender
{
	[self setNewCalculateMode:(@"GCD")];
}

- (IBAction)ButtonLCM_Press:(id)sender
{
	[self setNewCalculateMode:(@"LCM")];
}

#pragma mark "Constants"

- (IBAction)ButtonPI_Press:(id)sender
{
	if (curVar == 1)
	{
		var1 = M_PI;
	}
	else if (curVar == 2)
	{
		var2 = M_PI;
	}
	[self updateTextView];
}

- (IBAction)ButtonE_Press:(id)sender
{
	if (curVar == 1)
	{
		var1 = M_E;
	}
	else if (curVar == 2)
	{
		var2 = M_E;
	}
	[self updateTextView];
}

#pragma mark "Equals"

- (IBAction)ButtonEquals_Press:(id)sender
{
	[self calculate:var1 mode:curCal second:var2];
}
- (IBAction)CommandTextView_TextChanged:(id)sender
{
	NSArray *args = [_ConsoleCommand.stringValue componentsSeparatedByString:@" "];
	NSString *s = args[0];
	if ([s isEqual: @"calculate"])
	{
		if (args.count != 4)
		{
			[self addDeveloperInfo:(@"Too many or to few arguments!")];
		}
		else
		{
			double d1 = [args[1] doubleValue];
			double d2 = [args[3] doubleValue];
			[self calculate:d1 mode:args[2] second:d2];
		}
	}
	else
	{
		[self addDeveloperInfo:@"Unknown console command!"];
	}
}

- (void)addNumber:(int)number
{
	if (!commaMode)
	{
		if (curVar == 1)
		{
			var1 *= 10;
			var1 += number;
		}
		else if (curVar == 2)
		{
			var2 *= 10;
			var2 += number;
		}
	}
	else
	{
		double d = pow(0.1, commaPos);
		if (curVar == 1)
		{
			var1 += number * d;
			commaPos++;
		}
		else if (curVar == 2)
		{
			var2 += number * d;
			commaPos++;
		}
	}
	cMode = 1;
	[self updateTextView];
}

- (void)updateTextView
{
	_TextView.stringValue = [NSString stringWithFormat:(@"%f\n%@ %f"), var1, curCal, var2];
}

- (void)setNewCalculateMode:(NSString*)mode
{
	commaMode = NO;
	commaPos = 0;
	if (curVar == 1)
	{
		curVar = 2;
		curCal = mode;
	}
	else if (curVar == 2)
	{
		var1 = [self calculate:var1 mode:curCal second:var2];
		var2 = 0;
		curVar = 2;
		curCal = mode;
	}
	[self updateTextView];
}

- (double)calculate:(double)par1 mode:(NSString*)mode second:(double)par2
{
	double d = 0;
	if ([mode isEqual: @"+"]) {d = par1 + par2;}
	else if ([mode isEqual: @"-"]) {d = par1 - par2;}
	else if ([mode isEqual: @"*"]) {d = par1 * par2;}
	else if ([mode isEqual: @"/"]) {d = par1 / par2;}
	else if ([mode isEqual: @"^"]) {d = pow(par1, par2);}
	else if ([mode isEqual: @"√"]) {d = [AppDelegate sqrt:par2 number:par1];}
	else if ([mode isEqual: @"∑"]) {for (int i = (int) par1; i <= par2; i++) { d += i; };}
	else if ([mode isEqual: @"sin"]) {d = sin(par1);}
	else if ([mode isEqual: @"cos"]) {d = cos(par1);}
	else if ([mode isEqual: @"tan"]) {d = tan(par1);}
	else if ([mode isEqual: @"LCM"]) {d = [AppDelegate lcm:(int) par1 and:(int) par2];}
    else if ([mode isEqual: @"GCD"]) {d = [AppDelegate gcd:(int) par1 and:(int) par2];}

    result = d;
    _ResultTextView.stringValue = [NSString stringWithFormat:(@"%f"), result];
	[self addDeveloperInfo:([NSString stringWithFormat:(@"%f %@ %f = %f"), par1, curCal, par2, result])];

	return d;
}

+ (double)sqrt:(double)par1 number:(double)par2
{
	return pow(par1, 1 / par2);
}

+ (int)lcm:(int)a and:(int)b
{
	int n;
	for(n=2;;n++)
	{
		if(n % a == 0 && (n % b == 0))
		{
			return n;
		}
	}
}

+ (int)gcd:(int)a and:(int)b
{
	int c;
	if(a<b)
	{
		c = a;
		a = b;
		b = c;
	}
	while(1)
	{
		c = a % b;
		if(c==0)
		{
			return b;
		}
		a = b;
		b = c;
	}
}

- (void)addDeveloperInfo:(NSString*)info
{
	_Console.stringValue = [NSString stringWithFormat:(@"%@%@%c"), _Console.stringValue, info, '\n'];
}

@end
