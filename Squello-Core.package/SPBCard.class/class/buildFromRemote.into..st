accessing
buildFromRemote: aJsonObject into: anSPBColumn

	| instance |
	instance := self newFrom: aJsonObject with: anSPBColumn.
	instance setCardColumn: anSPBColumn.
	^ instance.