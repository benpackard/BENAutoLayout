//
//  UIView+Constraints.h
//  BENAutoLayout
//
//  Created by Ben Packard on 4/13/14.
//
//

#import <UIKit/UIKit.h>

@interface UIView (Constraints)

- (void)addVisualConstraint:(NSString *)constraintString forViews:(NSDictionary *)views;
- (void)addVisualConstraints:(NSArray *)constraintsArray forViews:(NSDictionary *)views;
- (void)addConstraintToVerticallyCenterView:(UIView *)view;
- (void)addConstraintToVerticallyCenterViews:(NSArray *)views;
- (void)addConstraintToHorizontallyCenterView:(UIView *)view;
- (void)addConstraintToHorizontallyCenterViews:(NSArray *)views;
- (void)addConstraintToMatchHeightToWidthForView:(UIView *)view;
- (void)addConstraintToMatchWidthOfView:(UIView *)firstView toWidthOfView:(UIView *)secondView;
- (void)addConstraintToMatchHeightOfView:(UIView *)firstView toHeightOfView:(UIView *)secondView;
- (void)addConstraintToAlignCenterOfView:(UIView *)firstView withView:(UIView *)secondView;
- (void)addConstraintToAlignBaselineOfView:(UIView *)firstView withView:(UIView *)secondView;
- (void)addConstraintToAlignBottomOfView:(UIView *)firstView withView:(UIView *)secondView;
- (void)addConstraintToAlignLeftEdgeOfView:(UIView *)firstView withView:(UIView *)secondView;
- (void)addConstraintToAlignRightEdgeOfView:(UIView *)firstView withView:(UIView *)secondView;
- (void)addConstraintToAlignTopEdgeOfView:(UIView *)firstView withView:(UIView *)secondView;
- (void)addConstraintToAlignVerticalCenterOfView:(UIView *)firstView withView:(UIView *)secondView;
- (void)addConstraintToAlignHorizontalCenterOfView:(UIView *)firstView withView:(UIView *)secondView;
- (void)addConstraintToHorizontallyFillWithView:(UIView *)view usingMargin:(NSInteger)margin;
- (void)addConstraintToHorizontallyFillWithViews:(NSArray *)views usingMargin:(NSInteger)margin;
- (void)addConstraintToVerticallyFillWithView:(UIView *)view usingMargin:(NSInteger)margin;
- (void)addConstraintsToFillWithView:(UIView *)view usingMargin:(NSInteger)margin;
- (void)addConstraintToHorizontallyCenterRightEdgeToCenterOfParentForView:(UIView *)view withBuffer:(NSInteger)buffer;
- (void)addConstraintToHorizontallyCenterLeftEdgeToCenterOfParentForView:(UIView *)view withBuffer:(NSInteger)buffer;
- (void)addConstraintsToEvenlyHorizontallyDistributeViews:(NSArray *)views;

@end
