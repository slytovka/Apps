//
//  ViewController.m
//  VowelCount
//
//  Created by Don Bora on 9/15/13.
//  Copyright (c) 2013 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    __weak IBOutlet UITextField *inputTextField;
    __weak IBOutlet UILabel *resultLabel;
    
    int numberOfVowels;
}
- (IBAction)check:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(const char*)getCharacterArray
{
    return [inputTextField.text UTF8String];
}



-(void)countVowels
{
    const char* arrayOfCharacters = [self getCharacterArray];
    int numberOfCharacters= strlen(arrayOfCharacters);
    for (int i=0; i<numberOfCharacters; i++) {
        if (arrayOfCharacters[i]=='a' || arrayOfCharacters[i]=='o' || arrayOfCharacters[i]=='e' || arrayOfCharacters[i]=='i' || arrayOfCharacters[i]=='u')
        {
            numberOfVowels++;
        }
    }
}


- (IBAction)check:(id)sender
{
    numberOfVowels = 0;
    [self countVowels];
    resultLabel.text = [NSString stringWithFormat:@"%i", numberOfVowels];
}


@end
