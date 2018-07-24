json.array! @weapons do |weapon|
  json.id weapon.id
  json.name weapon.name
  json.weapon_type weapon.weapon_type
  json.base_power weapon.base_power
  json.max_power weapon.max_power
  json.elemental_power weapon.elemental_power
  json.elemental_power_amount weapon.elemental_power_amount
  json.perk weapon.perk
  json.perk_amount weapon.perk_amount
  json.cell_slot_type_one weapon.cell_slot_type_one
  json.cell_slot_type_two weapon.cell_slot_type_two

end

