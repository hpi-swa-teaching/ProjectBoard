creation
buildTitlePanel
	
	| builder panel |
	builder := MorphicToolBuilder new.
	panel := builder buildPluggablePanel: self titlePanelSpec.
	builder add: panel to: self.
	panel extent: self width @ 60.