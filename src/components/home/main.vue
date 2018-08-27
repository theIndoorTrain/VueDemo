<template>
    <div class="row">
        <div class="col-sm-3"><List/></div>
        <div class="col-sm-9"><router-view/></div>
    </div>
</template>

<script>
import List from '@/components/home/list';
    export default {
        name:'main',
        components:{
            List
        }
        
    }
</script>

<style scoped>

</style>