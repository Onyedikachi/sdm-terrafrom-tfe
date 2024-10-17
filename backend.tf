terraform { 
  cloud { 
    
    organization = "digital-factory" 

    workspaces { 
      name = "sdm-workspace" 
    } 
  } 
}