window construction
scrollPaneSpec

	| spec |
	spec := PluggableScrollPaneSpec new.
	spec 
		frame: (0@0 corner: 0.7@1).
		
	^ spec.
