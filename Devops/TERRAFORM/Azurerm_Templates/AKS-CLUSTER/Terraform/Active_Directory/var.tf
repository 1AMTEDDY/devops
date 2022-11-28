variable "azuread_group" {
    type = map(any)
    default ={
        group1 = {
            name = "Cluster-viewer"
        }
        group2 = {
            name = "Cluster-Admin"
        }
    }
  
}