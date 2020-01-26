import Vue from 'vue'
import { mapGetters } from 'vuex'

const Notification = {
    install (Vue, options) {
        Vue.mixin({
            computed: {
                ...mapGetters({
                    notification: 'notification/notification',
                })
            }
        })
    }
}

Vue.use(Notification)
