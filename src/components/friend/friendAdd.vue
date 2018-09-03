<template>
    <div class="container">
        <ul class="nav  justify-content-end">
            <li class="nav-item">
                <input type="email" class="form-control" id="email" placeholder="Enter email" v-model="msg">
            </li>
            <li class="nav-item">
                <button type="submit" class="btn btn-primary" @click="sort">查找好友</button>
            </li>
        </ul>
        <hr>
        <div class="card" style="width:400px" v-if="status">
            <div class="card-body">
            <h4 class="card-title">{{user.username}}</h4>
            <p class="card-text">{{signature}}</p>
            <a href="#" class="btn btn-primary" v-if="!isFriend" @click="add">添加好友</a>
            <a href="#" class="btn btn-primary" v-if="isFriend">已是好友</a>
            </div>
            <img class="card-img-bottom" :src="url" alt="Card image" style="width:100%">
        </div>
    </div>
</template>

<script>
    export default {
        name:'friendAdd',
        data() {
            return {
                msg: '',
                status:false,
                url:'',
                urlstr:'http://127.0.0.1:8088/',
                user:null,
                isFriend:false
            }
        },
        methods: {
            sort() {
                var that = this
                var user = {
                    email:this.msg,
                    id:this.getCookie("id")
                }
                this.$axios.post('/api/friend/user',user)
                .then(function (response) {
                    console.log(that.msg)
                    that.user = response.data.user
                    that.url = that.urlstr+that.user.icon
                    that.status = true
                    if(response.data.id!=null|| that.getCookie("id")==that.user.id){
                        that.isFriend = true
                    }
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
    }
</script>

<style scoped>

</style>