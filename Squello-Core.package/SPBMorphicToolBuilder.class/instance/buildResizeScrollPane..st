as yet unclassified
buildResizeScrollPane: spec

	| widget panel |
	widget := self resizeScrollPaneClass new.
	widget model: spec model.
	self register: widget id: spec name.
	
	spec children
		ifNotNil: [:obj | panel := self pluggablePanelSpec new
				model: spec model;
				children: obj;
				layout: spec layout;
				horizontalResizing: (spec layout == #proportional ifTrue: [#rigid] ifFalse: [#shrinkWrap]);
				verticalResizing: (spec layout == #proportional ifTrue: [#rigid] ifFalse: [#shrinkWrap]);
				buildWith: self.
				widget morph: panel]
		ifNil: [spec morph
			ifNotNil: [:m | widget morph: m]
			ifNil: [widget morphClass: spec morphClass]].
	
	self setFrame: spec frame in: widget.
	self setLayoutHintsFor: widget spec: spec.
	
	parent
		ifNotNil: [self add: widget to: parent].
	
	spec borderWidth
		ifNotNil: [:w | widget borderWidth: w].
	
	"Set scroll bar policies. By default, use scroll bars only when needed. Do not follow system-wide preferences here."
	widget scrollBarThickness: spec scrollBarThickness.
	spec hScrollBarPolicy
		caseOf: {
			[#always] -> [widget alwaysShowHScrollBar].
			[#never] -> [widget hideHScrollBarIndefinitely].
			[#whenNeeded] -> [widget showHScrollBarOnlyWhenNeeded] }
		otherwise: [widget showHScrollBarOnlyWhenNeeded].
	spec vScrollBarPolicy
		caseOf: {
			[#always] -> [widget alwaysShowVScrollBar].
			[#never] -> [widget hideVScrollBarIndefinitely].
			[#whenNeeded] -> [widget showVScrollBarOnlyWhenNeeded] }
		otherwise: [widget showVScrollBarOnlyWhenNeeded].
	
	^ widget