resource "docker_container" "hello_world_app" {
  image = "hello_world_app:latest"
  name  = "hello_world_app"
  restart = "always"
  volumes {
    container_path  = "/myapp"
    # replace the host_path with full path for your project directory starting from root directory /
    host_path = "/path/to/your/project/directory" 
    read_only = false
  }
  ports {
    internal = 8080
    external = 8080
  }
}