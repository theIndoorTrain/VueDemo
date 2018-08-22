<template>
<div class="bg-light">
    <div class="container ">
<nav class="navbar navbar-expand-xl  navbar-light">

    <a class="navbar-brand" href="#">   
        <img alt="Brand" src="@/assets/logo.png" height="100px">
    </a>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <!-- Brand/logo -->
    
    <div class="collapse navbar-collapse" id="collapsibleNavbar">    
        <!-- Links -->
        <ul class="navbar-nav font-weight-light">
            <li class="nav-item">
                <router-link to="/" class="nav-link"><span >首页</span></router-link>
            </li>
            <li class="nav-item">
                <router-link to="/hall" class="nav-link"><span >时光大厅</span></router-link>
            <li class="nav-item">
                <router-link to="/us" class="nav-link"><span >加入我们</span></router-link>
            </li>
            <li v-if="!isLogin">
                 <Login @login="login"/>
            </li>
        </ul>

        <div class="dropdown" v-if="isLogin">
             <a class="navbar-brand pull-right dropdown-toggle" href="#" data-toggle="dropdown"  >   
                <img alt="Brand" :src="url" width="60px" height="60px">
            </a>
            <div class="dropdown-menu">
                <router-link to="/" class="dropdown-item">个人中心</router-link>
                <a class="dropdown-item" @click.prevent="logout">注销</a>
            </div>
        </div>

       

    </div>

        
    </nav> 

    </div>
    </div>


</template>

<script>
import Login from '@/components/login'
export default {
  name: "headers",
  data() {
      return {
        isLogin: false,
        url:''
      }
  },
  methods: {
      login(username) {
        var that = this
        this.$axios.get('/api/icon/'+username)
        .then(function (response) {
            that.url = response.data
            that.isLogin = true
            console.log(response);
        })
        .catch(function (error) {
            console.log(error);
        })
      },
      logout() {
        var that = this
        this.$axios.get('/api/logout')
        .then(function (response) {
            that.isLogin = false
            console.log(response);
        })
        .catch(function (error) {
            console.log(error);
        })
      }
  },
  components:{
      Login
  }
};
</script>

<style scoped>

a{
    font-size: 30px;
}

ul button{
    float: right;
}

</style>