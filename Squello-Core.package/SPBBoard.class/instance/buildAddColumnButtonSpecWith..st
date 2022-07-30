toolbuilder
buildAddColumnButtonSpecWith: aBuilder 

    ^ aBuilder pluggableActionButtonSpec new
			frame: (0@0 corner: 1@0.1);
			model: self;
			action: #addColumn;
			label: '+ Add column';
	       help: 'add a new column to the board';
	       yourself.