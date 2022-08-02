building
buildResizeScrollPane: aSpec

	| widget panel |
	widget := self resizeScrollPaneClass new.
	widget model: aSpec model.
	self register: widget id: aSpec name.
	
	aSpec children
		ifNotNil: [:child | panel := self pluggablePanelSpec new
				model: aSpec model;
				children: child;
				layout: aSpec layout;
				horizontalResizing: (aSpec layout == #proportional ifTrue: [#rigid] ifFalse: [#shrinkWrap]);
				verticalResizing: (aSpec layout == #proportional ifTrue: [#rigid] ifFalse: [#shrinkWrap]);
				buildWith: self.
			widget morph: panel]
		ifNil: [aSpec morph
			ifNotNil: [:morph | widget morph: morph]
			ifNil: [widget morphClass: aSpec morphClass]].
	
	self setFrame: aSpec frame in: widget.
	self setLayoutHintsFor: widget spec: aSpec.
	
	self parent
		ifNotNil: [self add: widget to: self parent].
	
	aSpec borderWidth
		ifNotNil: [:w | widget borderWidth: w].
	
	"Set scroll bar policies. By default, use scroll bars only when needed. Do not follow system-wide preferences here."
	widget scrollBarThickness: aSpec scrollBarThickness.
	aSpec hScrollBarPolicy
		caseOf: {
			[#always] -> [widget alwaysShowHScrollBar].
			[#never] -> [widget hideHScrollBarIndefinitely].
			[#whenNeeded] -> [widget showHScrollBarOnlyWhenNeeded] }
		otherwise: [widget showHScrollBarOnlyWhenNeeded].
	aSpec vScrollBarPolicy
		caseOf: {
			[#always] -> [widget alwaysShowVScrollBar].
			[#never] -> [widget hideVScrollBarIndefinitely].
			[#whenNeeded] -> [widget showVScrollBarOnlyWhenNeeded] }
		otherwise: [widget showVScrollBarOnlyWhenNeeded].
	
	^ widget.