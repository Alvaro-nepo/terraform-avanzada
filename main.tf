provider "aws" {
  access_key                  = "test"
  secret_key                  = "test"
  region                      = "us-east-1"

  # Configuración específica para LocalStack
  s3_use_path_style           = true
  skip_credentials_validation = true
  skip_metadata_api_check     = true
  skip_requesting_account_id  = true

  # Punto de conexión a LocalStack
  endpoints {
    s3 = "http://localhost:4566"
  }
}

# Definición del recurso S3
resource "aws_s3_bucket" "mi_bucket" {
  bucket = "mi-primer-bucket"
}
