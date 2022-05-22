creation
titlePanelSpec
	
	^ PluggablePanelSpec new
		model: self;
		layout: #vertical;
		horizontalResizing: #spaceFill;
		children: {
			PluggableTextSpec new
				model: self;
				"vScrollBarPolicy: #never;"
				getText: #title;
				setText: #updateTitle:;
				yourself.
			PluggableActionButtonSpec new
				model: self;
				label: '+ Add card';
				action: #addCard;
				yourself.
			}