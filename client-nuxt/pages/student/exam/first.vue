<template>
    <h1>{{ question }}</h1>
</template>

<script>
export default {
    data() {
        return {
            question: null
        }
    },
    async asyncData({ app, params }) {
        let response = await app.$axios.$get('student/exam/first')
        return {
            question: response
        }
    }
}
</script>

<style scoped>

</style>