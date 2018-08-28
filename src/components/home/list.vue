<template>
    <div id="accordion">
    <div class="card" v-for="group of groups" key="group.id">
      <div class="card-header">
        <a class="card-link" data-toggle="collapse" :href="'#'+group.id">
          {{group.gname}}
        </a>
      </div>
      
      <div :id="group.id" class="collapse show" data-parent="#accordion">
       
        <div class="card-body" v-for="friend of group.friends" key="friend.user.id">
            <router-link to="/home/chat">
            <img :src="'http://127.0.0.1:8088/'+friend.user.icon" width="45px" height="45px">
            {{friend.user.username}}
            </router-link>
            <hr>
        </div>
        
        
       
      </div>
    </div>
  </div>
</template>

<script>
    export default {
        name:'list',
        data() {
            return {
                groups: null
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

.card-body{
    padding:3px 20px 3px 20px;
}

</style>