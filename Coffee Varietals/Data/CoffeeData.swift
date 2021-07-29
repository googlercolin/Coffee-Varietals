//
//  CoffeeData.swift
//  CoffeeData
//
//  Created by Colin Hong on 7/28/21.
//

import SwiftUI

// MARK: COFFEE DATA

let coffeeData: [Coffee] = [
    
Coffee(
    title: "Natural 1931 Gesha",
    headline: "This is a selection made from the diverse forest population that closely resembles the Panamanian Geisha.",
    image: "gesha1931_nat_eth_gv",
    description: """
Founded in 2011 by Adam Overton and Rachel Samuel, this 471 acre estate can be found roughly 20 kilometres away from the Wild Gori Forests of Gesha.

The Gesha Village Estate has a relatively short but detailed history. Beginning with the seed selection, Adam and Rachel scrutinised wild forest samples to identify specific wild Gesha varieties to later cultivate. This care continued to nurturing the plants in their nursery phase, transplanting and planting them with care, and following best agronomical practices in tending to them.

The 1931 Gesha selection was made by looking at the plant morphology, bean shape and size, as well as cup profile. Its cup profile contains notes of honeysuckle, ripe yellow fruits, and lime.
""",
    plantInfo: ["Average", "Exceptional", "Medium", "Tolerant", "Susceptible", "Susceptible", "-", "April Coffee Roasters", "https://www.aprilcoffeeroasters.com/pages/ethiopia-gesha-village-94"],
    beanInfo: ["Ethiopia", "Surma", "Gesha Village", "1900-2000", "April Coffee Roasters", "Jan 5, 2021" ,"Citrus, florals"]),

Coffee(
    title: "Natural Red Catuai",
    headline: "A compact plant with high yielding potential of standard quality in Central America.",
    image: "redcatuai_nat_bra_sc",
    description: """
A cross between highly productive Mundo Novo and compact Caturra, made by the Instituto Agronomico (IAC) of Sao Paulo State in Campinas, Brazil. The plant is highly productive compared to Bourbon, in part because of its small size, which allows plants to be closely spaced; it can be planted at nearly double the density. The plant’s shape makes it relatively easy apply pest and disease treatments. It is mainly characterized by great vigor and its low height; it is less compact than Caturra. It is highly susceptible to coffee leaf rust.

Catuaí derives from the Guarani multo mom, meaning “very good." Today, it is considered to have good but not great cup quality. There are yellow-fruited and red-fruited types, and have since been many selections in different countries. The cultivar was created in 1949 from a crossing of yellow Caturra and Mundo Novo, and initially called H-2077.

The variety was released in Brazil 1972 after pedigree selection (selection of individual plants through successive generations) and is in wide cultivation there. In Brazil, there are multiple lines of Catuai available; some are notable for their high productivity. The Catuaí lines transferred to Central America seem to be less productive; studies in Honduras and Costa Rica found no significant differences in productivity have been observed between Caturra and Catuaí.
""",
    plantInfo: ["Average", "Good", "Good", "Very Susceptible", "Susceptible", "Susceptible", "Mundo Novo, Caturra", "World Coffee Research", "https://varieties.worldcoffeeresearch.org/varieties/catuai"],
    beanInfo: ["Brazil", "Mantiqueira de Minas", "Sitio Cachoeirinha", "1100+", "20 Grams Coffee Roasters", "April, 2021" , "Brown spice, chocolate, banana"]),

Coffee(
    title: "Natural Rubi Peaberry",
    headline: "A hybrid of Mundo Novo and Catuaí engineered at the Agronomic Institute of Campinas (IAC) during the 1960s.",
    image: "rubi_nat_bra_esp",
    description: """
The Rubi varietal is a hybrid Mundo Novo, and Catuaí.

Mundo Novo is grown a lot in Brazil as it is very suited to the climate, as well as having a high yield and resistance to disease. It is characterised by a sweet, thick mouth-feel and low acidity.

Catuai is also a very common varietal in Brazil (it accounts for 50% of the coffee acreage) and is known as a dwarf plant, due to its size.
""",
    plantInfo: ["Average", "-", "-", "-", "-", "-", "Mundo Novo, Catuai", "Hasbean",  "https://www.hasbean.co.uk/blogs/varietals/19175940-rubi"],
    beanInfo: ["Brazil", "Minas Gerais", "Fazenda Esperança", "1200", "April Coffee Roasters", "May 11, 2021" ,"Pineapples, blackberry, caramel, milk chocolate"]),

Coffee(
    title: "Washed Typica",
    headline: "One of the most culturally and genetically important C. arabica coffees in the world, with high quality in Central America.",
    image: "typica_wash_ec_pill",
    description: """
Typica is the most famous of the Typica-descended varieties (see History of Bourbon and Typica for a full history of this group of coffees). It is a tall variety characterized by very low production, susceptibility to the major diseases, and good cup quality. However, it is well-adapted to the coldest conditions.

The Typica group, like all Arabica coffee, is supposed to have originated in southwestern Ethiopia. Sometime in the 15th or 16th century, it was taken to Yemen. By 1700, seeds from Yemen were being cultivated in India. In 1696 and 1699, coffee seeds were sent from the Malabar coast of India to the island of Batavia (today called Java in Indonesia). These few seeds were the ones to give rise to what we now know as the distinct Typica variety. In 1706 a single Typica coffee plant was taken from Java to Amsterdam and given a home in the botanical gardens; from there, a plant was shared with France in 1714.

From the Netherlands, Typica was sent in 1719 on colonial trade routes to Dutch Guiana (now Suriname) and then on to Cayenne (French Guiana) in 1722, and from there to the northern part of Brazil in 1727. It reached southern Brazil between 1760 and 1770. From Paris, plants were sent to to Martinique in the West Indies in 1723. The English introduced Typica coffee from Martinique to Jamaica in 1730. It reached Santo Domingo in 1735. From Santo Domingo, seeds were sent to Cuba in 1748. Later on, Costa Rica (1779) and El Salvador (1840) received seeds from Cuba.

In the late eighteenth century, cultivation spread to the Caribbean (Cuba, Puerto Rico, Santo Domingo), Mexico and Colombia, and from there across Central America (it was grown in El Salvador as early as 1740). Until the 1940s, the majority of coffee plantations in South and Central America were planted with Typica. Because Typica is both low yielding and highly susceptible to major coffee diseases, it has gradually been replaced across much of the Americas, but is still widely planted in Peru, the Dominican Republic, and Jamaica, where it is called Jamaica Blue Mountain.
""",
    plantInfo: ["Large", "Very good", "Low", "Very Susceptible", "Susceptible", "Susceptible", "Also called Criollo (Creole), Indio (Indian), Arábigo (Arabica), Plume Hidalgo, Blue Mountain, and Sumatra.", "World Coffee Research", "https://varieties.worldcoffeeresearch.org/varieties/typica"],
    beanInfo: ["Ecuador", "Azuay", "Pillcocaja", "1600", "April Coffee Roasters", "June 1, 2021" ,"Longan, red dates, black tea, caramel"]),

Coffee(
    title: "Natural Heirloom",
    headline: "Indigenous heirloom varieties resulting from cross-breeding between species and varietals.",
    image: "heirloom_nat_eth_ardi",
    description: """
It's estimated that there are between six and ten thousand coffee varieties in Ethiopia alone! Due to this colossal figure, there hasn’t been enough genetic testing to allow buyers to distinguish one from another. With the cross-pollination that occurs naturally in the wild, the name ‘Ethiopian Heirloom’ exists as an umbrella term to describe all variants. This is what really makes Ethiopian coffee quite a mystery—and an interesting one at that. Each village or town could potentially have a different variety, with its own unique properties.

Generally, Ethiopian heirlooms tend to have a floral and fruity cup profile, but the specific characteristics do vary heavily from region to region.

In Guji, coffees tend to be very fruity, with notes of berries and jam, whereas in Sidamo, coffees are more floral, with strong apricot flavours.
""",
    plantInfo: ["-", "High", "Moderate", "-", "-", "-", "Also called Regional Landraces", "Sample Coffee", "https://samplecoffee.com.au/coffee/varietals/ethiopian-heirloom"],
    beanInfo: ["Ethiopia", "Guji, Anasora", "Ardi, Kerchanshe Washing Station", "1750-1950", "Bearded Bella", "May 30, 2021" ,"Chrysanthemum, lavender, concord grape, tea-like"]),


]
