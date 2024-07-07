columns
queryColumns
	
	^ (self boardJson at: 'columns') collect: 
		[:each| 
			(SPBColumn newFrom: each)
			boardProvider: self; 
			yourself].