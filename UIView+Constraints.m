//
//  UIView+Constraints.m
//  BENAutoLayout
//
//  Created by Ben Packard on 4/13/14.
//
//

#import "UIView+Constraints.h"

@implementation UIView (Constraints)

- (void)addVisualConstraint:(NSString *)constraintString forViews:(NSDictionary *)views
{
	[self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:constraintString
																 options:0
																 metrics:0
																   views:views]];
}

- (void)addVisualConstraints:(NSArray *)constraintsArray forViews:(NSDictionary *)views
{
	for (NSString *constraint in constraintsArray)
	{
		[self addVisualConstraint:constraint forViews:views];
	}
}

- (void)addConstraintToVerticallyCenterView:(UIView *)view
{
	[self addConstraint: [NSLayoutConstraint constraintWithItem:view
													  attribute:NSLayoutAttributeCenterY
													  relatedBy:NSLayoutRelationEqual
														 toItem:self
													  attribute:NSLayoutAttributeCenterY
													 multiplier:1.0
													   constant:0.0]];
}

- (void)addConstraintToVerticallyCenterViews:(NSArray *)views
{
	for (UIView *view in views)
	{
		[self addConstraintToVerticallyCenterView:view];
	}
}

- (void)addConstraintToHorizontallyCenterView:(UIView *)view
{
	[self addConstraint: [NSLayoutConstraint constraintWithItem:view
													  attribute:NSLayoutAttributeCenterX
													  relatedBy:NSLayoutRelationEqual
														 toItem:self
													  attribute:NSLayoutAttributeCenterX
													 multiplier:1.0
													   constant:0.0]];
}

- (void)addConstraintToHorizontallyCenterViews:(NSArray *)views
{
	for (UIView *view in views)
	{
		[self addConstraintToHorizontallyCenterView:view];
	}
}

- (void)addConstraintToMatchHeightToWidthForView:(UIView *)view
{
	[self addConstraint: [NSLayoutConstraint constraintWithItem:view
													  attribute:NSLayoutAttributeHeight
													  relatedBy:NSLayoutRelationEqual
														 toItem:view
													  attribute:NSLayoutAttributeWidth
													 multiplier:1.0f
													   constant:0.0f]];
}

- (void)addConstraintToMatchWidthOfView:(UIView *)firstView toWidthOfView:(UIView *)secondView
{
	[self addConstraint:[NSLayoutConstraint constraintWithItem:firstView
													 attribute:NSLayoutAttributeWidth
													 relatedBy:NSLayoutRelationEqual
														toItem:secondView
													 attribute:NSLayoutAttributeWidth
													multiplier:1
													  constant:0]];
}

- (void)addConstraintToMatchHeightOfView:(UIView *)firstView toHeightOfView:(UIView *)secondView
{
	[self addConstraint:[NSLayoutConstraint constraintWithItem:firstView
													 attribute:NSLayoutAttributeHeight
													 relatedBy:NSLayoutRelationEqual
														toItem:secondView
													 attribute:NSLayoutAttributeHeight
													multiplier:1
													  constant:0]];
}

- (void)addConstraintToAlignBaselineOfView:(UIView *)firstView withView:(UIView *)secondView
{
	[self addConstraint: [NSLayoutConstraint constraintWithItem:firstView
													  attribute:NSLayoutAttributeBaseline
													  relatedBy:NSLayoutRelationEqual
														 toItem:secondView
													  attribute:NSLayoutAttributeBaseline
													 multiplier:1.0
													   constant:0.0]];
}

- (void)addConstraintToAlignLeftEdgeOfView:(UIView *)firstView withView:(UIView *)secondView
{
	[self addConstraint: [NSLayoutConstraint constraintWithItem:firstView
													  attribute:NSLayoutAttributeLeft
													  relatedBy:NSLayoutRelationEqual
														 toItem:secondView
													  attribute:NSLayoutAttributeLeft
													 multiplier:1.0
													   constant:0.0]];
}

- (void)addConstraintToAlignRightEdgeOfView:(UIView *)firstView withView:(UIView *)secondView
{
	[self addConstraint: [NSLayoutConstraint constraintWithItem:firstView
													  attribute:NSLayoutAttributeRight
													  relatedBy:NSLayoutRelationEqual
														 toItem:secondView
													  attribute:NSLayoutAttributeRight
													 multiplier:1.0
													   constant:0.0]];
}

- (void)addConstraintToAlignTopEdgeOfView:(UIView *)firstView withView:(UIView *)secondView
{
	[self addConstraint: [NSLayoutConstraint constraintWithItem:firstView
													  attribute:NSLayoutAttributeTop
													  relatedBy:NSLayoutRelationEqual
														 toItem:secondView
													  attribute:NSLayoutAttributeTop
													 multiplier:1.0
													   constant:0.0]];
}

- (void)addConstraintToAlignVerticalCenterOfView:(UIView *)firstView withView:(UIView *)secondView
{
	[self addConstraint: [NSLayoutConstraint constraintWithItem:firstView
													  attribute:NSLayoutAttributeCenterY
													  relatedBy:NSLayoutRelationEqual
														 toItem:secondView
													  attribute:NSLayoutAttributeCenterY
													 multiplier:1.0
													   constant:0.0]];
}

- (void)addConstraintToAlignHorizontalCenterOfView:(UIView *)firstView withView:(UIView *)secondView
{
	[self addConstraint: [NSLayoutConstraint constraintWithItem:firstView
													  attribute:NSLayoutAttributeCenterX
													  relatedBy:NSLayoutRelationEqual
														 toItem:secondView
													  attribute:NSLayoutAttributeCenterX
													 multiplier:1.0
													   constant:0.0]];
}

- (void)addConstraintToHorizontallyFillWithView:(UIView *)view usingMargin:(NSInteger)margin
{
	NSString *string = [NSString stringWithFormat:@"|-%ld-[view]-%ld-|", (long)margin, (long)margin];
	[self addVisualConstraint:string forViews:@{@"view":view}];
}

- (void)addConstraintToHorizontallyFillWithViews:(NSArray *)views usingMargin:(NSInteger)margin
{
	for (UIView *view in views)
	{
		[self addConstraintToHorizontallyFillWithView:view usingMargin:margin];
    }
}

- (void)addConstraintToVerticallyFillWithView:(UIView *)view usingMargin:(NSInteger)margin
{
	NSString *string = [NSString stringWithFormat:@"V:|-%ld-[view]-%ld-|", (long)margin, (long)margin];
	[self addVisualConstraint:string forViews:@{@"view":view}];
}

- (void)addConstraintsToFillWithView:(UIView *)view usingMargin:(NSInteger)margin
{
	[self addConstraintToVerticallyFillWithView:view usingMargin:margin];
	[self addConstraintToHorizontallyFillWithView:view usingMargin:margin];
}

- (void)addConstraintToHorizontallyCenterRightEdgeToCenterOfParentForView:(UIView *)view withBuffer:(NSInteger)buffer;
{
	[self addConstraint:[NSLayoutConstraint constraintWithItem:view
													 attribute:NSLayoutAttributeRight
													 relatedBy:NSLayoutRelationEqual
														toItem:self
													 attribute:NSLayoutAttributeCenterX
													multiplier:1
													  constant:-buffer]];
}

- (void)addConstraintToHorizontallyCenterLeftEdgeToCenterOfParentForView:(UIView *)view withBuffer:(NSInteger)buffer
{
	[self addConstraint:[NSLayoutConstraint constraintWithItem:view
													 attribute:NSLayoutAttributeLeft
													 relatedBy:NSLayoutRelationEqual
														toItem:self
													 attribute:NSLayoutAttributeCenterX
													multiplier:1
													  constant:buffer]];
}

- (void)addConstraintsToEvenlyHorizontallyDistributeViews:(NSArray *)views
{
	if (views.count == 0) return;
	
	CGFloat multiplierIncrease = 1.0 / views.count * 2.0;
	CGFloat multiplier = multiplierIncrease / 2.0;
	
	for (UIView *view in views)
	{
        [self addConstraint:[NSLayoutConstraint constraintWithItem:view
														 attribute:NSLayoutAttributeCenterX
														 relatedBy:NSLayoutRelationEqual
															toItem:self
														 attribute:NSLayoutAttributeCenterX
														multiplier:multiplier
														  constant:0]];
		multiplier += multiplierIncrease;
    }
}

@end