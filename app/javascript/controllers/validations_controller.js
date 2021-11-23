import { Controller } from "stimulus"
import Rails from "@rails/ujs"

export default class extends Controller {
    static targets = ["form", "output", "firs_name", "last_name", "email", "password", "password_confirmation"]
    static values   = { url: String }
    signUp() {
        console.log("ETEVE")
    }
    handleChange(event) {
      Rails.ajax({
        url: this.urlValue,
        type: "POST",
        data: new FormData(this.formTarget),
        success: (data) => {
          this.outputTarget.innerHTML = data;
        },
      })
    }
    // signUp() {
    //     let content = this.bodyTarget.value;
    //     this.addTarget.insertAdjacentHTML('beforebegin', "<li>" + content + "</li>");
    // }

}