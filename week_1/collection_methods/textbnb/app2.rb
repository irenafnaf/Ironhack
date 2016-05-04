require_relative('lib/home')
require_relative('lib/home_sorter')

irenes_home = Home.new("Irene's Apartment", "Bogota", 5, 150)
alejandras_home = Home.new("Alejandra's Loft", "New York", 3, 200)
eduardos_home = Home.new("Eduardo's Dorm", "State College", 2, 50)
sergios_home = Home.new("Sergio's Country House", "Villeta", 10, 300)
beatrizs_home =  Home.new("Beatriz's Beach House", "Miami", 6, 200)
cristinas_home = Home.new("Cristina's Townhouse", "Cartagena", 4, 130)
julios_home = Home.new("Julio's Apartment", "Fort Lauderdale", 3, 180)
michaels_home = Home.new("Michael's House", "Cartagena", 5, 160)
marias_home = Home.new("Maria's Loft", "South Beach", 3, 220)
nicos_home = Home.new("Nico's Apartment", "Washington", 4, 150)

list_of_homes = [
                  irenes_home,
                  alejandras_home,
                  eduardos_home,
                  sergios_home,
                  beatrizs_home,
                  cristinas_home,
                  julios_home,
                  michaels_home,
                  marias_home,
                  nicos_home
                ]


home_sorter = HomeSorter.new(list_of_homes)
home_sorter.home_printer