initialization
applyUserInterfaceTheme

	| textColor font |
	super applyUserInterfaceTheme.
	self color: ((self userInterfaceTheme get: #color for: PluggableButtonMorph) ifNil: [Color red]);
		borderWidth: self borderWidthMultiplier * ((self userInterfaceTheme get: #borderWidth for: PluggableButtonMorph) ifNil: [1]);
		borderColor: ((self userInterfaceTheme get: #borderColor for: PluggableButtonMorph) ifNil: [Color red]).
	textColor := (self userInterfaceTheme get: #textColor for: PluggableButtonMorph) ifNil: [Color white].
	self isHighlighted ifTrue: [
		self color: ((self color luminance <= 0.5) ifTrue: [self color alphaMixed: 0.75 with: Color white] ifFalse: [self color alphaMixed: 0.75 with: Color black]).
		self borderColor: ((self borderColor luminance <= 0.5) ifTrue: [self borderColor alphaMixed: 0.75 with: Color white] ifFalse: [self borderColor alphaMixed: 0.75 with: Color black]).
		textColor := self color makeForegroundColor.
		].
	font := (self userInterfaceTheme get: #font for: PluggableButtonMorph).
	self assigneeModel textColor: textColor; font: font.
	self statusModel textColor: textColor; font: font.
	self titleModel textColor: textColor.