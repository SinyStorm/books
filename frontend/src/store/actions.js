import OrderService from '../service/order.service'
import {Order} from '../model';

export default {
   async confirmOrder({state}, order) {
      order.books = order.books.filter(item => item.count > 0).map(item => { return {id: item.id, count: item.count }});
      order.user = state.user;
      return order.id
         ? OrderService.update(order)
         : OrderService.add(order)
   },
   async listOrders({state, commit}) {
      commit('orders', ( await OrderService.list(state.user.id)).map(item => new Order().build(item)))
   },
   async findOrder({state}, id) {
      const response = await OrderService.find(id, state.user.id);
      if (response.status === 200) {
         return new Order().build(response.data)
      }
      return null;
   },
   async formOrder({state, commit}, id) {
      await OrderService.form(id, state.user);
      commit("setFormed", id)
   },
   clearAuth({commit}) {
      commit('user', null)
   }
}