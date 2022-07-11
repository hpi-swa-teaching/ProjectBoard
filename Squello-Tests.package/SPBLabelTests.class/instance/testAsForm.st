tests
testAsForm

	| form |
	label color: Color green.
	form := label asForm.
	self assert: 12 @ 12 equals: form extent.
	self assert: 32 equals: form depth.
	self assert: 0 @ 0 equals: form offset.