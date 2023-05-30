import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ 'filter' ]

  submit(event) {
    this.filterTarget.requestSubmit()
  }
}
