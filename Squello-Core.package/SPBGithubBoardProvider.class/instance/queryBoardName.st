board
queryBoardName

	^ (self api queryProject: self projectId) at: 'name'.