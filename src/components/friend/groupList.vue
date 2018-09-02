<template>
    <div>
        <ul class="list-group" v-for="group in groups" key="group.id"> 
            <li class="list-group-item">{{group.gname}}</li>
        </ul>
    </div>
</template>

<script>
    export default {
        name:'groupList',
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
                this.$axios.get('/api/groups/list/'+this.getCookie('id'))
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


</style>