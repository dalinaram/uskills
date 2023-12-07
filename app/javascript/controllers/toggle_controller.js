import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["input", "display"]
  connect() {
    console.log("Hello from toggle_controller.js")

  }
  fire(event) {
    const choice = event.target.value

    console.log(this.displayTarget)

     this.displayTarget.classList.toggle("d-none")

  }
}
