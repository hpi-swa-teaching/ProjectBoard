instance creation
defaultBoardJson: aString

	^ ('{"columns":{
			"1":{"name":"ToDo","id":1,"cards":[]},
			"2":{"name":"InProgress","id":2,"cards":[]},
			"3":{"name":"Done","id":3,"cards":[]}},
		"title":"', aString, '"}' ) parseAsJson.