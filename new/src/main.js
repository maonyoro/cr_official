// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import BootstrapVue from 'bootstrap-vue'
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'
import 'vue-awesome/icons'
import Icon from 'vue-awesome/components/Icon'
import VueLightbox from 'vue-lightbox'
import Slick from 'vue-slick'
import App from './App'

Vue.use(BootstrapVue)
Vue.component('icon', Icon)
Vue.component('Lightbox', VueLightbox)
Vue.component('Slick', Slick)

Vue.config.productionTip = false

/* eslint-disable no-new */
new Vue({
  el: '#app',
  template: '<App/>',
  components: { App, Slick }
})
