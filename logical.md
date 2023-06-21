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
*birthdate: date
address: text
hired: date
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

}

entity Artist {
*artist_id: integer <<generated>> <<pk>>
--
*artist_name: text
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
*marchindise_id: integer <<generated>> <<pk>>
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

}

Band"1" -- "*"Album: own >
Band"*" - "*"Live_Show_QC: perform >
Users "1 " -- "*" Sale: > purchases
Employee "1 " -- "*" Sale: > makes
Album "* " -- "*" Sale: > has
Device " * " -- " * " Sale: > has
Merchandise "*" -- "*" Sale: > has
Artist "1" -- "*" Album: > owns
Artist "*" -- "*" Live_Show_QC: > performs
Artist "*" -- "1" Band: > in

@enduml