import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["fields", "template"];

  append() {
    this.fieldsTarget.insertAdjacentHTML("beforeend", this.#templateContent);
  }

  get #templateContent() {
    return this.templateTarget.innerHTML.replace(/__INDEX__/g, Date.now());
  }
}
