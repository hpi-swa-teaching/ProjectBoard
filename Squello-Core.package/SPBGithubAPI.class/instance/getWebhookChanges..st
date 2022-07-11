api calls get request
getWebhookChanges: aString

	| response |
	response := (self getRequestToURL: ('https://squello-webhook.fly.dev/', aString)) asOrderedCollection.
	^ response.