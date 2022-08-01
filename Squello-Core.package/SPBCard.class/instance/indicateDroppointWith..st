event handling
indicateDroppointWith: aSymbol
	
	"aSymbol \in {#upper, #lower}"
	| indicatorPosition |
	aSymbol = #upper 
		ifTrue: [indicatorPosition := self position x @ (self position y - self class indicatorCardEdgeOffset)].
	aSymbol = #lower 
		ifTrue: [indicatorPosition := self position x @ (self position y + self extent y + self class indicatorCardEdgeOffset)].
	
	self column addIndicatorAt: indicatorPosition.