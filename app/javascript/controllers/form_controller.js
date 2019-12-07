import { Controller } from 'stimulus'

export default class extends Controller {
  blur(e) {
    const input = e.currentTarget
    this.validateField(input)
    console.log(input.nextElementSibling)
  }

  validateField(input) {
    const value = input.value
    const required = $(input).prop('required')
    let valid = true

    if (value == '') {
      valid = !required
    } else {
      valid = true
    }

    if (valid) {
      this.removeFieldError(input)
    } else {
      this.showFieldErrors(input)
    }

    return valid
  }

  showFieldErrors(input) {
    input.classList.add('is-danger')
    if (input.nextElementSibling) input.nextElementSibling.classList.add('is-danger')
  }

  removeFieldError(input) {
    input.classList.remove('is-danger')
    if (input.nextElementSibling) input.nextElementSibling.classList.remove('is-danger')
  }
}