initialization
initialize

	super initialize.
	self cornerStyle: #rounded;
		cornerRadius: self defaultCornerRadius;
		margins: self padding;
		applyUserInterfaceTheme.