update sidebar
activeCardLabelList

	self activeCard ifNil: [^ {}].
	self activeCard labels ifNil: [^ {#('---used labels---')}].
	^ #('---used labels---'), self activeCard labels.