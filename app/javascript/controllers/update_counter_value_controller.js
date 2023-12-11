import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="update-counter-value"
export default class extends Controller {
  connect() {
    console.log("update_counter_value controller connected!")
  }

  setValue(event) {
    // Access the received data from the event
    const value = event.detail;
    console.log(this.application)

    // Update the inner text of the connected element with the received value
    this.element.innerText = value;
  }
}
