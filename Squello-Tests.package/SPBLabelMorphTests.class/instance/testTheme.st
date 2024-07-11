tests
testTheme

	self assert: morph borderColor equals: (SqueakTheme current properties at: PluggableButtonMorph->#color) makeForegroundColor.