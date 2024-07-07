testing
testCardLoad

	| json card |
	json := '{"closed":true,"assignees":[{"id":2,"login":"your cat"}],"title":"the title","id":11,"body":"the body","isNote":true,"labels":[{"id":2,"color":"0000FF","name":"Feature"}]}'  parseAsJson.
	card := SPBCard new buildLocalCard: json.
	self assert: card isClosed.
	self assert: card title equals: 'the title'.
	self assert: card description equals: 'the body'.
	self assert: card id equals: 11.
	self assert: card isNote.
	self assert: card assignees isCollection.
	self assert: card labels isCollection.
	self assert: card assignees first username equals: 'your cat'.
	self assert: card assignees first id equals: 2.
	self assert: card labels first title equals: 'Feature'.
	self assert: card labels first id equals: 2.
	self assert: card labels first color equals: Color blue.