import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "slide", "content" ]

  connect() {
    this.index = 0
    this.showSlide(0)
    this.startInterval()
  }

  disconnect() {
    this.stopInterval()
  }

  startInterval() {
    this.interval = setInterval(() => {
      this.next()
    }, 5000)
  }

  stopInterval() {
    if (this.interval) {
      clearInterval(this.interval)
    }
  }

  next() {
    this.showSlide((this.index + 1) % this.slideTargets.length)
  }

  showSlide(index) {
    // Hide current
    if (this.slideTargets[this.index]) {
      this.slideTargets[this.index].classList.remove('opacity-100', 'z-10')
      this.slideTargets[this.index].classList.add('opacity-0', 'z-0')
    }
    
    if (this.contentTargets[this.index]) {
      this.contentTargets[this.index].classList.remove('opacity-100', 'translate-y-0', 'pointer-events-auto')
      this.contentTargets[this.index].classList.add('opacity-0', 'translate-y-8', 'pointer-events-none')
    }

    this.index = index

    // Show new
    if (this.slideTargets[this.index]) {
      this.slideTargets[this.index].classList.remove('opacity-0', 'z-0')
      this.slideTargets[this.index].classList.add('opacity-100', 'z-10')
    }

    if (this.contentTargets[this.index]) {
      this.contentTargets[this.index].classList.remove('opacity-0', 'translate-y-8', 'pointer-events-none')
      this.contentTargets[this.index].classList.add('opacity-100', 'translate-y-0', 'pointer-events-auto')
    }
  }
}
