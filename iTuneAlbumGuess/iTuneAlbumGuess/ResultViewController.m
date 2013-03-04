//
//  ResultViewController.m
//  iTuneAlbumGuess
//
//  Created by Torbjörn on 2013-03-04.
//  Copyright (c) 2013 Admin. All rights reserved.
//

#import "ResultViewController.h"

@interface ResultViewController ()

@end

@implementation ResultViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Sätter resultatLablarna.
    [[self firstResultLabel] setText:_firstGuessItem];
    [[self secondResultLabel] setText:_secondGuessItem];
    [[self thirdResultLabel] setText:_thirdGuessItem];
    
    // Kontrollerar svaren med rätt facit och gör i så fall texten grön.
    if ([[self.firstResultLabel text] isEqualToString:_albumTitelAndArtistArray[0]])
    {
        [[self firstResultLabel] setTextColor:[UIColor greenColor]];
    }
    
    if ([[self.secondResultLabel text] isEqualToString:_albumTitelAndArtistArray[1]])
    {
        [[self secondResultLabel] setTextColor:[UIColor greenColor]];
    }
    
    if ([[self.thirdResultLabel text] isEqualToString:_albumTitelAndArtistArray[2]])
    {
        [[self thirdResultLabel] setTextColor:[UIColor greenColor]];
    }
	
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
