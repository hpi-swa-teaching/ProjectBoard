instance creation
buildFromLocal: aJsonObject into: anSPBColumn
	"called to build saved local cards"
	
	| instance |
	instance := self newFromLocal: aJsonObject with: anSPBColumn.
	instance setCardColumn: anSPBColumn.
	^ instance.