testing
testLabelLoad

	| json label|
	json := '{"title": "TODO", "id": 42, "color": "FF0000"}' parseAsJson.
	label := SPBLabel newFrom: json.
	self assert: label title equals: 'TODO'.
	self assert: label id equals: 42.
	self assert: label color equals: Color red.