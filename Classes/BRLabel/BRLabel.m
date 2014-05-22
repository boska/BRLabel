//
//  BRLabel.m
//  BRLabelDemo
//
//  Created by Boska Lee on 5/22/14.
//
//
#define REPEAT_LIMIT 50 // 50x0.1 = 5 sec.
#import "BRLabel.h"
@interface BRLabel (){
  int _repeatCount;
  NSString *_textStorage;
}
@property (nonatomic, strong) NSTimer *timer;
@end
@implementation BRLabel

- (id)initWithFrame:(CGRect)frame {
  self = [super initWithFrame:frame];
  if (self) {
    // Initialization code
  }
  return self;
}

- (void)setTextWithShuffle:(NSString *)text {
  [self shffleLabel];
  _textStorage = text;
}

- (void)shffleLabel {
  _repeatCount = 0;
  if (self.timer == nil) {
    self.timer = [NSTimer scheduledTimerWithTimeInterval:0.1
                                                  target:self
                                                selector:@selector(animateString)
                                                userInfo:nil
                                                 repeats:YES];
  } else if (self.timer.isValid) {
    [self.timer invalidate];
    self.timer = nil;
  }
}

- (void)animateString {
  _repeatCount++;
  if ( _repeatCount > REPEAT_LIMIT){
    [self.timer invalidate];
    self.timer = nil;
    [self setText:_textStorage];
    return;
  }
  CATransition *animation = [CATransition animation];
  animation.duration = 0.1;
  animation.type = kCATransitionFade;
  //animation.subtype = kCATransitionFromTop;
  animation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
  [self.layer addAnimation:animation forKey:@"changeTextTransition"];
  // Change the text
    //self.text = [NSString stringWithFormat:@"%02ld", [self randomIntergerWithLength:99]];
  self.text = [NSString stringWithFormat:@"%@", [self randomStringWithLength:_textStorage.length]];

}

-(NSString *)randomStringWithLength:(NSInteger)length{
  NSString *alphabet  = @"0123456789";
  NSMutableString *s = [NSMutableString stringWithCapacity:length];
  for (NSUInteger i = 0U; i < length; i++) {
    u_int32_t r = arc4random() % [alphabet length];
    unichar c = [alphabet characterAtIndex:r];
    [s appendFormat:@"%C", c];
  }
  return s;
}
-(NSInteger)randomIntergerWithLength:(NSInteger)length{
  return arc4random() % length;

}
/*
 * // Only override drawRect: if you perform custom drawing.
 * // An empty implementation adversely affects performance during animation.
 * - (void)drawRect:(CGRect)rect
 * {
 *  // Drawing code
 * }
 */

@end
