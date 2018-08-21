<template>
    <div>
        <headers/>
        <Index/>
        <Footers/>
    </div>
</template>

<script>

    import Headers from '@/components/header'
    import Footers from '@/components/footer.vue'
    import Index from './index.vue';
    
    export default {
        name: "layout",
        data() {
            return {
                
            }
        },
        components:{
            Headers,
            Footers,
            Index
        }
        
    }
</script>

<style scoped>

</style>