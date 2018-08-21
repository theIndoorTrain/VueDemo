<template>
<div class="bg-light">
    <div class="container ">
<nav class="navbar navbar-expand-xl  navbar-light">
    <!-- Brand/logo -->
    <a class="navbar-brand" href="#">   
            <img alt="Brand" src="@/assets/logo.png" height="100px">
        </a>
        
        <!-- Links -->
        <ul class="navbar-nav font-weight-light">
            <li class="nav-item">
            <a class="nav-link" href="#">首页</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="#">时光大厅</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" href="#">加入我们</a>
            </li>
            <li>
                 <Login/>
            </li>
        </ul>

        
    </nav> 

    </div>
    </div>


</template>

<script>
import Login from '@/components/login'
export default {
  name: "headers",
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