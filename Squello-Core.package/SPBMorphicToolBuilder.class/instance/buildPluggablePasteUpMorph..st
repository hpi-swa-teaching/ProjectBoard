as yet unclassified
buildPluggablePasteUpMorph: aSpec

	| widget |
	widget := self pasteUpClass new.
	self register: widget id: aSpec name.
	
	widget reject: aSpec reject.
	widget dropped: aSpec dropped.
	widget minimumExtent: aSpec minimumExtent.
	self parent ifNotNil: [self add: widget to: self parent].
	
	self setFrame: aSpec frame in: widget.
	widget borderWidth: 0.
	widget color: Color darkGray.
	widget actionModel: aSpec model.
	^ widget.