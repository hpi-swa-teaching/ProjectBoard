as yet unclassified
buildSelectionList: builder

	^ builder pluggableListSpec new
		model: self;
		list: #projectList;
		getIndex: #projectSelected;
		setIndex: #projectSelected:;
		frame: (0@0 corner: 1@1)