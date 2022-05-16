JSON-writing
jsonWriteOn: aStream

	| data |
	data := Dictionary newFrom: { 'name' -> self title . 'description' -> self description . 'color' -> self color printHtmlString }. 
	data jsonWriteOn: aStream.