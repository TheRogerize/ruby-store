import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="alert"
export default class extends Controller {
  static targets = [ "alertElement" ]
  connect() {
    console.log("connecte")
  }

  closeOnTimeOut(timeout) {
    setTimeout(() => {
      this.close()
    }, timeout)
  }

  close(e) {
    this.alertElementTargets.forEach((element, index) => {
      if(element.id == e.params.id) {
        element.classList.add("hidden")
      }
    });
  }
}
