tests
testTheme

	card applyUserInterfaceTheme.
	self assert: card color equals: (SqueakTheme current properties at: PluggableButtonMorph->#color).
	self assert: card borderColor equals: (SqueakTheme current properties at: PluggableButtonMorph->#borderColor).