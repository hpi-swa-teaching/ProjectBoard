tests
testJsonWriteOn

	| contentStream jsonLabel jsonCompare |
	contentStream := WriteStream on: OrderedCollection new.
	
	label 
		color: Color green;
		id: 42;
		title: 'Hi Github!'.
		
	label jsonWriteOn: contentStream.
	jsonLabel := Json readFrom: contentStream readStream.
	
	jsonCompare := '{"color": "00FF00", "name": "Hi Github!"}' parseAsJson.
	
	self assert: jsonCompare equals: jsonLabel.