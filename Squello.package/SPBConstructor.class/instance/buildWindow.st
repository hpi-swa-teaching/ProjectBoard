accessing
buildWindow

	self window: (self builder buildPluggableWindow: self class windowSpec).
	self scrollPane: (self builder buildPluggableScrollPane: self class scrollPaneSpec).
	self builder add: self scrollPane to: self window.