import PublishersService from '../service/publishers.service'
import {Publisher} from '../model';

export default {
   namespaced: true,
   state: {
      publishers: []
   },
   actions: {
      async list({ commit, state }) {
         if (!state.publishers || state.publishers.length === 0) {
            try {
               commit('publishers', (await PublishersService.listAll()).map(item => new Publisher().build(item)))
            } catch (e) {
               console.log(e.response);
               commit('publishers', [])
            }
         }
         return state.publishers
      }
   },
   mutations: {
      publishers(state, publishers) {
         state.publishers = publishers;
      }
   }
};