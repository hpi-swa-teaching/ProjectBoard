toolbuilder-colum
buildAddColumnButtonSpecWith: aBuilder 

    ^ aBuilder pluggableActionButtonSpec new
		model: self;
		frame: (0@0 corner: 1@0.1);
		action: #addColumn;
		label: '+ Add column';
	 	help: 'add a new column to the board';
	  	yourself.