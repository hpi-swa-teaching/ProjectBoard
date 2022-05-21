window construction
buildWindow

	self window: (self builder buildPluggableWindow: self windowSpec).
	self scrollPane: (self builder buildPluggableScrollPane: self scrollPaneSpec).
	
	self builder add: self scrollPane to: self window.