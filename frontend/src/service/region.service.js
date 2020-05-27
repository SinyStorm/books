import API from './util';

const API_URL = '/region';

class RegionService {

   list() {
      return API.get(`${API_URL}/list`)
         .then(response => response.data, error => error.response);
   }
}

export default new RegionService();