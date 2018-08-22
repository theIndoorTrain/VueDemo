<template>
    <div>
        <headers/>
        <router-view/>
        <Footers/>
    </div>
</template>

<script>

    import Headers from '@/components/header'
    import Footers from '@/components/footer.vue'
    
    export default {
        name: "layout",
        data() {
            return {
                
            }
        },
        components:{
            Headers,
            Footers
        }
        
    }
</script>

<style scoped>

</style>