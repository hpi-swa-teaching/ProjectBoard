tests-labels
testListPossibleLabels

	|labels|
	labels := provider listPossibleLabels.
	self assert: labels isCollection.
	self assert: labels first isLabel.
	self assert: labels first title equals: 'yummy'.
	self assert: labels first color equals: Color green.
	self assert: labels first id equals: '1234'.
	self assert: labels second title equals: 'goo'.
	self assert: labels second color equals: Color red.
	self assert: labels second id equals: '4321'.