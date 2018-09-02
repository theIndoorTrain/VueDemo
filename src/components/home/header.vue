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
          <form>
                <div class="form-group">
                    <label for="username">用户昵称:</label>
                    <input type="text" class="form-control" id="username" v-model="user.username">
                </div>
                <div class="form-group">
                    <label for="signature">个性签名:</label>
                    <input type="text" class="form-control" id="signature" v-model="user.signature">
                </div>
                <div class="form-group">
                    <label for="sex">性别:</label>
                    <label class="radio-inline"><input type="radio" name="optradio" value="1" v-model="user.sex">男</label>
                    <label class="radio-inline"><input type="radio" name="optradio" value="0" v-model="user.sex">女</label>
                </div>
                <button type="submit" class="btn btn-primary" @click="update">提交修改</button>
            </form>
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
        methods: {
            update() {
                var that = this
                this.$axios.post('/api/user/update',this.user)
                .then(function (response) {

                    console.log(response);
                })
                .catch(function (error) {
                    console.log(error);
                })
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