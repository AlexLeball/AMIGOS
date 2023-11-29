import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="view-switcher"
export default class extends Controller {
  static targets = ["events", "categories"];

  toggleView() {
    this.eventsTarget.toggleAttribute("hidden");
    this.categoriesTarget.toggleAttribute("hidden");
  }
}
