console.log("Stimulus Controller Loaded!");
import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  reset() {
    console.log("Resetting the form!");
    this.element.reset();
  }
}
