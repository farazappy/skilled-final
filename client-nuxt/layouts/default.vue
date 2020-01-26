<template>
    <v-app v-show="!isLoading">
        <core-notification />
        <v-fade-transition mode="out-in">
            <nuxt />
        </v-fade-transition>
    </v-app>
</template>

<script>
import coreNotification from '~/components/core/AppNotification';

export default {
    components: {
        coreNotification
    },
    data () {
        return {
            isLoading: true,
            lhs: true
        }
    },
    mounted () {
        this.$nextTick(function () {
            this.isLoading = false
        });
    }
}
</script>
