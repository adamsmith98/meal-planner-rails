import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["fields", "template", "wrapper", "destroyField"];

  append() {
    this.fieldsTarget.insertAdjacentHTML("beforeend", this.#templateContent);
  }

  remove() {
    if (this.hasDestroyFieldTarget) {
      this.destroyFieldTarget.value = true;
    }

    this.wrapperTarget.style.display = "none";
  }

  get #templateContent() {
    return this.templateTarget.innerHTML.replace(/__INDEX__/g, Date.now());
  }
}
