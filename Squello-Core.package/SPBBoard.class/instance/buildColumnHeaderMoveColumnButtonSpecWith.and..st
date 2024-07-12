toolbuilder-colum
buildColumnHeaderMoveColumnButtonSpecWith: aBuilder and: anSPBColumn

	^ aBuilder pluggableActionButtonSpec new
		model: anSPBColumn;
		frame: (self endMoveLeftButton@self endColumnHeaderTitle corner: self endMoveColumnButton@1);
		action: #moveColumn;
		label: '<->';
		help: 'move the column to another place';
		yourself.