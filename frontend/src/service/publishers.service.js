import API from './util';

const API_URL = '/publisher';

class PublishersService {

   listAll() {
      return API.get(`${API_URL}/list`)
         .then(response => response.data, error => error.response);
   }
}

export default new PublishersService();