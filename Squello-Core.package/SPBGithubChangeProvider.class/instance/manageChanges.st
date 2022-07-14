as yet unclassified
manageChanges
	
	| changes |
	self semaphore isSignaled
		ifTrue: [self semaphore wait].
	
	[changes := self api getWebhookChanges: self webhookId.
	self semaphore signal] fork.
	self semaphore wait.
	
	changes 
		do: [:each | self parseChange: (each parseAsJson)].
	self semaphore signal.