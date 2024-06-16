queries
getQueryProjectQuery: aString

^ '{"query":"query{
  		node(id: \"', aString, '\") {
    			... on ProjectV2 {
      			title
			}
		}
	}"}'.