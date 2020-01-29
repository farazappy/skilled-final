<template>
    <v-navigation-drawer
        id="app-drawer"
        v-model="inputValue"
        app
        dark
        floating
        persistent
        mobile-break-point="991"
        width="260"
    >
        <v-img
            :src="image"
            height="100%"
        >
            <v-layout
                class="fill-height"
                tag="v-list"
                column
            >
                <v-list dense>
                    <v-list-tile
                        avatar
                        to="/"
                    >
                        <v-list-tile-avatar
                            color="white"
                            size="60"
                        >
                            <v-img :src="logo" />
                        </v-list-tile-avatar>
                        <v-list-tile-content>
                            <v-list-item-title class="title">
                                Hey, {{ user.name }}
                            </v-list-item-title>
                            <v-list-item-subtitle>
                                {{ user.role.name }}
                            </v-list-item-subtitle>
                        </v-list-tile-content>
                    </v-list-tile>
                </v-list>
                <v-divider />
                <v-list dense>
                    <v-list-tile
                        v-for="(link, i) in links"
                        :key="i"
                        :to="link.to"
                        :active-class="color"
                        avatar
                        class="v-list-item"
                        v-if="link.showIf === user.role.slug || link.showIf === 'all'"
                    >
                        <v-list-tile-action>
                            <v-icon>{{ link.icon }}</v-icon>
                        </v-list-tile-action>
                        <v-list-tile-title v-text="link.text" />
                    </v-list-tile>
                    <v-list-tile
                        avatar
                        :active-class="color"
                        class="v-list-item"
                        @click.native="logout"
                    >
                        <v-list-tile-action>
                            <v-icon>mdi-logout</v-icon>
                        </v-list-tile-action>
                        <v-list-tile-title>Logout</v-list-tile-title>
                    </v-list-tile>
                </v-list>
            </v-layout>
        </v-img>
    </v-navigation-drawer>
</template>

<script>
// Utilities
import { mapActions, mapGetters } from 'vuex'

export default {
    data () {
        return {
            logo: '/user.png',
            links: [
                {
                    to: '/dashboard',
                    icon: 'mdi-view-dashboard',
                    text: 'Dashboard',
                    showIf: 'all'
                },
                {
                    to: '/my-profile',
                    icon: 'mdi-account',
                    text: 'My Profile',
                    showIf: 'all'
                },
                {
                    to: '/students/exam',
                    icon: 'post_add',
                    text: 'Exam',
                    showIf: 'student'
                },
                {
                    to: '/search/jobs',
                    icon: 'search',
                    text: 'Search for Jobs',
                    showIf: 'student'
                },
                {
                    to: '/company/my-tests',
                    icon: 'assignment',
                    text: "My Tests",
                    showIf: 'company'
                },
                {
                    to: '/company/hire',
                    icon: 'person_add',
                    text: 'Hire',
                    showIf: 'company'
                }
            ],
            responsive: true
        }
    },
    computed: {
        ...mapGetters({
            image: 'app/getImage',
            color: 'app/getColor',
            drawer: 'app/getDrawer'
        }),


        inputValue: {
            get () {
                return this.drawer
            },
            set (val) {
                this.setDrawer(val)
            }
        }
    },
    mounted () {
        this.onResponsiveInverted()
        window.addEventListener('resize', this.onResponsiveInverted)
    },
    beforeDestroy () {
        window.removeEventListener('resize', this.onResponsiveInverted)
    },
    methods: {
        ...mapActions({
            setDrawer: 'app/setDrawer'
        }),

        onResponsiveInverted () {
            this.responsive = window.innerWidth < 991;
        },

        logout () {
            this.$auth.logout()
            this.$store.dispatch('notification/setNotification', {
                type: "Success!",
                color: "success",
                message: "You have been logged out successfully!"
            })
        }
    }
}
</script>

<style lang="scss">
#app-drawer {
    &.v-navigation-drawer .v-list {
        background: rgba(27, 27, 27, 0.4);
        padding: 0;
    }

    .v-divider {
        margin: 0;
    }

    .v-list__tile {
        border-radius: 4px;

        &--buy {
            margin-top: auto;
            margin-bottom: 17px;
        }

        &__title {
            color: #ffffff;
        }
    }

    .v-image__image--contain {
        top: 9px;
        height: 60%;
    }

    .search-input {
        margin-bottom: 30px !important;
        padding-left: 15px;
        padding-right: 15px;
    }
}
</style>
