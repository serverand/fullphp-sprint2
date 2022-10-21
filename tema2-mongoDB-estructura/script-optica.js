// ************* DB OPTICA ************
use optica

// *********** PROVEIDORS COLLECTION & DOCUMENTS ***************
db.proveidors.insert({
    "nom": "Proveidor 1",
    "adresa": {
        "carrer": "carrer 1",
        "numero": 12,
        "pis": 1,
        "porta": 2,
        "ciutat": "Barcelona",
        "codi_postal": "08080",
        "pais": "Catalunya" 
    },
    "telefon": "699888777",
    "fax": "666555777",
    "NIF": "46656546T",
    "marques": ["Ray-Ban","Oakley","Polaroid"]
})
db.proveidors.insert({
    "nom": "Proveidor 2",
    "adresa": {
        "carrer": "carrer 2",
        "numero": 32,
        "pis": 2,
        "porta": 3,
        "ciutat": "Barcelona",
        "codi_postal": "08080",
        "pais": "Catalunya" 
    },
    "telefon": "691118777",
    "fax": "222555666",
    "NIF": "48484887T",
    "marques": ["Carrera","Arnette","Tous"]
})

// *********** ULLERES COLLECTION & DOCUMENTS ***************
db.ulleres.insert({
    "proveidor_id": "634e6945c1421e630cd9344d",
    "client_id": "634e4f2f4f71e2d070897a12",
    "marca": "Ray-Ban",
    "graduacio_vidre_esquerra": 0.5,
    "graduacio_vidre_dreta": 1.2,
    "tipus_muntura": "flotant",
    "color_muntura": "groc", 
    "color_vidre_esquerra": "verd",
    "color_vidre_dreta": "groc", 
    "preu": 185.99,
    "data_compra": new Date("2022-05-15"),
    "empleat": "Pere"
})
db.ulleres.insert({
    "proveidor_id": "634e6945c1421e630cd9344d",
    "client_id": "634e4f2f4f71e2d070897a0d",
    "marca": "Oakley",
    "graduacio_vidre_esquerra": 2.5,
    "graduacio_vidre_dreta": 0.2,
    "tipus_muntura": "metalica",
    "color_muntura": "groc", 
    "color_vidre_esquerra": "verd",
    "color_vidre_dreta": "groc", 
    "preu": 195.99,
    "data_compra": new Date("2022-05-25"),
    "empleat": "Pere"
})
db.ulleres.insert({
    "proveidor_id": "634e6945c1421e630cd9344d",
    "client_id": "634e4f2f4f71e2d070897a08",
    "marca": "Oakley",
    "graduacio_vidre_esquerra": 0.8,
    "graduacio_vidre_dreta": 1.6,
    "tipus_muntura": "flotant",
    "color_muntura": "groc", 
    "color_vidre_esquerra": "verd",
    "color_vidre_dreta": "groc", 
    "preu": 95.99,
    "data_compra": new Date("2022-06-05"),
    "empleat": "Maria"
})
db.ulleres.insert({
    "proveidor_id": "634e694dc1421e630cd9344e",
    "client_id": "634e4f2f4f71e2d070897a09",
    "marca": "Carrera",
    "graduacio_vidre_esquerra": 2.5,
    "graduacio_vidre_dreta": 1.8,
    "tipus_muntura": "pasta",
    "color_muntura": "groc", 
    "color_vidre_esquerra": "verd",
    "color_vidre_dreta": "groc", 
    "preu": 295.99,
    "data_compra": new Date("2022-06-22"),
    "empleat": "Maria"
})
db.ulleres.insert({
    "proveidor_id": "634e694dc1421e630cd9344e",
    "client_id": "634e4f2f4f71e2d070897a0a",
    "marca": "Carrera",
    "graduacio_vidre_esquerra": 1.5,
    "graduacio_vidre_dreta": 2.2,
    "tipus_muntura": "metalica",
    "color_muntura": "groc", 
    "color_vidre_esquerra": "verd",
    "color_vidre_dreta": "groc", 
    "preu": 155.99,
    "data_compra": new Date("2022-07-25"),
    "empleat": "Maria"
})
db.ulleres.insert({
    "proveidor_id": "634e694dc1421e630cd9344e",
    "client_id": "634e4f2f4f71e2d070897a0b",
    "marca": "Arnette",
    "graduacio_vidre_esquerra": 0.6,
    "graduacio_vidre_dreta": 0.2,
    "tipus_muntura": "pasta",
    "color_muntura": "groc", 
    "color_vidre_esquerra": "verd",
    "color_vidre_dreta": "groc", 
    "preu": 245.99,
    "data_compra": new Date("2022-08-08"),
    "empleat": "Pere"
})

// *********** ULLERES COLLECTION & DOCUMENTS ***************
db.clients.insert({
    "nom": "Antoni",
    "adresa": "Carrer 1",
    "telefon": "66655544",
    "email": "email@email",
    "data_registre": new Date("2022-05-18")
})
db.clients.insert({
    "nom": "Juanjo",
    "adresa": "Carrer 2",
    "telefon": "66655544",
    "email": "email@email",
    "data_registre": new Date("2022-06-08"),
    "client_recomenat_per": "634e4f2f4f71e2d070897a08"
})
db.clients.insert({
    "nom": "Augenia",
    "adresa": "Carrer 3",
    "telefon": "66655544",
    "email": "email@email",
    "data_registre": new Date("2022-06-22"),
    "client_recomenat_per": "634e4f2f4f71e2d070897a08"
})
db.clients.insert({
    "nom": "Alberto",
    "adresa": "Carrer 4",
    "telefon": "66655544",
    "email": "email@email",
    "data_registre": new Date("2022-07-12")
})
db.clients.insert({
    "nom": "Felip",
    "adresa": "Carrer 5",
    "telefon": "66655544",
    "email": "email@email",
    "data_registre": new Date("2022-08-15")
})
db.clients.insert({
    "nom": "Josep",
    "adresa": "Carrer 6",
    "telefon": "66655544",
    "email": "email@email",
    "data_registre": new Date("2022-09-08"),
    "client_recomenat_per": "634e4f2f4f71e2d070897a09"
})
