<template>
    <div id="accordion">
    <div class="card">
      <div class="card-header">
        <a class="card-link" data-toggle="collapse" href="#collapseOne">
          关于我们
        </a>
      </div>
      <div id="collapseOne" class="collapse show" data-parent="#accordion">
        <div class="card-body">
          #1 内容：菜鸟教程 -- 学的不仅是技术，更是梦想！！！
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link" data-toggle="collapse" href="#collapseTwo">
        招聘信息
      </a>
      </div>
      <div id="collapseTwo" class="collapse" data-parent="#accordion">
        <div class="card-body">
          #2 内容：菜鸟教程 -- 学的不仅是技术，更是梦想！！！
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-header">
        <a class="collapsed card-link" data-toggle="collapse" href="#collapseThree">
          加入我们
        </a>
      </div>
      <div id="collapseThree" class="collapse" data-parent="#accordion">
        <div class="card-body">
          #3 内容：菜鸟教程 -- 学的不仅是技术，更是梦想！！！
        </div>
      </div>
    </div>
  </div>
</template>

<script>
    export default {
        name:'us'
    }
</script>

<style scoped>

</style>