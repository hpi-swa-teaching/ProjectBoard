testing
testColumnToJson

	| json |
	json := self defaultColumn asJson.
	self assert: 'here is a column title' equals: (json at: 'name').
	self assert: 8008531 equals: (json at: 'id').
	self assert: (json at: 'cards') isCollection.
	self assert: ((json at: 'cards') first at: 'id') equals: 42.
	self assert: ((json at: 'cards') second at: 'id') equals: 69.