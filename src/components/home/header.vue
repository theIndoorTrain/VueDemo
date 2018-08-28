<template>
    <nav class="navbar navbar-expand-xl  navbar-light">

    <a class="navbar-brand btn" href="#" data-toggle="modal" data-target="#myModal">   
        <img alt="Brand" :src="url" height="200px" width="200px">
    </a>

    <div class="modal fade" id="myModal">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
   
        <!-- 模态框头部 -->
        <div class="modal-header">
          <h4 class="modal-title">个人信息</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
   
        <!-- 模态框主体 -->
        <div class="modal-body">
          模态框内容..
        </div>
   
        <!-- 模态框底部 -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
        </div>
   
      </div>
    </div>
  </div>

    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
        <span class="navbar-toggler-icon"></span>
    </button>
    <!-- Brand/logo -->
    
    <div class="collapse navbar-collapse" id="collapsibleNavbar">    
        <!-- Links -->
        <ul class="navbar-nav font-weight-light">
            <li class="nav-item">
                <router-link to="/home" class="nav-link"><span >个人中心</span></router-link>
            </li>
            <li class="nav-item">
                <router-link to="/home/share" class="nav-link"><span >时光分享</span></router-link>
            </li>
            <li class="nav-item">
                <router-link to="/home/friend" class="nav-link"><span >好友管理</span></router-link>
            </li>
            <li class="nav-item">
                <router-link to="/" class="nav-link"><span >返回大厅</span></router-link>
            </li>
        </ul>

       

    </div>

        
    </nav>
</template>

<script>
    export default {
        name:'header',
        data() {
            return {
                url: 'http://127.0.0.1:8088/'+this.user.icon
            }
        },
        props: {
            user: {
                type: Object,
                default: null
            },
        },
        
    }
</script>

<style scoped>

nav{
    padding: 50px 0px;
}

img{
    border: 2px solid;
    margin-right: 200px;
}

</style>