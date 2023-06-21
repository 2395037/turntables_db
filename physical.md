@startuml
entity Users {
*user_id: integer <<generated>> <<pk>>
--
*firstname: text
*lastname: text
*email: text
phone: text
address: text
*birthdate: date

}

entity Employee {
*employee_id: integer <<generated>> <<pk>>
--
*firstname: text
*lastname: text
*email: text
*phone: text
address: text
*hired: datetime
*birthdate: date
}

entity Album {
*album_id: integer <<generated>> <<pk>>
--
*album_name: text
*genre: text
*format: text
*price: text
*in_stock: boolean
*condition: text
--
artist_id: integer <<fk>>
band_id: integer <<fk>>
}

entity Artist {
*artist_id: integer <<generated>> <<pk>>
--
*artist_name: text
--
band_id: text <<fk>>
}

entity Band {
*band_id: integer <<generated>> <<pk>>
--
*band_name: text
}

entity Device {
*device_id: integer <<generated>> <<pk>>
--
*device: text
*price: numeric(10,2)
*in_stock: boolean
*condition: text
}

entity Merchandise {
*merchandise_id: integer <<generated>> <<pk>>
--
*item_name: text
*price: numeric(10,2)
*in_stock: boolean
description: text
}

entity Live_Show_QC {
*show_id: integer <<generated>> <<pk>>
--
*date: datetime
*location: text
}

entity Sale {
*sale_id: integer <<generated>> <<pk>>
--
*date: date
*price: numeric(10,2)
*payment_method: text
--
*user_id: integer <<fk>>
*employee_id: integer <<fk>>
album_id: integer <<fk>>
device_id: integer <<fk>>
merchandise_id: integer <<fk>>
}

entity Band_Show {
    *band_id: integer <<fk>>
    *show_id: integer <<fk>>
}

entity Album_Sale {
    *album_id: integer <<fk>>
    *sale_id: integer <<fk>>
}

entity Device_Sale {
    *device_id: integer <<fk>>
    *sale_id: integer <<fk>>
}

entity Merch_Sale {
    *merchandise_id: integer <<fk>>
    *Sale_id: integer <<fk>>
}

entity Artist_Show {
    *artist_id: integer <<fk>>
    *show_id: integer <<fk>>
}

Band"1" -- "*"Album: own >
Band"1" - "*"Band_Show
Band_Show"*" - "1"Live_Show_QC: perform >
Users "1 " -- "*" Sale: > purchases
Employee "1 " -- "*" Sale: > makes
Album " 1 " -- "*"Album_Sale
Album_Sale"*" -- "1" Sale: > has
Device " 1 " -- " * "Device_Sale
Device_Sale"*" -- "1"Sale: > has
Merchandise "1" -- "*"Merch_Sale
Merch_Sale"*" -- "1"Sale: > has
Artist "1" -- "*" Album: > owns
Artist "1" -- "*"Artist_Show
Artist_Show"*" -- "1"Live_Show_QC: > performs
Artist "*" -- "1" Band: > in
@enduml