initialization
applyUserInterfaceTheme

	super applyUserInterfaceTheme.
	self color: ((self userInterfaceTheme get: #uniformWindowColor for: Model) 
		ifNil: [Color black]).