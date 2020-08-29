import Vue from 'vue'
import App from './App.vue'
import vuetify from './plugins/vuetify';
import router from './router'
import VueAxios from 'vue-axios'
import {plainAxiosInstance} from './backend/axios'
Vue.config.productionTip = false

Vue.use(VueAxios, {
  plain: plainAxiosInstance
})

new Vue({
  vuetify,
  router,
  plainAxiosInstance,
  render: h => h(App)
}).$mount('#app')
