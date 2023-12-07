import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  static targets = [ "togglableElement"]

  connect() {
    console.log("hi");
  }

  fire() {
    (this.togglableElementTarget.style.height == "300px") ?
    this.togglableElementTarget.style.height = "0px" : this.togglableElementTarget.style.height = "300px";
  }
}
