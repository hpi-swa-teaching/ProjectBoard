toolbuilder
buildColumnHeaderMoveColumnButtonSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggableActionButtonSpec new
		frame: (0.7@0.6 corner: 0.85@1);
		model: anSPBColumn;
		action: #moveColumn;
		label: '<->';
		help: 'move the column to another place';
		yourself.