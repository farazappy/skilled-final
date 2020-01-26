<template>

</template>

<script>
export default {
    mounted () {
        this.$router.push({
            path: `/dashboard/${this.user.role.slug}` // @todo redirect intended
        })
    }
}
</script>

<style>

</style>