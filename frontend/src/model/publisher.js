import assignIn from 'lodash/assignIn'

export default class Publisher {
   constructor() {
      this.id = null;
      this.name = null;
      this.description = null;
      this.image = null;
      this.chosen = false;
   }

   build(obj) {
      assignIn(this, obj);
      return this
   }

   get view() {
      let view = this.name;
      if (this.description) {
         view = `${view}: ${this.description}`
      }
      return view
   }
}