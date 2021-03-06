# NHFDateUtils
<h2>介绍</h2>
<p>有关所以日期时间的操作以及各种转换功能</p>
<h2>安装</h2>
<ul>
<li>pod 'NHFDateUtils'</li>
<li>手动下载然后将文件夹拖至工程中即可</li>
</ul>
<h2>使用方法</h2>

+ (NSDate *)dateWithYear:(NSInteger)year
                   month:(NSInteger)month
                     day:(NSInteger)day
                    hour:(NSInteger)hour
                  minute:(NSInteger)minute
                  second:(NSInteger)second;

+ (NSInteger)daysOffsetBetweenStartDate:(NSDate *)startDate endDate:(NSDate *)endDate;

+ (NSDate *)dateWithHour:(int)hour
                  minute:(int)minute;

#pragma mark - Getter
- (NSInteger)year;
- (NSInteger)month;
- (NSInteger)day;
- (NSInteger)hour;
- (NSInteger)minute;
- (NSInteger)second;
- (NSString *)weekday;


#pragma mark - Time string
- (NSString *)timeHourMinute;
- (NSString *)timeHourMinuteWithPrefix;
- (NSString *)timeHourMinuteWithSuffix;
- (NSString *)timeHourMinuteWithPrefix:(BOOL)enablePrefix suffix:(BOOL)enableSuffix;

#pragma mark - Date String
- (NSString *)stringTime;
- (NSString *)stringMonthDay;
- (NSString *)stringYearMonthDay;
- (NSString *)stringYearMonthDayHourMinuteSecond;
+ (NSString *)stringYearMonthDayWithDate:(NSDate *)date;      //date为空时返回的是当前年月日
+ (NSString *)stringLoacalDate;

#pragma mark - Date formate
+ (NSString *)dateFormatString;
+ (NSString *)dateFormatStringPoint;
+ (NSString *)timeFormatString;
+ (NSString *)timestampFormatString;
+ (NSString *)timestampFormatStringSubSeconds;
+ (NSString *)dateFormatMMddHHmm;
+ (NSString*)dateFormatMMdd;

#pragma mark - Date adjust
- (NSDate *) dateByAddingDays: (NSInteger) dDays;
- (NSDate *) dateBySubtractingDays: (NSInteger) dDays;

#pragma mark - Relative dates from the date
+ (NSDate *) dateTomorrow;
+ (NSDate *) dateYesterday;
+ (NSDate *) dateWithDaysFromNow: (NSInteger) days;
+ (NSDate *) dateWithDaysBeforeNow: (NSInteger) days;
+ (NSDate *) dateWithHoursFromNow: (NSInteger) dHours;
+ (NSDate *) dateWithHoursBeforeNow: (NSInteger) dHours;
+ (NSDate *) dateWithMinutesFromNow: (NSInteger) dMinutes;
+ (NSDate *) dateWithMinutesBeforeNow: (NSInteger) dMinutes;
+ (NSDate *) dateStandardFormatTimeZeroWithDate: (NSDate *) aDate;  //标准格式的零点日期
- (NSInteger) daysBetweenCurrentDateAndDate;                     //负数为过去，正数为未来

#pragma mark - Date compare
- (BOOL)isEqualToDateIgnoringTime: (NSDate *) aDate;
- (NSString *)stringYearMonthDayCompareToday;                 //返回“今天”，“明天”，“昨天”，或年月日

#pragma mark - Date and string convert
+ (NSDate *)dateFromString:(NSString *)string;
+ (NSDate *)dateFromString:(NSString *)string withFormat:(NSString *)format;
- (NSString *)string;
- (NSString *)stringCutSeconds;

- (NSString *)stringWithFormat:(NSString *)format;

//me
+ (NSDate*) fromUnixString:(NSString*)unixtime;
+ (long long)currentTimeNumber;
+ (NSString*)currentTimeString;
+ (NSString*)currentHMTimeString;
+ (NSDate*)currentData;
+ (NSString *)dateStringFromDate:(NSDate*)date dateFormat:(NSString*)dateFormat;
+ (long long)currentTimeNumberByDate:(NSDate*)date;
- (NSString*)stringHour;
+ (NSString*)stringMonthDayHourMiniteWithDate:(NSDate *)date;
- (NSString *)stringYearMonthDayHourMinute;
- (NSString *)stringYearMonthDayHourMinuteOrMonthDayHourMinute;
- (NSString*)yearString;
- (NSString*)monthString;
- (NSString*)dayString;
+ (NSDate*) fromUnixLong:(long long)unixtime;
+ (NSString *)dateFormatHHmm;
- (NSString *)stringYearMonthDayCompareTodayWithDateFormats:(NSString*)dateFormat;
