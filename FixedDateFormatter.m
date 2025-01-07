The solution involves explicitly setting the time zone of the `NSDateFormatter` object.  Here's how you can fix the code:

```objectivec
- (NSString *)formatDateString:(NSDate *)date {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@