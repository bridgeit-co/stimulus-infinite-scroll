import { Controller } from "@hotwired/stimulus"
import { useIntersection } from 'stimulus-use'

// Connects to data-controller="intersection"
export default class extends Controller {
  options = {
    threshold: 1
  }

  connect() {
    console.log("Intersection controller connected")
    useIntersection(this, this.options)
  }

  appear(entry) {
    this.element.click()
  }
}
