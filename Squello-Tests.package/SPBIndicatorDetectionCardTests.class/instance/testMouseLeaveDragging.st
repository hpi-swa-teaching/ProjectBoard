as yet unclassified
testMouseLeaveDragging

	| lane card |
	lane := SPBLane new.
	card := SPBCard new 
		lane: lane.
	indicatorDetection card: card.
	indicatorDetection mouseLeaveDragging: MouseEvent new.
	self assert: false equals: lane indicator visible. 