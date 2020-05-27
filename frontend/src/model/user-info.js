import {Manager} from './index';

export default class UserInfo {
   constructor() {
      this.login = null;
      this.password = null;
      this.name = '';
      this.address = '';
      this.inn = '';
      this.kpp = '';
      this.ogrn = '';
      this.okpo = '';
      this.bank = '';
      this.bik = '';
      this.bankAddress = '';
      this.checkingAccount = '';
      this.correspondentAccount = '';
      this.phone = '';
      this.email = '';
      this.manager = new Manager()
   }
}