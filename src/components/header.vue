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
                <router-link :to="{name:'home',params:{user:user}}"  class="dropdown-item">个人中心</router-link>
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
        urlstr: 'http://127.0.0.1:8088/',
        url:'',
        isLogin: false,
        user:null,
        cookies:null
      }
  },
  methods: {
      login(user) {
          this.user = user
          this.url = this.urlstr+user.icon
          this.isLogin = true
          document.cookie = "id="+this.user.id
          console.log(document.cookie)
      },
      logout() {
        var that = this
        this.$axios.get('/api/user/logout/')
        .then(function (response) {
            that.user = null
            that.isLogin = false
            document.cookie = "id=; expires=Thu, 01 Jan 1970 00:00:00 GMT"
            console.log(response);
        })
        .catch(function (error) {
            console.log(error);
        })
      },
      getCookie(cname){
        var name = cname + "=";
        var ca = document.cookie.split(';');
        for(var i=0; i<ca.length; i++) 
        {
            var c = ca[i].trim();
            if (c.indexOf(name)==0) return c.substring(name.length,c.length);
        }
        return "";
      }
  },
  components:{
      Login
  },
  created(){
      if(this.getCookie('id')!=null) {
        var that = this
        this.$axios.get('/api/user/'+this.getCookie('id'))
        .then(function (response) {
            that.user = response.data
            that.url = that.urlstr+that.user.icon
            that.isLogin = true
            console.log(response);
        })
        .catch(function (error) {
            console.log(error);
        })
          
      } else {
          console.log("cookie no")
      }
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