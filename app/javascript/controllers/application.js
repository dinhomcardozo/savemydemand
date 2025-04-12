import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus   = application

export { application }

// app/javascript/application.js

// Importa dependências e outros scripts
import "@hotwired/turbo-rails";
import "controllers";

// Importa o script personalizado
import "./custom/ticket_form";