@startuml
entity User {
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
hired: datetime
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
*artist_id: integer <<fk>>
}

entity Artist {
*artist_id: integer <<generated>> <<pk>>
--
*artist_name: text
}

entity Band_Member {
*band_member_id: integer <<generated>> <<pk>>
--
*band_name: text
--
*artist_id: integer <<fk>>
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
date: datetime
location: text
--
artist_id: integer <<fk>>
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

User "1 " -- "*" Sale: > purchases
Employee "1 " -- "*" Sale: > makes
Album "1 " -- "*" Sale: > has
Device "1 " -- "1" Sale: > has
Merchandise "*" -- "*" Sale: > has
Artist "*" -- "*" Album: > owns
Artist "*" -- "*" Live_Show_QC: > performs
Artist "*" -- "1" Band_Member: > in
@enduml