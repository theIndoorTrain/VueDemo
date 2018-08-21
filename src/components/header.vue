<template>
    <div class="container">
<nav class="navbar navbar-expand-xl bg-light navbar-light">
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
                <a class="nav-link text-info" href="#">登录</a> 
            </li>
        </ul>

        
    </nav> 

    </div>


</template>

<script>
export default {
  name: "headers"
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