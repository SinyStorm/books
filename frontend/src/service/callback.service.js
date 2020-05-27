import API from './util';

const API_URL = '/callback';

class CallbackService {
   sendCallbackRequest(info) {
      return API
         .post(`${API_URL}/send`, info)
         .then(response => response);
   }
}

export default new CallbackService();