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
            <input type="text" class="form-control" id="usr">
            </div>
            <div class="form-group">
            <label for="pwd">密码:</label>
            <input type="password" class="form-control" id="pwd">
            </div>
            <div class="from-group pull-center">
                <input type="submit" class="btn btn-info" value="登录">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" class="btn btn-info" value="注册"> 
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
        name:'login'
        
    }
</script>

<style scoped>

a{
    font-size: 30px;
}

</style>