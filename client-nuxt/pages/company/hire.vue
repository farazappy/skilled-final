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

                    <v-card-title class="headline">View profile of available candidates</v-card-title>
                </v-card>
            </v-flex>

            <v-flex
                md12
                class="text-center"
            >
                <v-card flat>
                    <v-card-title class="headline">Student profiles</v-card-title>
                </v-card>
            </v-flex>

            <v-flex
                xs12
                md4
                v-for="student in students"
                :key="student.id"
            >
                <material-card
                    color="green"
                    :title="student.name"
                    :text="`Student of ${student.institution}`"
                >
                    <p>Skills
                        <v-chip
                            class="ma-2"
                            color="green"
                            text-color="white"
                            v-for="(skill, index) in student.skills.split(',')"
                            :key="index"
                        >
                            {{ skill }}
                        </v-chip>
                    </p>
                    <v-card-actions>
                        <v-spacer />
                        <nuxt-link :to="`/profiles/${student.role.slug}/${student.id}`">

                            <v-btn
                                color="orange"
                                text
                            >
                                <v-icon>mdi-account</v-icon>
                                View Profile
                            </v-btn>
                        </nuxt-link>
                    </v-card-actions>
                </material-card>
            </v-flex>

            <v-flex
                md12
                class="text-center"
            >
                <v-card flat>
                    <v-card-title class="headline">Unemployed youth profiles</v-card-title>
                </v-card>
            </v-flex>

            <v-flex
                xs12
                md4
                v-for="youth in youths"
                :key="youth.id"
            >
                <material-card
                    color="info"
                    :title="youth.name"
                    :text="`Highest qualification - ${youth.qualification}`"
                >
                    <p>Skills
                        <v-chip
                            class="ma-2"
                            color="info"
                            text-color="white"
                            v-for="(skill, index) in youth.skills.split(',')"
                            :key="index"
                        >
                            {{ skill }}
                        </v-chip>
                    </p>

                    <v-card-actions>
                        <v-spacer />
                        <nuxt-link :to="`/profiles/${youth.role.slug}/${youth.id}`">
                            <v-btn
                                color="error"
                                text
                            >
                                <v-icon>mdi-account</v-icon>
                                View Profile
                            </v-btn>
                        </nuxt-link>
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
            students: [],
            youths: []
        }
    },
    async asyncData ({ params, app }) {
        let response = await app.$axios.$get('/company/hire/profiles')
        return {
            students: response.students,
            youths: response.youths
        }
    }
}
</script>
