import API from './util';

const API_URL = '/order';

class OrderService {

   find(id, user) {
      return API.get(`${API_URL}/${user}/${id}`)
         .then(response => response, error => error.response);
   }

   add(order) {
      return API
         .post(`${API_URL}/add`, order)
         .then(response => response.data, error => error.response);
   }

   update(order) {
      return API
         .post(`${API_URL}/update/${order.id}`, order)
         .then(response => response.data, error => error.response);
   }

   list(user) {
      return API.get(`${API_URL}/list/${user}`)
         .then(response => response.data, error => error.response);
   }

   form(order, user) {
      return API
         .post(`${API_URL}/form`, {id : order, user})
         .then(response => response);
   }
}

export default new OrderService();