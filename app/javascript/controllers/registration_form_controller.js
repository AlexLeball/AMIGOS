import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="popup"
export default class extends Controller {
  static targets = ["form"];

  toggleForm() {
    this.formTarget.style.display = this.formTarget.style.display === "none" ? "block" : "none";
  }
}
