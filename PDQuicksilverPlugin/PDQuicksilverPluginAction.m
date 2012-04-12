//
//  PDQuicksilverPluginAction.m
//  PDQuicksilverPlugin
//
//  Created by Justin Mecham on 4/11/12.
//

#import "PDQuicksilverPluginAction.h"

@implementation QSPDQuicksilverPluginActionProvider

- (QSObject *)performActionOnObject:(QSObject *)dObject
{
  
  NSString *theNumber = [dObject objectForType:QSContactPhoneType];
  
  NSString *urlString = [NSString stringWithFormat:@"pushdialer://%@", theNumber];
  NSURL *url = [NSURL URLWithString:[urlString stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];

  [[NSWorkspace sharedWorkspace] openURLs:[NSArray arrayWithObject:url]
                  withAppBundleIdentifier:nil
                                  options:NSWorkspaceLaunchWithoutActivation
           additionalEventParamDescriptor:nil
                        launchIdentifiers:nil];

  return nil;
}

@end
