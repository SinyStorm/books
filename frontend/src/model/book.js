import assignIn from 'lodash/assignIn'

export default class Book {
   constructor() {
      this.author = '';
      this.name = '';
      this.grade = 0;
      this.price = 0;
      this.count = 0;
   }

   build(obj) {
      assignIn(this, obj);
      this.author = this.author || '';
      return this
   }
}