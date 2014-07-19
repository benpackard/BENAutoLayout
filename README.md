BENAutoLayout
=============

A category containing convenient methods for adding autolayout constraints to a view.

The constraints should be applied to the containing view, as per a standard NSLayoutConstraint. For example, the standard way to center a view in the Y axis would be:

	[parentView addConstraint: [NSLayoutConstraint constraintWithItem:childView
													  attribute:NSLayoutAttributeCenterY
													  relatedBy:NSLayoutRelationEqual
														 toItem:parentView
													  attribute:NSLayoutAttributeCenterY
													 multiplier:1.0
													   constant:0.0]];
													   
With MIBAutoLayout this becomes:

	[parentView addConstraintToVerticallyCenterView:childView];

Some simple autolayout tasks are covered, including:
* centering views, including multiple views in one operation
* matching heights and widths of different views
* aligning the edges of two views (top/right/bottom/left)
* making a view square (useful for maintaining aspect ratio on icons etc)
