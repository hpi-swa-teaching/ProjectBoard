instance creation
buildFromRemote: aJsonObject into: anSPBColumn
	"called to build existing cards from github"
	
	| instance |
	instance := self newFrom: aJsonObject with: anSPBColumn.
	instance setCardColumn: anSPBColumn.
	^ instance.