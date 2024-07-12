toolbuilder-colum
buildColumnHeaderMoveColumnButtonSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggableActionButtonSpec new
		model: anSPBColumn;
		frame: (0.7@0.6 corner: 0.85@1);
		action: #moveColumn;
		label: '<->';
		help: 'move the column to another place';
		yourself.