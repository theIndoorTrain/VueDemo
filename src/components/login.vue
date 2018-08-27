<template>
    <div>
        <a class="nav-link text-info" data-toggle="modal" data-target="#myModal">登录</a>
   
  <!-- 模态框 -->
  <div class="modal fade" id="myModal">
    <div class="modal-dialog">
      <div class="modal-content">
   
        <!-- 模态框头部 -->
        <div class="modal-header">
          <h4 class="modal-title">登录</h4>
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        </div>
   
        <!-- 模态框主体 -->
        <div class="modal-body">
            <form>
            <div class="form-group">
            <label for="usr">用户名:</label>
            <input type="text" class="form-control" id="usr" v-model="username">
            </div>
            <div class="form-group">
            <label for="pwd">密码:</label>
            <input type="password" class="form-control" id="pwd" v-model="password">
            </div>
            <div class="from-group">
              <button type="button" class="btn btn-info" @click="login" data-dismiss="modal">登录</button> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <button type="button" class="btn btn-info" @click="sighIn" data-dismiss="modal">注册</button>
            </div>
  </form>
        </div>
   
        <!-- 模态框底部 -->
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
        </div>
   
      </div>
    </div>
  </div>
  
</div>
</template>

<script>
    export default {
        name:'login',
        data() {
          return {
            username: '',
            password: '',
            isLogin: false
          }
        },
        methods: {
          login() {
            var user = {
              email : this.username,
              password : this.password
            }
            var that = this
            this.$axios.post('/api/user/login',user)
            .then(response=>{
              if(response.data!=null) {
                that.$emit('login',response.data)
              }

            })
            .catch(error=> {
              console.log(error);
            })
          },
          sighIn() {
            this.$router.push('sighIn')
          }
        },
        
    }
</script>

<style scoped>

a{
    font-size: 30px;
}

</style>