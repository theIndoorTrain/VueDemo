<template>
    <div id="accordion">
    <div class="card">
      <div class="card-header">
        <a class="card-link" data-toggle="collapse" href="#collapseOne">
          选项一
        </a>
      </div>
      
      <div id="collapseOne" class="collapse show" data-parent="#accordion">
       
        <div class="card-body" >
            <router-link to="/home/chat">
            <img src="@/assets/logo.png" width="45px" height="45px">
            零度微笑
            </router-link>
            <hr>
        </div>
        
        
       
      </div>
    </div>
  </div>
</template>

<script>
    export default {
        name:'list'
    }
</script>

<style scoped>

.card-body{
    padding:0px 20px 5px 20px;
}

</style>