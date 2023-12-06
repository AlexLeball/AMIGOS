import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favorites"
export default class extends Controller {
  goToTop() {
    window.scrollTo({ top: 0, behavior: 'smooth' });
  }
}
