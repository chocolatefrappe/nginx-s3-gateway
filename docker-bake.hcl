target "docker-metadata-action" {}

target "nginx-s3-gateway-oss" {
    context = "https://github.com/nginxinc/nginx-s3-gateway.git"
    dockerfile = "Dockerfile.oss"
}

target "default" {
    inherits = [
        "docker-metadata-action"
    ]
    contexts = {
        "nginx-s3-gateway": "target:nginx-s3-gateway-oss"
    }
    platforms = [
        "linux/amd64",
        "linux/arm64",
    ]
}
