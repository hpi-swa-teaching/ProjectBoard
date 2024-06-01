initialization
initialize

	super initialize.
		
	self
		extent: self class defaultCardExtent;
		buildTitle;
		buildAssigneeText;
		buildStatusText;
		buildIndicatorDetection.
		
	self isClosed ifNil: [self isClosed: false].