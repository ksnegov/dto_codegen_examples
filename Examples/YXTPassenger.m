@interface YXTPassenger : NSObject

@property (nonatomic, copy) NSNumber *userID;
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;

@end

RKObjectMapping *mapping = [RKObjectMapping mappingForClass:[YXTPassenger class]];
[mapping addAttributeMappingsFromDictionary:@{
    @"user_id": @"userID",
    @"first_name": @"firstName",
    @"last_name": @"lastName"
}];
