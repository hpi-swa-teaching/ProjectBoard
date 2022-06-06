toolbuilder
buildAddLaneButtonSpecWith: aBuilder 

    ^ aBuilder pluggableActionButtonSpec new
	   frame: (0@0 corner: 1@0.1);
        model: self;
        action: #addLane;
        label: '+ Add lane';
        help: 'add a new lane to the board';
        yourself.