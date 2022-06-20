as yet unclassified
testBuildSyncButton
	
	| spec |
	spec := board buildSyncButton: board usedBuilder.

	self assert: true equals: (spec isKindOf: PluggableActionButtonSpec).
	self assert: board equals: spec model.
	self assert: #synchronizeBoard equals: spec action.