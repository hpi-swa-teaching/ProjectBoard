initialization
initialize

	super initialize.
		
	self
		extent: self class defaultCardExtent;
		buildTitle;
		buildAssignee;
		buildIndicatorDetection.