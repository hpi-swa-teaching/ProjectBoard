accessing
messages

	messages ifNil: [self messages: OrderedCollection new].
	^ messages.