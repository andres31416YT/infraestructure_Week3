resource "docker_networks" "network"{
	name	=	"${var.name_network}"
}

resource "docker_image" "web-image"{
        name    =       "${var.name_web}"
        build{
                context         =       "../src/web"
                dockerfile      =       "Dockerfile"
        }
}
resource "docker_image" "api-image"{
        name    =       "${var.name_api}"
        build{
                context         =       "../src/api"
                dockerfile      =       "Dockerfile"
        }
}


resource "docker_container" "web-image"{
	name	=	"${var.name_web}"
	image	=	docker_image.web-image.image_id
	ports{
		internal	=	80
		external	=	var.port_web
	}
	networks_advanced	=	docker_networks.network.name
}
resource "docker_container" "api-image"{
        name    =       "${var.name_api}"
        image	=	docker_image.api-image.image_id
        ports{
                internal        =       3000
                external        =       var.port_api
        }
        networks_advanced	=       docker_networks.network.name
}
resource "docker_container" "db-image"{
        name    =       "${var.name_db}"
        image   =       "postgres:latest"
	env = [
		"POSTGRES_USER=userr",
		"POSTGRES_PASSWORD=p4ssword",
		"POSTGRES_DB=infra"
	]
        ports{
                internal        =       5432
                external        =       var.port_db
        }
        networks_advanced	=       docker_networks.network.name
}
