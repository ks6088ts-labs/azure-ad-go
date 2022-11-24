provider "azuread" {}

data "azuread_client_config" "current" {}

resource "azuread_application" "example" {
  display_name = var.application_name
  owners       = [data.azuread_client_config.current.object_id]
  web {
    redirect_uris = [
      var.redirect_uri
    ]
  }
}

resource "time_rotating" "example" {
  rotation_days = 7
}

resource "azuread_application_password" "example" {
  application_object_id = azuread_application.example.object_id
  rotate_when_changed = {
    rotation = time_rotating.example.id
  }
}
