update sidebar
potentialLabelsList
	
	| labels |
	labels := self potentialLabels deepCopy.
	self activeCard ifNil: [^ {}].
	labels ifNil: [^ {#('---not used labels---')}].
	^ #('---not used labels---'), labels select: [:each | (self activeCard labels anySatisfy: [:elem | elem = each]) not].