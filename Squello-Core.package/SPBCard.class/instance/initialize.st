initialization
initialize

	super initialize.
		
	self
		extent: self class defaultCardExtent;
		buildTitle;
		buildAssigneeText;
		buildStatusText;
		buildIndicatorDetection;
		isHighlighted: false.
		
	self isClosed
		ifNil: [self isClosed: false].