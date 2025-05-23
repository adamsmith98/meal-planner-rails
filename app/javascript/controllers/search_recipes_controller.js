import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "search", "recipe" ]

  filter() {
    this.recipeTargets.forEach((rt) => {
      if (!rt.querySelector("a").textContent.toLowerCase().includes(this.searchTarget.value.toLowerCase())) {
        rt.style.display = "none"
      } else {
        rt.style.display = ""
      }
    })
  }
}
