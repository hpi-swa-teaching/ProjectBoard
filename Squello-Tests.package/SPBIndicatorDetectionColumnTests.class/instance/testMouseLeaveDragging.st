as yet unclassified
testMouseLeaveDragging

	| column |
	column := SPBColumn new.
		
	indicatorDetection column: column.
	indicatorDetection mouseLeaveDragging: MouseEvent new.
	self assert: false equals: column indicator visible. 