locals{
  servicename="abracadabra"
  env="non-prod"
  full_servicename = "${local.servicename}-${local.env}"
  forum="abracadabramcit"
  lengthsa=length(local.servicename)
  winterlistOfSports=["icehockey","snowboarding","iceskating"]
  total_output = ["250", "250", "250"]
  characters = ["luke", "yoda", "darth"]
  enemies_destroyed = [4252, 900, 20000056894]
  character_enemy_map =   { for character in local.characters: # Convert character list to a set
  character => local.enemies_destroyed
  }
  character_enemy_map_second = zipmap(local.characters, local.enemies_destroyed)
  text_1="Antoine,Ovadia,Onome,Sean,Negar"
}
