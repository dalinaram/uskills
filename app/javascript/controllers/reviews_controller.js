import { Controller } from "@hotwired/stimulus"


export default class extends Controller {
  static targets = ["additionalReviews", "toggleButton"];

  connect(){
    console.log("review controllers")
  }

  toggleReviews() {
    const isVisible = this.additionalReviewsTarget.classList.toggle('d-none');
    const buttonText = isVisible ?  "Voir plus": "Voir moins";

    console.log(this.toggleButtonTarget)
    this.toggleButtonTarget.textContent = buttonText;
  }
}
