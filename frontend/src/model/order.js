import User from './user';
import Book from './book';
import assignIn from 'lodash/assignIn'
import Publisher from './publisher';

export default class Order {
   constructor() {
      this.id = null;
      this._date = new Date();
      this.publisher = null;
      this.formed = false;
      this.user = null;
      this.books = []
   }

   get date() {
      return this._date || new Date()
   }

   set date(val) {
      const parsed = new Date(val);
      this._date = parsed.getTime() ? parsed : new Date()
   }

   build(obj) {
      assignIn(this, obj);
      if (obj.user instanceof Object) {
         this.user = new User().build(obj.user)
      }
      if (obj.publisher instanceof Object) {
         this.publisher = new Publisher().build(obj.publisher)
      }
      if (Array.isArray(obj.books)) {
         this.books = obj.books.map(item => new Book().build(item))
      }
      return this
   }
}
