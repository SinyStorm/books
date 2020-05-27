import Vue from 'vue'
import VueI18n from 'vue-i18n'
import VueResource from 'vue-resource'
import ElementUI from 'element-ui';
import App from './App.vue'
import router from './router'
import store from './store'
import lang from 'element-ui/lib/locale/lang/ru-RU'
import locale from 'element-ui/lib/locale'
import 'element-ui/lib/theme-chalk/display.css';
import './assets/element-variables.scss'
import Pages from '@/pages'
import Components from '@/components'
import ElSearchTablePagination from './components/el-search-table-pagination/src'

Vue.use(VueI18n);
Vue.use(VueResource);
Vue.use(ElementUI);
Vue.use(Pages);
Vue.use(Components);
Vue.use(ElSearchTablePagination);
Vue.config.productionTip = false;

const i18n = new VueI18n({
  locale: 'ru', // set locale
  messages: {
    ru: {
      ...lang
    }
  }
});

locale.i18n((key, value) => i18n.t(key, value));

new Vue({
  router,
  store,
  i18n,
  render: h => h(App)
}).$mount('#app');
