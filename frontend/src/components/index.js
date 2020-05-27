import UserInfo from './UserInfo';
import BookTable from './BookTable';

function install(Vue) {
   Vue.component('user-info', UserInfo);
   Vue.component('book-table', BookTable);
}

export default install