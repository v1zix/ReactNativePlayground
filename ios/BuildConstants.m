#import <Foundation/Foundation.h>
#import "BuildConstants.h"

@implementation BuildConstants

RCT_EXPORT_MODULE();

- (NSDictionary *)constantsToExport
{
  NSString *versionCode = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleVersion"];
  NSString *versionName = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"];
  NSString *apiUrl = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"apiUrl"];
  NSString *deploymentKey = [[NSBundle mainBundle] objectForInfoDictionaryKey:@"deploymentKey"];
  return @{
           @"versionCode": versionCode,
           @"versionName": versionName,
           @"apiUrl": apiUrl,
           @"deploymentKey": deploymentKey
           };
}

+ (BOOL)requiresMainQueueSetup
{
  return YES;  // only do this if your module initialization relies on calling UIKit!
}

@end
