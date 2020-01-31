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

                    <v-card-title class="headline">View available vacancies</v-card-title>
                </v-card>
            </v-flex>

            <v-flex
                md12
                class="text-center"
            >
                <v-card flat>
                    <v-card-title class="headline">Open vacancies</v-card-title>
                </v-card>
            </v-flex>

            <v-flex
                xs12
                md4
                v-for="vacancy in vacancies"
                :key="vacancy.id"
            >
                <material-card
                    color="green"
                    :title="vacancy.title"
                    :text="`Posted by ${vacancy.user.name}`"
                >
                    <p>Description : {{ vacancy.description }}
                    </p>
                    <p>Package: {{ vacancy.package }}</p>
                    <v-card-actions>
                        <v-spacer />
                        <!-- <nuxt-link :to="`/profiles/${student.role.slug}/${student.id}`"> -->

                        <v-btn
                            color="orange"
                            text
                        >
                            <v-icon>add_box</v-icon>
                            Apply for job
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
            vacancies: [],
        }
    },
    async asyncData ({ params, app }) {
        let response = await app.$axios.$get('/getVacancies')
        return {
            vacancies: response.vacancies,
        }
    }
}
</script>
