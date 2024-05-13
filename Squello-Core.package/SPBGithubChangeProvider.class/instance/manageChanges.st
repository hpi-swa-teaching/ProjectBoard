general changes
manageChanges
	
	"| changes |
	self semaphore isSignaled
		ifTrue: [self semaphore wait].
	
	[changes := self api getWebhookChanges: self webhookId.
	self semaphore signal] fork.
	self semaphore wait.
	
	changes 
		do: [:change | self parseChange: (change parseAsJson)].
	self semaphore signal."