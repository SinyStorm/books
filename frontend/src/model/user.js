import {Manager, UserInfo} from './index';
import assignIn from 'lodash/assignIn'

export default class User {
   constructor() {
      this.login = null;
      this.password = null;
      this.role = null;
      this.accessToken = null;
      this.userInfo = new UserInfo();
   }

   build(obj) {
      assignIn(this, obj);
      if (this.userInfo) {
         this.userInfo.__proto__ = UserInfo.prototype;
         if (this.userInfo.manager) {
            this.userInfo.manager.__proto__ = Manager.prototype
         }
      }
      return this
   }
}