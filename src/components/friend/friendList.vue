<template>
    <div class="container" height="500px">
  <div id="accordion1">
    <div class="card" v-for="group of groups" key="group.id">
      <div class="card-header">
        <a class="card-link" data-toggle="collapse" :href="'#a'+group.id">
          {{group.gname}}
        </a>
      </div>
      <div :id="'a'+group.id" class="collapse show" data-parent="#accordion1">
          <ul class="list-group" v-for="friend of group.friends" key="friend.user.id">
            <li class="list-group-item">
                <div class="card-body">
                    <img :src="'http://127.0.0.1:8088/'+friend.user.icon" width="55px" height="55px" >
                    {{friend.user.username}}
                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal1" @click="todelete(friend)">
                        删除
                    </button>

                    <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal2">
                        修改
                    </button>
                    
                    
                </div>
            </li>
        </ul>
      </div>
    </div>

    <!-- 模态框 -->
    <div class="modal fade" id="myModal1" v-if="status">
        <div class="modal-dialog">
        <div class="modal-content">
    
            <!-- 模态框头部 -->
            <div class="modal-header">
            <h4 class="modal-title">删除好友</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
    
            <!-- 模态框主体 -->
            <div class="modal-body">
            你确定要删除{{theFriend.user.username}}吗？
            </div>
    
            <!-- 模态框底部 -->
            <div class="modal-footer">
            <button type="button" class="btn btn-primary" @click="godelete">确认</button>
            <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
            </div>
    
        </div>
        </div>
    </div>


    <!-- 模态框 -->
    <div class="modal fade" id="myModal2">
        <div class="modal-dialog">
        <div class="modal-content">
    
            <!-- 模态框头部 -->
            <div class="modal-header">
            <h4 class="modal-title">修改好友</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
    
            <!-- 模态框主体 -->
            <div class="modal-body">
            你确定要删吗？
            </div>
    
            <!-- 模态框底部 -->
            <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">取消</button>
            </div>
    
        </div>
        </div>
    </div>
    
  </div>
</div>
</template>

<script>
    export default {
        name:'friendList',
        data() {
            return {
                groups: null,
                theFriend: null,
                status:false
            }
        },
        methods: {
            getCookie(cname){
                var name = cname + "=";
                var ca = document.cookie.split(';');
                for(var i=0; i<ca.length; i++) 
                {
                    var c = ca[i].trim();
                    if (c.indexOf(name)==0) return c.substring(name.length,c.length);
                }
                return "";
            },
            todelete(friend) {
                this.theFriend = friend
                this.status = true
                console.log(friend)
            },
            godelete() {
                var that = this
                this.$axios.delete('/api/friend/delete/'+this.theFriend.id)
                .then(function (response) {
                    console.log(response.data);
                })
                .catch(function (error) {
                    console.log(error);
                })
            }
        },
        created() {
            if(this.getCookie("id")!=null) {
                var that = this
                this.$axios.get('/api/groups/'+this.getCookie('id'))
                .then(function (response) {
                    that.groups = response.data
                    console.log(response.data);
                })
                .catch(function (error) {
                    console.log(error);
                })
            }
        }
    }
</script>

<style scoped>

img{
    margin-right: 20px;
}

</style>