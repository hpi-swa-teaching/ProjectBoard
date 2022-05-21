window construction
sidebarPanelSpec

	| spec |
	spec := PluggablePanelSpec new.
	spec 
		frame: (0.7@0 corner: 1@1).
		
	^ spec.
