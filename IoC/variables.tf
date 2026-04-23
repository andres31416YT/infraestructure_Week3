variable "environment"{
	type		=	string
	description	=	"dev, qa "
}
variable "name_web"{
	type		=	string
	description	=	"nombre de web"
}
variable "name_api"{
        type            =       string
        description     =       "nombre de web"
}
variable "name_db"{
        type            =       string
        description     =       "nombre de db"
}
variable "port_web"{
        type            =       number
        description     =       "puerto de web"
}
variable "port_api"{
        type            =       number
        description     =       "puerto de api"
}
variable "port_db"{
        type            =       number
        description     =       "puerto de db"
}
variable "name_network"{
	type		=	string
	description	=	"nombre de la red"
}
