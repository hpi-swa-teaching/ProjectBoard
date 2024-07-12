initialization
applyUserInterfaceTheme

	| textColor font |
	super applyUserInterfaceTheme.
	self color: ((self userInterfaceTheme get: #color for: PluggableButtonMorph)
			ifNil: [Color red]);
		borderWidth: self borderWidthMultiplier * ((self userInterfaceTheme get: #borderWidth for: PluggableButtonMorph)
			ifNil: [1]);
		borderColor: ((self userInterfaceTheme get: #borderColor for: PluggableButtonMorph)
			ifNil: [Color red]).
	textColor := (self userInterfaceTheme get: #textColor for: PluggableButtonMorph)
		ifNil: [Color white].
	self isHighlighted
		ifTrue: [
			"make color and borderColor darker or lighter depending on color"
			"if color is dark, make it lighter, else darker"
			"this is what color makeForegroundColor is taking care of - it returns white or black"
			self color: (self color alphaMixed: 0.75 with: self color makeForegroundColor).
			self borderColor: (self color alphaMixed: 0.75 with: self color makeForegroundColor).
			textColor := self color makeForegroundColor.].
	font := (self userInterfaceTheme get: #font for: PluggableButtonMorph).
	self assigneeModel textColor: textColor;
		font: font.
	self statusModel textColor: textColor;
		font: font.
	self titleModel textColor: textColor.