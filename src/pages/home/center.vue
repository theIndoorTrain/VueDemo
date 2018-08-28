<template>
    <div>
        个人中心
    </div>
</template>

<script>
    export default {
        name:'center',
        created() {
            this.$emit('list',true)
        },
    }
</script>

<style scoped>

</style>