<template>
    <div class="row">
        <div class="col-sm-3" v-show="status"><List/></div>
        <div class="col-sm-9"><router-view @list="showList"/></div>
    </div>
</template>

<script>
import List from '@/components/home/list';
    export default {
        name:'main',
        data() {
            return {
                status: true
            }
        },
        methods: {
            showList(status) {
                this.status = status
            }
        },
        components:{
            List
        }
        
    }
</script>

<style scoped>

</style>