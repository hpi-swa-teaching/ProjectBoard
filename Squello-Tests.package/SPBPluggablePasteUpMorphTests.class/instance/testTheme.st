running
testTheme

	self assert: pluggablePasteUpMorph color equals: (SqueakTheme current properties at: Model->#uniformWindowColor).