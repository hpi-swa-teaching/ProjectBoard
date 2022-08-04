event handling
indicateDroppointWith: aSymbol
	
	"aSymbol \in {#upper, #lower}"
	| indicatorPosition |
	aSymbol = #upper 
		ifTrue: [indicatorPosition := self defaultUpperIndicatorPosition].
	aSymbol = #lower 
		ifTrue: [indicatorPosition := self defaultLowerIndicatorPosition].
	self column addIndicatorAt: indicatorPosition.