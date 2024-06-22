initialization
applyUserInterfaceTheme

	super applyUserInterfaceTheme.
	self font: (self userInterfaceTheme get: #font for: PluggableButtonMorph).