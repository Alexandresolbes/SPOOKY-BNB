import { Controller } from "@hotwired/stimulus"
// Connects to data-controller="evil"
export default class extends Controller {
  static targets = ["clown"]
  connect() {
    console.log("evil connected")
  }
  laugh() {
    console.log(this.clownTarget);
    this.clownTarget.play();
  }

}
