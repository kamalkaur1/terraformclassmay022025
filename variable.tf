variable "subscription_id"{
  type=string
}
variable "client_id"{
  type=string
}
variable "client_secret"{
  type=string
}
variable "tenant_id"{
  type=string
}
variable "storage_account_name"{
  type=string
  default="mcitstoragemay"
}
variable "account_tier"{
  type=string
  default="Premium"
}
variable "account_replication_type"{
  type=string
  default="ZRS"
}
variable "container_access_type"{
type=string
default="private"
}
variable "words" {
 type    = list(string)
 default = ["hi", "cat", "car", "tree", "hi", "car"]
}

variable "environment"{
  type=string
  default="production"
}

variable "storagecontainermay"{
  type=string
  default="mcitsstoragecontmay"
}

variable "storageblobmay"{
  type=string
  default="mcitsstorageblobmay"
}
variable "blob_type"{
  type=string
  default="Block"
}
variable "blob_source"{
type=string
default="some-local-file.zip"
}
variable "full_text" {
type=string
  default = "I am a student at mcit"
}
variable "classwork" {
type=string
  default = "I love the country called Canada, it is awesome"
}
variable "name"{
type=string
default="onome"
}
