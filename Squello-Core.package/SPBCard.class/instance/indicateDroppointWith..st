event handling
indicateDroppointWith: aSymbol
	
	| indicatorPosition |
	aSymbol = #upper ifTrue:
		[indicatorPosition := self position x @ (self position y - 5)].
	aSymbol = #lower ifTrue:
		[indicatorPosition := self position x @ (self position y + self extent y + 5)].
	
	self lane addIndicatorAt: indicatorPosition.