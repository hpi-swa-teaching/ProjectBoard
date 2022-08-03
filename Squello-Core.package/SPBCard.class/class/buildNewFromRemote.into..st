instance creation
buildNewFromRemote: aJsonObject into: anSPBColumn
	"called when a card is added on github"
	
	| instance |
	instance := self newFrom: aJsonObject with: anSPBColumn.
	instance setCardColumnAtTop: anSPBColumn.
	^ instance.