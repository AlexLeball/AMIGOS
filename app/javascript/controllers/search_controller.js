import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ['searchField'];

  toggleSearch() {
    this.searchFieldTarget.style.display = (this.searchFieldTarget.style.display === 'none') ? 'block' : 'none';
  }
}
