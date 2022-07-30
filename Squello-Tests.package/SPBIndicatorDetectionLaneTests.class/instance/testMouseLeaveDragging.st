as yet unclassified
testMouseLeaveDragging

	| lane |
	lane := SPBLane new.
		
	indicatorDetection column: lane.
	indicatorDetection mouseLeaveDragging: MouseEvent new.
	self assert: false equals: lane indicator visible. 