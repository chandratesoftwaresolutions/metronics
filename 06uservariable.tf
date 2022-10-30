variable "iam" {
 description = "create multiple users"
 type= list(string) 
 default = ["docker","k8s","nagios"]
}