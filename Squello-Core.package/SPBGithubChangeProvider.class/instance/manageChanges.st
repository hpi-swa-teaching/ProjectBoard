as yet unclassified
manageChanges
	
	| changes |
	changes := self api getWebhookChanges: self webhookId.
	changes ifNotEmpty: [changes collect: [:each | self parseChange: (each parseAsJson)]].