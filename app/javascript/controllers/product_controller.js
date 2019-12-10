import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ['price', 'quantity', 'total']

  sum() {
    let total = 0
    let quantities = this.quantityTargets
    this.priceTargets.forEach(function (td_price, index) {
      let price = parseFloat(td_price.innerText)
      let quantity = parseFloat(quantities[index].value)
      total += price * quantity
    })
    this.totalTarget.textContent = total
  }
}