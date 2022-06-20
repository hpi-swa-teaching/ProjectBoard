as yet unclassified
isLane: spec

	| header title button body pasteup a b c d e f |
	header := spec children first.
	title := header children first.
	button := header children last.
	body := spec children last.
	pasteup := body children first.
	
	a := spec isKindOf: PluggablePanelSpec.
	b := header isKindOf: PluggablePanelSpec.
	c := title isKindOf: PluggableTextSpec.
	d := button isKindOf: PluggableActionButtonSpec.
	e := body isKindOf: PluggableScrollPaneSpec.
	f := pasteup isKindOf: SPBPluggablePasteUpSpec.
	{a . b . c . d . e . f} asCollection do: [:each | each ifFalse: [^ false]].
	^ true.