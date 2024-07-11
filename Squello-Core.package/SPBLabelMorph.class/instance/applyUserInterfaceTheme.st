initialization
applyUserInterfaceTheme

	super applyUserInterfaceTheme.
	self font: (self userInterfaceTheme get: #font for: PluggableButtonMorph).
	self borderWidth: (self userInterfaceTheme get: #borderWidth for: PluggableButtonMorph).
	self borderColor: (self userInterfaceTheme get: #color for: PluggableButtonMorph) makeForegroundColor.