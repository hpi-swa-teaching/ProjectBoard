update window
updateColumns

	self 
		changed: #buildColumnAreaChildren;
		rerenderColumns;
		resizeColumnArea.