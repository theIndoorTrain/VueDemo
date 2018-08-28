<template>
    <div class="bg">
        
        <div class="container">
            <Header :user="user"/>
            <Main />
        </div>
    </div>
</template>

<script>
    import Header from '@/components/home/header';
    import Main from '@/components/home/main';
    export default {
        name:'home',
        data() {
            return {
                user: this.$route.params.user
            }
        },
        components:{
            Header,
            Main

        }
        
    }
</script>

<style scoped>

.bg {
    background-image: url("../assets/bg.jpg");
    background-repeat: no-repeat;
    background-size: 100% 100%;
    background-attachment:fixed;
    
}

</style>