accessing
setText:  aText
	"beware, wrong/bad implementation"
	self dependents do: [:d | d class = SPBLane ifTrue: [d update]].
	super setText: aText.