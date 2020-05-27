import RegionService from '../service/region.service'

export default {
   namespaced: true,
   state: {
      regions: []
   },
   actions: {
      async list({ commit, state }) {
         if (!state.regions || state.regions.length === 0) {
            try {
               const list = (await RegionService.list()).map(item => { return { value: item.id, label: item.name } });
               commit('regions', list)
            } catch (e) {
               console.log(e.response);
               commit('regions', [])
            }
         }
         return state.regions
      }
   },
   mutations: {
      regions(state, list) {
         state.regions = list;
      }
   }
};