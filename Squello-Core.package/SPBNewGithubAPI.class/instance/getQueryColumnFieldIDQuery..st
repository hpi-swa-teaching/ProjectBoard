queries
getQueryColumnFieldIDQuery: aString

	^ '{"query":"query{ 
			node(id: \"', aString, '\") {  
				... on ProjectV2 {   
					field(name: \"Status\") {  
						... on ProjectV2SingleSelectField {  
							id
						}
					}
				}
			}
		}"
	}'.