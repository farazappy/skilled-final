<template>
    <v-snackbar
        :color="color"
        v-model="show"
        top="top"
        left="left"
        dark
    >
        <v-icon
            color="white"
            class="mr-3"
        >
            mdi-bell-plus
        </v-icon>
        <div><b>{{ type }}</b> - {{ message }}</div>
        <v-icon
            size="16"
            @click="show = false"
        >
            mdi-close-circle
        </v-icon>
    </v-snackbar>
</template>

<script>
export default {
    data () {
        return {
            show: false,
            message: '',
            type: '',
            color: 'success',
        }
    },
    created: function () {
        this.$store.watch(state => state.notification.notification, () => {
            const msg = this.$store.state.notification.notification.message
            if (msg !== '') {
                this.show = true
                console.log(this.show)
                this.message = this.$store.state.notification.notification.message
                this.type = this.$store.state.notification.notification.type
                this.color = this.$store.state.notification.notification.color
                this.$store.dispatch('notification/clearNotification')
            }
        })
    }
}
</script>