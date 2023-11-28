import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = ["toggableElement", "input"]
  connect() {
    console.log("Hello from toggle_controller.js")
   
  }
  fire(event) {
 
    const choice = event.target.value
   
    if (choice == "teach"){
      this.toggableElementTarget.classList.remove("d-none")
    } else {
      this.toggableElementTarget.classList.add("d-none")
    }
  }
}  
