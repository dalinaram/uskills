import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["input"]
  connect() {
    console.log("Hello from toggle_controller.js")

  }
  fire(event) {
    const choice = event.target.value

      document.querySelector('#form').classList.toggle("d-none")

  }
}
