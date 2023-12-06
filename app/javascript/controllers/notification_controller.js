import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="favorites"
export default class extends Controller {
  static targets = ["notificationsList"];

  toggleNotifications() {
    this.notificationsListTarget.style.display = this.notificationsListTarget.style.display === "none" ? "block" : "none";
  }
}
