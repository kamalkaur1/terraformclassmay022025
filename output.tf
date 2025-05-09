output "print"{
    value = local.servicename
}
output "secondprint"{
    value = local.forum
}

output "lengthsa"{
    value=local.lengthsa
}

output "wintersportslist"{
    value=[for sport in local.winterlistOfSports:sport]
}
/*
for 1st element in -->inside the list variable winterlistOfSports--->"icehockey"1st element
for 2nd element in -->inside the list variable winterlistOfSports--->"snowboarding" 2nd element
for 3rd element in -->inside the list variable winterlistOfSports--->"iceskating" 3rd element
*/
output "total_sum" {
  value = sum([for total in local.total_output : tonumber(total)])
}
output "character_enemy_output" {
  value = local.character_enemy_map
}
output "character_enemy_output_map" {
  value = local.character_enemy_map_second
}
output "extract_mcit" {
  value = substr(var.full_text, 22, 4)
}
/*
substr(string, offset, length)
string: The full input string.
offset: Starting index (0-based).
length: Number of characters to extract.
Sentence: "I am a student at mcit"
Index of "m" in "mcit" → Position 22 (0-based)
Length of "mcit" → 4
*/
