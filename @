
# creating the first resource with terraform 

resource "docker_image" "image_id" {
  name = "nginx:latest"
 }


# creating the interpolation syntax

resource "docker_container" "container_id" {
  name = "test"
  image = "${docker_image.image_id.latest}"
  ports{
    internal = 8090
    external = 8090
 } 
}
