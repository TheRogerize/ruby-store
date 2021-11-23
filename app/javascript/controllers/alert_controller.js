import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["message", "hide", "alert", "show"];

  hideAlert() {
    // console.log(`${this.value.textContent}`);
   //  console.log(`${this.input.type}`);
   console.log("ENTRANDO")
    console.log(this)
  }

  get value() {
    console.log("this.messageTarget")
    console.log(this.messageTarget)
    return this.messageTarget;
  }
  get input() {
    return this.unhideTarget;
  }
}