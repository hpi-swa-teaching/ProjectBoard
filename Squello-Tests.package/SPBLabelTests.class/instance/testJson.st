tests
testJson

	| json |
	label color: Color red;
		title: 'Hello World';
		id: 42.
	json:= label asJson.
	self assert: (json at: 'name') equals: 'Hello World'.
	self assert: (json at: 'id') equals: 42.
	self assert: (json at: 'color') equals: 'FF0000'.
	self assert: json size equals: 3.