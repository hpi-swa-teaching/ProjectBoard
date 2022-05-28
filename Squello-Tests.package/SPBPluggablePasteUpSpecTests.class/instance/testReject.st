as yet unclassified
testReject

	| reject |
	reject := [:morph :event | self halt].
	self assert: nil equals: pasteUpSpec reject.
	pasteUpSpec reject: reject.
	self assert: reject equals: pasteUpSpec reject.