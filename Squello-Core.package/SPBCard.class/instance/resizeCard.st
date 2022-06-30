updating
resizeCard

		self extent: (280 @ ((self titleMorph extent y + 20) max: 100)).
		self updateLabelIcons.
		self assigneeMorph position: (self position x + (self extent x - 100)) @ (self position y + (self extent y - 20)).
		self lane alignCards
	