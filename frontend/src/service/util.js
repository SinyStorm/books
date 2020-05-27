import axios from 'axios'
import router from '../router';
import store from '../store'

const API_PREFIX = '';

const API = axios.create({
   baseURL: API_PREFIX + `/api`,
   headers: {
      'Access-Control-Allow-Origin': ['http://localhost:8080', 'http://localhost:8081', 'https://tdduna.ru'],
      'Access-Control-Allow-Methods': 'GET,POST,DELETE,PUT,OPTIONS',
      'Access-Control-Allow-Headers': '*',
      'Access-Control-Allow-Credentials': true
   }
});

API.interceptors.response.use(
   (response) => { return response },
   (error) => {
      if (error.response.status !== 401) {
         return new Promise((resolve, reject) => {
            reject(error);
         });
      }

      return store.dispatch('clearAuth').then(() => router.push({path: '/login'}))
   });

export default API