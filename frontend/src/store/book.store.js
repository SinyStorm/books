import BookService from '../service/book.service'
import {Book} from '../model';
import cloneDeep from 'lodash/cloneDeep'
import unionBy from 'lodash/unionBy'

export default {
   namespaced: true,
   state: {
      books: {}
   },
   actions: {
      async list({ commit, state }, {publisher, filledBooks}) {
         if (!state.books[publisher] || state.books[publisher].length === 0) {
            try {
               const list = (await BookService.list(publisher)).map(item => new Book().build(item));
               commit('books', { publisher, list })
            } catch (e) {
               console.log(e.response);
               commit('books', { publisher, list: [] })
            }
         }
         return unionBy(filledBooks || [], cloneDeep(state.books[publisher]), 'id')
      }
   },
   mutations: {
      books(state, {publisher, list}) {
         state.books[publisher] = list;
      }
   }
};