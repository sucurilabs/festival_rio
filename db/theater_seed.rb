#encoding: utf-8
Localization.delete_all
Neighborhood.delete_all
Theater.delete_all

localization = Localization.create(:name => "Centro")
neighborhood = Neighborhood.create(:name => "Centro", :localization => localization)
Theater.create(:name => "C.C. Justiça Federal 1", :stocking => 142, :price => 10.00, :half_price => 5.00, :address => "Av. Rio Branco", :number => 241, :neighborhood => neighborhood)
Theater.create(:name => "C.C. Justiça Federal 2", :stocking => 56, :price => 10.00, :half_price => 5.00, :address => "Av. Rio Branco", :number => 241, :neighborhood => neighborhood)

Theater.create(:name => "CCBB - Cinema 1", :stocking => 102, :price => 6.00, :half_price => 3.00, :address => "Rua Primeiro de Março", :number => 66, :neighborhood => neighborhood)

Theater.create(:name => "Cinemaison de France", :stocking => 353, :price => 0.00, :half_price => 0.00, :address => "Av. Presidente Antônio Carlos", :number => 58, :neighborhood => neighborhood)

neighborhood = Neighborhood.create(:name => "Cais do Porto", :localization => localization)

Theater.create(:name => "Pavilhão do Festival", :stocking => 161, :price => 2.00, :half_price => 1.00, :address => "Avenida Rodrigues Alves - Armazém da Utopia (Armazém 6)", :neighborhood => neighborhood)

neighborhood = Neighborhood.create(:name => "Cinelândia", :localization => localization)

Theater.create(:name => "Odeon Petrobras", :stocking => 563, :price => 18.00, :half_price => 9.00, :address => "Pça. Floriano", :number => 7, :neighborhood => neighborhood)


localization = Localization.create(:name => "Zona Sul")
neighborhood = Neighborhood.create(:name => "Botafogo", :localization => localization)
Theater.create(:name => "Est SESC Botafogo 1", :stocking => 239, :price => 16.00, :half_price => 8.00, :address => "Rua Voluntários da Pátria", :number => 88, :neighborhood => neighborhood)
Theater.create(:name => "Est SESC Botafogo 3", :stocking => 66, :price => 16.00, :half_price => 8.00, :address => "Rua Voluntários da Pátria", :number => 88, :neighborhood => neighborhood)

Theater.create(:name => "Cinemark Botafogo 3", :stocking => 219, :price => 18.00, :half_price => 9.00, :address => "Praia de Botafogo - Botafogo Pria Shopping", :number => 400, :neighborhood => neighborhood)

Theater.create(:name => "Est SESC Rio 1", :stocking => 241, :price => 16.00, :half_price => 8.00, :address => "Rua Voluntários da Pátria", :number => 35, :neighborhood => neighborhood)
Theater.create(:name => "Est SESC Rio 2", :stocking => 216, :price => 16.00, :half_price => 8.00, :address => "Rua Voluntários da Pátria", :number => 35, :neighborhood => neighborhood)
Theater.create(:name => "Est SESC Rio 3", :stocking => 104, :price => 16.00, :half_price => 8.00, :address => "Rua Voluntários da Pátria", :number => 35, :neighborhood => neighborhood)

neighborhood = Neighborhood.create(:name => "Gávea", :localization => localization)
Theater.create(:name => "Est VIVO Gávea 1", :stocking => 75, :price => 18.00, :half_price => 9.00, :address => "Rua Marquês de São Vicente - Shopping da Gávea", :number => 52, :address_complement => "4º andar", :neighborhood => neighborhood)
Theater.create(:name => "Est VIVO Gávea 4", :stocking => 84, :price => 18.00, :half_price => 9.00, :address => "Rua Marquês de São Vicente - Shopping da Gávea", :number => 52, :address_complement => "4º andar", :neighborhood => neighborhood)
Theater.create(:name => "Est VIVO Gávea 5", :stocking => 178, :price => 18.00, :half_price => 9.00, :address => "Rua Marquês de São Vicente - Shopping da Gávea", :number => 52, :address_complement => "4º andar", :neighborhood => neighborhood)

Theater.create(:name => "Instituto Moreira Salles", :stocking => 113, :price => 18.00, :half_price => 9.00, :address => "Rua Marquês de São Vicente", :number => 476, :neighborhood => neighborhood)

neighborhood = Neighborhood.create(:name => "São Conrado", :localization => localization)

Theater.create(:name => "Kinoplex Fashion Mall 2", :stocking => 195, :price => 18.00, :half_price => 9.00, :address => "Estrada da Gávea", :number => 889, :address_complement => "2º piso", :neighborhood => neighborhood)

neighborhood = Neighborhood.create(:name => "Leblon", :localization => localization)

Theater.create(:name => "Kinoplex Leblon 4", :stocking => 161, :price => 18.00, :half_price => 9.00, :address => "Av. Afrânio de Melo Franco - Shopping Leblon", :number => 290, :address_complement => "4º piso", :neighborhood => neighborhood)

Theater.create(:name => "Cinépolis Lagoon 5", :stocking => 161, :price => 10.00, :half_price => 5.00, :address => "Av. Borges de Medeiros - Estádio de Remo da Lagoa", :number => 1424, :neighborhood => neighborhood)

neighborhood = Neighborhood.create(:name => "Ipanema", :localization => localization)
Theater.create(:name => "OI Futuro em Ipanema", :stocking => 130, :price => 10.00, :half_price => 5.00, :address => "Rua Visconde de Pirajá", :number => 54, :neighborhood => neighborhood)

Theater.create(:name => "Est SESC Ipanema 1", :stocking => 130, :price => 16.00, :half_price => 8.00, :address => "Rua Visconde de Pirajá", :number => 605, :neighborhood => neighborhood)

neighborhood = Neighborhood.create(:name => "Copacabana", :localization => localization)
Theater.create(:name => "Praia de Copacabana", :stocking => 0, :price => 0.00, :half_price => 0.00, :address => "Av. Atlântica", :number => 1702, :address_complement => "Em frente ao Copacabana Palace", :neighborhood => neighborhood)

Theater.create(:name => "Roxy 3", :stocking => 305, :price => 18.00, :half_price => 9.00, :address => "Av. Nossa Senhora de Copacabana", :number => 945, :address_complement => "A", :neighborhood => neighborhood)

neighborhood = Neighborhood.create(:name => "Catete", :localization => localization)
Theater.create(:name => "São Luiz 3", :stocking => 267, :price => 18.00, :half_price => 9.00, :address => "Rua do Catete", :number => 311, :address_complement => "loja 204", :neighborhood => neighborhood)

neighborhood = Neighborhood.create(:name => "Santa Teresa", :localization => localization)
Theater.create(:name => "Cine Santa", :stocking => 46, :price => 18.00, :half_price => 9.00, :address => "Rua Paschoal Carlos Magno - Largo dos Guimarães", :number => 136, :neighborhood => neighborhood)


localization = Localization.create(:name => "Zona Norte")
neighborhood = Neighborhood.create(:name => "Complexo do Alemão", :localization => localization)
Theater.create(:name => "Cine Carioca", :stocking => 89, :price => 4.00, :half_price => 2.00, :address => "Rua Nova Brasília, Pça do Terço", :neighborhood => neighborhood)

neighborhood = Neighborhood.create(:name => "Penha", :localization => localization)
Theater.create(:name => "Cine TelaBrasil", :stocking => 225, :price => 0.00, :half_price => 0.00, :address => "Rua Santa Engracia, Praça Santa Emiliana", :neighborhood => neighborhood)

neighborhood = Neighborhood.create(:name => "Tijuca", :localization => localization)
Theater.create(:name => "Kinoplex Tijuca 4", :stocking => 264, :price => 18.00, :half_price => 9.00, :address => "Av. Maracanã - Shopping Tijuca", :number => 987, :address_complement => "loja 3", :neighborhood => neighborhood)

neighborhood = Neighborhood.create(:name => "Guadalupe", :localization => localization)
Theater.create(:name => "Ponto Cine", :stocking => 73, :price => 4.00, :half_price => 2.00, :address => "Estrada do Camboatá - Guadalupe Shopping", :number => 2300, :address_complement => "1º piso", :neighborhood => neighborhood)



localization = Localization.create(:name => "Zona Oeste")
neighborhood = Neighborhood.create(:name => "Barra da Tijuca", :localization => localization)
Theater.create(:name => "Est SESC BarraPoint 1", :stocking => 119, :price => 16.00, :half_price => 8.00, :address => "Av. Armando Lombardi - Shopping BarraPoint", :number => 350, :address_complement => "3º piso", :neighborhood => neighborhood)