import Vue from 'vue'
import Router from 'vue-router'
import Layout from '@/pages/layout'
import Index from '@/pages/index'
import Hall from '@/pages/hall'
import Us from '@/pages/us'
import SighIn from '@/pages/sighIn'
import Home from '@/pages/home'
import Center from '@/pages/home/center'
import Share from '@/pages/home/share'
import Chat from '@/pages/home/chat'

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
    },
    {
      path: '/home',
      name: 'home',
      component: Home,
      children:[
        {
          path: '/:user',
          name: 'center',
          component: Center
        },
        {
          path: 'share',
          name: 'share',
          component: Share
        },
        {
          path: 'chat',
          name: 'chat',
          component: Chat
        }
      ]
    }
  ]
})
