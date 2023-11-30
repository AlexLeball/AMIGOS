import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  static targets = ["eventsButton", "categoriesButton", "events", "categories"];

  toggleView(event) {
    const clickedButton = event.currentTarget;

    if (clickedButton === this.eventsButtonTarget) {
      this.eventsTarget.toggleAttribute("hidden");
      this.categoriesTarget.toggleAttribute("hidden");
      this.categoriesButtonTarget.removeAttribute("disabled");
      this.eventsButtonTarget.setAttribute("disabled", "true");
    } else if (clickedButton === this.categoriesButtonTarget) {
      this.categoriesTarget.toggleAttribute("hidden");
      this.eventsTarget.toggleAttribute("hidden");
      this.eventsButtonTarget.removeAttribute("disabled");
      this.categoriesButtonTarget.setAttribute("disabled", "true");
    }
  }
}
