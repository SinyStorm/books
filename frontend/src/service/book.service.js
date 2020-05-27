import API from './util';

const API_URL = '/book';

class BookService {

   list(publisher) {
      return API.get(`${API_URL}/${publisher}`)
         .then(response => response.data, error => error.response);
   }
}

export default new BookService();