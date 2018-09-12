// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import router from './router'
import axios from 'axios'
import Mint from 'mint-ui'
import App from './App'
Vue.config.productionTip = false
//import 'mint-ui/lib/style.css' 优化到html
import Qs from 'qs'
//import $ from 'jquery'
//import popper from 'popper.js' //优化到了index.html
//import bootstrap from 'bootstrap'
//import 'bootstrap/dist/css/bootstrap.min.css'
import { Indicator } from 'mint-ui'
import {store} from './store/store'



//拦截器
axios.interceptors.request.use(function(config) { //配置发送请求的信息
    Indicator.open();//lodin
    
    config.data = Qs.stringify(config.data);

    return config;
}, function(error) {
    return Promise.reject(error);
});

axios.interceptors.response.use(function(response) { //配置请求回来的信息
    Indicator.close();
    return response;
}, function(error) {
    return Promise.reject(error);
});


//axios.defaults.baseURL = 'http://localhost:3333/';
axios.defaults.baseURL = 'http://193.112.12.42:3333/';
//axios.defaults.headers['Content-Type'] = 'application/json';

axios.defaults.headers['Content-Type'] = 'application/x-www-form-urlencoded';
//axios.defaults.baseURL = (process.env.NODE_ENV !=='production' ? config.dev.httpUrl:config.build.httpUrl);
//axios.defaults.headers.post['Content-Type'] = 'application/x-www-form-urlencoded';

Vue.prototype.$http = axios;


Vue.use(Mint);


/* eslint-disable no-new */
new Vue({
  el: '#app',
  store:store,
  router,
  components: { App },
  template: '<App/>'
})
