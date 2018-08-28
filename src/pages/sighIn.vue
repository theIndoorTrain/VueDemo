<template>
    <div>
        <div class="container">

            <h2>注册</h2>
            <form>
                <div class="form-group">
                <label for="email">邮箱:</label>
                <input type="email" class="form-control" id="email" placeholder="Enter email" v-model="email">
                </div>
                <div class="form-group">
                <label for="email">昵称:</label>
                <input type="text" class="form-control" id="username" placeholder="Enter email" v-model="username">
                </div>
                <div class="form-group">
                <label for="pwd">密码:</label>
                <input type="password" class="form-control" id="password" placeholder="Enter password" v-model="password">
                </div>
                 <div class="form-group">
                <label for="pwd">确认密码:</label>
                <input type="password" class="form-control" id="uppassword" placeholder="Enter password" v-model="unpassword">
                </div>
                <div class="alert alert-danger" v-show="isError">
                    <strong>错误!</strong> {{msg}}
                </div>
                <button  class="btn btn-primary" @click="sighIn">提交</button>
            </form>

        </div>
    </div>
</template>

<script>
    export default {
        name: "sighIn",
        data() {
            return {
                email: '',
                username: '',
                password: '',
                unpassword: '',
                msg:'',
                isError:false
            }
        },
        methods: {
            sighIn() {
                console.log('开始sighin')
                if(this.cheack()) {
                    var user= {
                        username: this.username,
                        password: this.password,
                        email: this.email
                    }
                    var that = this
                    this.$axios.post('/api/user/sighIn',user)
                        .then(response=>{
                        if(response.data!=null) {
                            that.$router.push({name:"home",params:{user:response.data}})
                        }

                        })
                        .catch(error=> {
                        console.log(error);
                        })
                }
            },
            cheack() {
                console.log('cheack')
                if(this.password!=this.unpassword) {
                    this.msg='密码不一致！！！'
                    this.isError = true
                    return false;
                } else{
                    return true
                }
            }
        },
    }
</script>

<style scoped>

.container{
    padding: 30px 60px;
    margin-top: 30px;
    border:2px solid;
    border-radius:25px; 
    
}

</style>