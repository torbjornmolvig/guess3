//
//  ViewController.m
//  iTuneAlbumGuess
//
//  Created by Admin on 2013-02-28.
//  Copyright (c) 2013 Admin. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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
	// Do any additional setup after loading the view.
    
    //Sätter bakgrundsbilden
    self.view.backgroundColor = [UIColor top3Background];
    
    //Sätter rubrikens font
    [self.guessTheListLabel setFont:[UIFont fontWithName:@"coolvetica" size:40]];
    [self.threeInTopLabel setFont:[UIFont fontWithName:@"coolvetica" size:40]];
    
    NSDateFormatter *formatter = [[NSDateFormatter alloc] init];

    [formatter setDateStyle:NSDateFormatterLongStyle];
    
    
    //get the date today
    NSString *dateToday = [formatter stringFromDate:[NSDate date]];
    
    [[self dateLabel] setText:dateToday];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([[segue identifier] isEqualToString:@"toSwedishList"])
    {
        DetailViewController *vc = (DetailViewController *) [segue destinationViewController];
        NSString *selectedCountryHttpString = @"http://itunes.apple.com/se/rss/topalbums/limit=10/json";
        vc.countryItem = selectedCountryHttpString;
        [vc setTitle:@"Svenska listan"];
    }
    
    if ([[segue identifier] isEqualToString:@"toUsaList"])
    {
        DetailViewController *vc = (DetailViewController *) [segue destinationViewController];
        NSString *selectedCountryHttpString = @"http://itunes.apple.com/us/rss/topalbums/limit=10/json";
        vc.countryItem = selectedCountryHttpString;
        [vc setTitle:@"Amerikanska listan"];

    }
    
    if ([[segue identifier] isEqualToString:@"toEnglishList"])
    {
        DetailViewController *vc = (DetailViewController *) [segue destinationViewController];
        NSString *selectedCountryHttpString = @"http://itunes.apple.com/gb/rss/topalbums/limit=10/json";
        vc.countryItem = selectedCountryHttpString;
        [vc setTitle:@"Engelska listan"];

    }
}


@end
