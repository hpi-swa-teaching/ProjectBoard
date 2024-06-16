queries
getQueryColumnsQuery: aString

^ '{"query":"query{ 
		node(id: \"', aString, '\") {  
			... on ProjectV2 {   
				fields(first: 100) {  
					nodes { 
						... on ProjectV2SingleSelectField {  
							id  
							name 
							options {  
								id 
								name 
							}
						}
					}
				}
			}
		}
	}"}'.