tests
testJsonWriteOn

	| contentStream jsonLabel jsonCompare |
	contentStream := WriteStream on: OrderedCollection new.
	
	label 
		color: Color green;
		description: 'this is a fancy label!';
		id: 42;
		title: 'Hi Github!'.
		
	label jsonWriteOn: contentStream.
	jsonLabel := Json readFrom: contentStream readStream.
	
	jsonCompare := '{"description":"this is a fancy label!", "color": "00FF00", "name": "Hi Github!"}' parseAsJson.
	
	self assert: jsonCompare equals: jsonLabel.