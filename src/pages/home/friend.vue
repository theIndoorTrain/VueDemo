<template>
    <div>
        <ul class="nav nav-tabs" role="tablist">
            <li class="nav-item">
            <a class="nav-link active" data-toggle="tab" href="#home">好友列表</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#menu1">添加好友</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#menu2">分组列表</a>
            </li>
            <li class="nav-item">
            <a class="nav-link" data-toggle="tab" href="#menu3">添加分组</a>
            </li>
        </ul>

    <!-- Tab panes -->
        <div class="tab-content">
            <div id="home" class="container tab-pane active"><br>
                <FriendList/>
            </div>
            <div id="menu1" class="container tab-pane fade"><br>
                <FriendAdd/>
            
            </div>
            <div id="menu2" class="container tab-pane fade"><br>
                <GroupList/>
            </div>
            <div id="menu3" class="container tab-pane fade"><br>
                <GroupAdd/>
            </div>
        </div>
    </div>
</template>

<script>
    import FriendList from '@/components/friend/friendList'
    import FriendAdd from '@/components/friend/friendAdd'
    import GroupList from '@/components/friend/groupList'
    import GroupAdd from '@/components/friend/groupAdd'
    export default {
        name:'friend',
        created() {
            this.$emit('list',false)
        },
        components:{
            FriendList,
            FriendAdd,
            GroupList,
            GroupAdd
        }

    }
</script>

<style scoped>

</style>