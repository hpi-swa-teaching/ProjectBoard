testing
testLabelToJson

	| json |
	json := self defaultLabel asJson.
	self assert: 1234 equals: (json at: 'id').
	self assert: 'this is a label' = (json at: 'name').
	self assert: 'FF0000' = (json at: 'color').