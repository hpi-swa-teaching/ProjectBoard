JSON-writing
jsonWriteOn: aStream

	| data |
	data := Dictionary newFrom: { 'name' -> self title . 'color' -> self color printHtmlString }. 
	data jsonWriteOn: aStream.