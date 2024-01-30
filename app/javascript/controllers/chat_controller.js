import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["source"]

  clear() {
    this.element.addEventListener('turbo:submit-end', (event) => {
      if (event.detail.success) {
        this.sourceTarget.value = '';
      }
    })
  }
}
