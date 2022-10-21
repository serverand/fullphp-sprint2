// ************* DB OPTICA ************
use pizzeria

// *********** CLIENTS COLLECTION & DOCUMENTS ***************
db.clients.insert({
    "nom": "alfred",
    "cognoms": "carmona",
    "adresa": "carrer talcual",
    "codi_postal": "08080",
    "localitat": "Barcelona",
    "provincia": "Barcelona",
    "telefon": "666777888"
})
db.clients.insert({
    "nom": "carolina",
    "cognoms": "despres",
    "adresa": "carrer de baix",
    "codi_postal": "08080",
    "localitat": "Barcelona",
    "provincia": "Barcelona",
    "telefon": "777555222"
})

// *********** COMANDES COLLECTION & DOCUMENTS ***************
db.comandes.insert({
    "client_id": "634e69a8c1421e630cd9344f",
    "botiga_id": "634e69b1c1421e630cd93450",
    "empleat_id": "5555555K",
    "data": new Date("2022-06-06 22:00:00"),
    "tipus": "domicili",
    "productes": [
        {
            "tipus": "pizza",
            "nom": "hawaiana",
            "quantitat": 2
        },
        {
            "tipus": "beguda",
            "nom": "cola",
            "quantitat": 2,
        }
    ],
    "preu_total": "24.89"
})
db.comandes.insert({
    "client_id": "634e69a8c1421e630cd93r4t",
    "botiga_id": "634e69b1c1421e630cd93450",
    "empleat_id": "5555555K",
    "data": new Date("2022-06-08 21:00:00"),
    "tipus": "botiga",
    "productes": [
        {
            "tipus": "hamburguesa",
            "nom": "hamburgues",
            "quantitat": 3
        },
        {
            "tipus": "beguda",
            "nom": "cola",
            "quantitat": 3,
        }
    ],
    "preu_total": "18.89"
})

// *********** PRODUCTES COLLECTION & DOCUMENTS ***************
db.productes.insert({
    "tipus": "pizza",
    "nom": "hawaiana",
    "categoria": "suau",
    "descripcio": "amb pinya",
    "imatge": "hawainana.jpg",
    "preu": "9.99"
})
db.productes.insert({
    "tipus": "pizza",
    "nom": "barbacoa",
    "categoria": "forta",
    "descripcio": "picant",
    "imatge": "barbacoa.jpg",
    "preu": "9.99"
})
db.productes.insert({
    "tipus": "hamburguesa",
    "nom": "hamburgues",
    "descripcio": "sencilla",
    "imatge": "hambur.jpg",
    "preu": "4.99"
})
db.productes.insert({
    "tipus": "hamburguesa",
    "nom": "hamburgues extra",
    "descripcio": "doble",
    "imatge": "hambur2.jpg",
    "preu": "6.99"
})
db.productes.insert({
    "tipus": "beguda",
    "nom": "cola",
    "descripcio": "refresc",
    "imatge": "cola.jpg",
    "preu": "1.99"
})
db.productes.insert({
    "tipus": "beguda",
    "nom": "cervessa",
    "descripcio": "amb alcohol",
    "imatge": "cervessa.jpg",
    "preu": "1.99"
})

// *********** BOTIGUES COLLECTION & DOCUMENTS ***************
db.botigues.insert({
    "adresa": "carrer del pou",
    "codi_postal": "08080",
    "localitat": "Barcelona",
    "provincia": "Barcelona",
    "empleats": [
        {
            "id": "444444444H",
            "nom": "pere",
            "cognoms": "gracia",
            "nif": "444444444H",
            "telefon": "666999888",
            "tipus": "ciuner"
        },
        {
            "id": "5555555K",
            "nom": "maria",
            "cognoms": "manga",
            "nif": "5555555K",
            "telefon": "777888999",
            "tipus": "repartidor"
        }
    ]
})
db.botigues.insert({
    "adresa": "carrer del cel",
    "codi_postal": "08080",
    "localitat": "Barcelona",
    "provincia": "Barcelona",
    "empleats": [
        {
            "id": "22222222H",
            "nom": "andreu",
            "cognoms": "gracia",
            "nif": "22222222H",
            "telefon": "666999888",
            "tipus": "ciuner"
        },
        {
            "id": "8888888K",
            "nom": "carla",
            "cognoms": "manga",
            "nif": "8888888K",
            "telefon": "777888999",
            "tipus": "repartidor"
        }
    ]
})
