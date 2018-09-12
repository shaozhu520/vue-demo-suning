import Vue from 'vue'
import Router from 'vue-router'
import HelloWorld from '@/components/HelloWorld'
import Home from '@/components/Home'
import Classify from '@/components/Classify'
import RobList from '@/components/RobList'
import Cart from '@/components/Cart'
import User from '@/components/User'
import Login from '@/components/Login'
import Reg from '@/components/Reg'
import PageTransition from '@/components/PageTransition'


Vue.use(Router)

Router.prototype.goBack = function () {
  this.isBack = true
  window.history.go(-1)
}

/*{
      path: '/',
      name: 'Home',
      component: Home
    },*/

export default new Router({
  //mode: 'history',
  routes: [
      {
      path: '/',
      name: 'PageTransition',
      component: PageTransition,
      children: [
      {
        path: '',
        component: Home
      }, 
      {
        path: '/Home',
        name: 'Home',
        component: Home
      },
      {
        path: '/Classify',
        name: 'Classify',
        component: Classify
      },
      {
        path: '/Classify/:id',
        name: 'Classify',
        component: Classify
      },
      {
        path: '/RobList',
        name: 'RobList',
        component: RobList
      },
      {
        path: '/Cart',
        name: 'Cart',
        component: Cart
      },
      {
        path: '/User',
        name: 'User',
        component: User
      },
      {
        path: '/Login',
        name: 'Login',
        component: Login
      },
      {
        path: '/Reg',
        name: 'Reg',
        component: Reg
      }
    ]
  }
  ]

})
