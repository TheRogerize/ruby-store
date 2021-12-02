
import { Controller } from "stimulus"
import Rails from "@rails/ujs"

export default class extends Controller {
  static targets = [ "results", "form" ]

  connect() {
    console.log("Connected!")
  }

  search() {
    clearTimeout(this.timeout)
    this.timeout = setTimeout(() => {
      Rails.fire(this.formTarget, 'submit')
    }, 200)
  }
  
  handleResults() {
    const [data, status, xhr] = event.detail
    const results = data.getElementById("results").innerHTML;
    this.resultsTarget.innerHTML = results
  }
}