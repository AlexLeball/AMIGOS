import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favorites"
export default class extends Controller {
  connect() {
    this.element.addEventListener('click', this.handleClick.bind(this));
  }

  handleClick(event) {
    event.preventDefault();
    // Your logic here
    // You can perform AJAX requests or any other actions you need
  }
}
