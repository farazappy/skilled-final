<template>
    <v-container
        fill-height
        fluid
        grid-list-xl
    >
        <v-layout
            justify-center
            wrap
        >
            <v-flex md12>
                <v-card
                    color="#385F73"
                    class="mb-3"
                    raised
                    dark
                >

                    <v-card-title class="headline">View lectures suggested for you</v-card-title>
                </v-card>
            </v-flex>

            <v-flex
                md12
                class="text-center"
            >
                <v-card flat>
                    <v-card-title class="headline">Lectures</v-card-title>
                </v-card>
            </v-flex>

            <v-flex
                xs12
                md4
                v-for="lecture in lectures"
                :key="lecture.id"
            >
                <material-card
                    color="green"
                    :title="lecture.title"
                    :text="`Posted by ${lecture.user.name}`"
                >
                    <p>Description : {{ lecture.description }}
                    </p>
                    <v-card-actions>
                        <v-spacer />
                        <!-- <nuxt-link :to="`/profiles/${student.role.slug}/${student.id}`"> -->

                        <v-btn
                            color="success"
                            text
                        >
                            <v-icon>tv</v-icon>
                            Watch Now
                        </v-btn>
                        <!-- </nuxt-link> -->
                    </v-card-actions>
                </material-card>
            </v-flex>

        </v-layout>
    </v-container>
</template>

<script>
import { mapGetters } from 'vuex'
import materialCard from '~/components/material/AppCard'

export default {
    layout: 'dashboard',
    components: {
        materialCard
    },
    data () {
        return {
            isLoading: false,
            lectures: [],
        }
    },
    async asyncData ({ params, app }) {
        let response = await app.$axios.$get('/getLectures')
        return {
            lectures: response.lectures,
        }
    }
}
</script>
