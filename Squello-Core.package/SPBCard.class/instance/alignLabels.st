updating-local
alignLabels

	self labelModels
		withIndexDo: [:label :index | index = 1
			ifTrue: 
				[label position: self defaultTopLabelPosition]
			ifFalse: 
				[label position: (self calculateLabelPositionFor: index)]].