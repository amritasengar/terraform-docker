
# creating the first resource with terraform 

resource "docker_image" "image_id" {
  name = "ghost:latest"
 }


# using the interpolation syntax

resource "docker_container" "container_id" {
  name = "blog" 
  image = "${docker_image.image_id.latest}"
  ports {
    internal = "2368"
    external = "8090"
 }
 }
