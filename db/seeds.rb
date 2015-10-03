weapon_types = [
  'blade',
  'katana',
  'greatsword',
  'daikatana',
  'orb',
  'crystal',
  'chakram'
]

weapon_types.each do |weapon_type|
  unless Weapon.exists?(name: weapon_type)
    Weapon.create(name: weapon_type)
  end
end
