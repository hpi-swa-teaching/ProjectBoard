as yet unclassified
testColumn

	| column |
	column := SPBColumn new.
	indicatorDetection column: column.
	self assert: column equals: indicatorDetection column.