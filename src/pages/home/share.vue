<template>
    <div>
        时光分享
    </div>
</template>

<script>
    export default {
        name:'share',
        created() {
            this.$emit('list',true)
        },
    }
</script>

<style scoped>

</style>