accessing
buildWindow

	self window: (self builder buildPluggableWindow: SPBConstructor windowSpec).
	self scrollPane: (self builder buildPluggableScrollPane: SPBConstructor scrollPaneSpec).
	self builder add: self scrollPane to: self window.