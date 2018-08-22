import Vue from 'vue'
import Router from 'vue-router'
import Layout from '@/pages/layout'
import Index from '@/pages/index'
import Hall from '@/pages/hall'
import Us from '@/pages/us'
import SighIn from '@/pages/sighIn'

Vue.use(Router)

export default new Router({
  routes: [
    {
      path: '/',
      name: 'layout',
      component: Layout,
      children:[
        {
          path: '/',
          name: 'index',
          component: Index
        },
        {
          path: 'hall',
          name: 'hall',
          component: Hall
        },
        {
          path: 'us',
          name: 'us',
          component: Us
        }
    ]
    },
    {
      path: '/sighIn',
      name: 'sighIn',
      component: SighIn
    }
  ]
})
