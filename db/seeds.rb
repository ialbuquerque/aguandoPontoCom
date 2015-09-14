# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  ClimateZone.create([
    {name: 'Zona Tropical'},
    {name: 'Zona Temperada do Norte'},
    {name: 'Zona Temperada do Sul'},
    {name: 'Zona Polar do Norte'},
    {name: 'Zona Polar do Sul'}])

  PlantType.create([
    {name: 'Suculentas'},
    {name: 'Flores'},
    {name: 'Cactáceas'},
    {name: 'Orquídeas'},
    {name: 'Trepadeiras'},
    {name: 'Ervas'}
    ])
