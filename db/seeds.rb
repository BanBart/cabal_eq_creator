weapon_types = [
  'Blade',
  'Katana',
  'Greatsword',
  'Daikatana',
  'Orb',
  'Crystal',
  'Chakram'
]

weapon_types.each do |weapon_type|
  unless Weapon.exists?(name: weapon_type)
    Weapon.create(name: weapon_type)
  end
end
