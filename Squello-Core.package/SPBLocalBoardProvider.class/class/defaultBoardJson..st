instance creation
defaultBoardJson: aString

	^ ('{"columns":[
			{"name":"ToDo","id":1,"cards":[]},
			{"name":"InProgress","id":2,"cards":[]},
			{"name":"Done","id":3,"cards":[]}],
		"title":"', aString, '"}' ) parseAsJson.