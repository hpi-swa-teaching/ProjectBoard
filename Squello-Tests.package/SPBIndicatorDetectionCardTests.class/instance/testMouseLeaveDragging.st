as yet unclassified
testMouseLeaveDragging

	| column card |
	column := SPBColumn new.
	card := SPBCard new 
		column: column.
	indicatorDetection card: card.
	indicatorDetection mouseLeaveDragging: MouseEvent new.
	self assert: false equals: column indicator visible. 