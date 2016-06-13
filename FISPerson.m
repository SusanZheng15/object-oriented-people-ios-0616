//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Flatiron School on 6/13/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"

@interface FISPerson()

@property (nonatomic, readwrite) NSString *name;
@property (nonatomic, readwrite) NSUInteger ageInYears;
@property (nonatomic, readwrite) NSUInteger heightInInches;
@property (nonatomic, readwrite) NSMutableArray *skills;


@end

@implementation FISPerson

-(instancetype)init
{
    self = [self initWithName:@"Susan" ageInYears:21 heightInInches:100];
    return self;
}
-(instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)age
{
    self = [self initWithName:name ageInYears:age heightInInches:100];
    return self;
}
-(instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)age heightInInches:(NSUInteger)height
{
    self = [super init];
    if(self)
    {
        _name = name;
        _ageInYears = age;
        _heightInInches = height;
        
        _skills = [[NSMutableArray alloc]init];
        
    }
    return self;
}
-(NSString *)celebrateBirthday
{
    _ageInYears++;
    NSString *ordinal = [self ordinalForInteger:_ageInYears];
    ordinal = [NSString stringWithFormat:@"happy %luth birthday, %@!!!", _ageInYears, _name];
    ordinal = [ordinal uppercaseString];
    
    NSLog(@"%@", ordinal);
    return ordinal;
}
- (NSString *)ordinalForInteger:(NSUInteger)integer
{
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11)
    {
        ordinal = @"st";
    }
    else if (integer % 10 == 2 && integer % 100 != 12)
    {
        ordinal = @"nd";
    }
    else if (integer % 10 == 3 && integer % 100 != 13)
    {
        ordinal = @"rd";
    }
    return ordinal;
}
-(void)learnSkillBash
{
    if([_skills containsObject:@"bash"])
    {
        
    }
    else
    {
        [_skills addObject:@"bash"];
    }
}
-(void)learnSkillXcode
{
    if([_skills containsObject:@"Xcode"])
    {
        
    }
    else
    {
        [_skills addObject:@"Xcode"];
    }
}
-(void)learnSkillObjectiveC
{
    if([_skills containsObject:@"Objective-C"])
    {
        
    }
    else
    {
        [_skills addObject:@"Objective-C"];
    }
}
-(void)learnSkillObjectOrientedProgramming
{
    if([_skills containsObject:@"Object-Oriented Programming"])
    {
        
    }
    else
    {
        [_skills addObject:@"Object-Oriented Programming"];
    }
}
-(void)learnSkillInterfaceBuilder
{
    if([_skills containsObject:@"Interface Builder"])
    {
        
    }
    else
    {
        [_skills addObject:@"Interface Builder"];
    }
}
-(BOOL)isQualifiedTutor
{
    if([_skills count] >= 4)
    {
        return true;
    }
    else
    {
        return false;
    }
    return NO;
}
@end
