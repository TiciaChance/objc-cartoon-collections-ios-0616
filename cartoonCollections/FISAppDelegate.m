//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSString*) stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    
    //take the array of dwarf names and create a string that gives each dwarf a list number (1. to 7.)
        NSMutableString *dwarfNames = [[NSMutableString alloc] init];
    
        for(NSUInteger i = 0; i < [dwarfs count]; i++) {
        
            NSInteger dwarfIndex = i + 1;
            [dwarfNames appendFormat:@"%lu. %@", dwarfIndex, dwarfs[i]];
            
            if (i < [dwarfs count]-1){
                [dwarfNames appendString:@" | "];
            }
        }
   // NSLog(@"%@", dwarfNames);
      return dwarfNames;
}

-(NSArray*) arrayOfPlaneteerShoutsFromArray: (NSArray *) powers {
    
    NSMutableArray *powersUpcase = [[NSMutableArray alloc]init];
    
    for( NSUInteger i = 0; i < [powers count]; i++) {
        
        NSString *stringOfPowersUppercase = [NSString stringWithFormat: @"%@!", [powers[i] uppercaseString]];
        [powersUpcase addObject:stringOfPowersUppercase];
        }
    return powersUpcase;
}

-(NSString*) summonCaptainPlanetWithPowers: (NSArray *) powers {
    
    NSMutableString *firstPhrase = [[NSMutableString alloc] init]; // create empty string
    [firstPhrase appendString: @"Let our powers combine:\n"]; //adds string to empty string previously created
    
    NSArray *listOfPowerShouts = [self arrayOfPlaneteerShoutsFromArray: powers]; //storing the uppercase array from previos method within this method
        for (NSUInteger i = 0; i < [listOfPowerShouts count]; i ++){
            [firstPhrase appendFormat:@"%@\n", listOfPowerShouts[i]]; // Add list of powers to first phrase
        }
    NSString *phraseGoPlanet = @"Go Planet!";
    [firstPhrase appendString:phraseGoPlanet];
    
      return firstPhrase;
}
    
-(NSString *) firstPremiumCheeseInStock: (NSArray *) cheesesInStock premiumCheeseNames: (NSArray *) premiumCheeseNames {
    
    for( NSUInteger i = 0; i < [cheesesInStock count]; i++) {
        
        NSString *cheeseMatch = cheesesInStock[i];// account for every cheese in cheeseInStock
        if ([premiumCheeseNames containsObject:cheesesInStock[i]]) { // checks if PremiumCheeseNames contains any of the objects in cheesesInStock
            return cheeseMatch;
        }
    }
    return @"No premium cheeses in stock.";

}


-(NSArray *) arrayByConvertingMoneyBagsIntoPaperBills: (NSArray *) moneyBags {
    
    NSMutableArray *bills = [[NSMutableArray alloc] init];
    
    for (NSUInteger i = 0; i < [moneyBags count]; i++) {
        NSString *scroogesMoneyBag = moneyBags[i];
        NSUInteger moneyBagLength = [scroogesMoneyBag length];
        NSString *paperBill = [NSString stringWithFormat:@"$%lu", moneyBagLength];
        
        [bills addObject:paperBill];
    }
    
    return bills;
}



@end
