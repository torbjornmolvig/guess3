//
//  UIColor+Top3Colors.m
//  iTuneAlbumGuess
//
//  Created by Admin on 2013-03-06.
//  Copyright (c) 2013 Admin. All rights reserved.
//

#import "UIColor+Top3Colors.h"

@implementation UIColor (Top3Colors)

+(UIColor *) top3Blue
{
    
     return [UIColor colorWithRed:118/255.0 green:176/255.0 blue:197/255.0 alpha:1];
}


+(UIColor *) top3DarkBlue
{
    return  [UIColor colorWithRed:2/255.0 green:38/255.0 blue:52/255.0 alpha:1];
}


+(UIColor *) top3Background
{
    return [UIColor colorWithPatternImage:[UIImage imageNamed:@"background.png"]];
}

+(UIColor *) top3BackgroundDark
{
    return [UIColor colorWithPatternImage:[UIImage imageNamed:@"background_dark.png"]];
}


@end
