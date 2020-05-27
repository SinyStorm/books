import API from './util';

const API_URL = '/user';

class UserService {

   addUser(userInfo) {
      return API
         .post(`${API_URL}/add`, {
            login: userInfo.login,
            password: userInfo.password,
            userInfo})
         .then(response => response);
   }

   findUser(login) {
      return API.post(`${API_URL}/find?login=${login}`)
         .then(response => response.data, error => error?.response);
   }

   update(login, userInfo) {
      return API
         .post(`${API_URL}/update?login=${login}`, { ...userInfo })
         .then(response => response.data, error => error.response);
   }
}

export default new UserService();