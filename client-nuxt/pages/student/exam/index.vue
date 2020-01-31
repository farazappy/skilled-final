<template>
    <v-container
        fill-height
        fluid
        grid-list-xl
    >
        <v-layout wrap>
            <v-flex
                md12
                lg12
            >
                <material-card
                    color="purple"
                    title="List of tests"
                >
                    <v-data-table
                        :headers="headers"
                        :items="tests"
                        hide-actions
                    >
                        <template
                            slot="headerCell"
                            slot-scope="{ header }"
                        >
                            <span
                                class="font-weight-light text-warning text--darken-3"
                                v-text="header.text"
                            />
                        </template>
                        <template
                            slot="items"
                            slot-scope="{ index, item }"
                        >
                            <td>{{ item.name }}</td>
                            <td class="text-xs-right">
                                <nuxt-link :to="`/student/exam/${item.id}`">
                                    <v-btn
                                        color="success"
                                        round
                                    >Take test</v-btn>
                                </nuxt-link>
                            </td>
                        </template>
                    </v-data-table>
                </material-card>
            </v-flex>
        </v-layout>
    </v-container>
</template>

<script>
import materialCard from '~/components/material/AppCard'
import materialChartCard from '~/components/material/AppChartCard'
import materialStatsCard from '~/components/material/AppStatsCard'

export default {
    layout: 'dashboard',
    components: {
        materialCard,
        materialChartCard,
        materialStatsCard
    },
    data () {
        return {
            headers: [
                {
                    sortable: false,
                    text: 'Test name',
                    value: 'name'
                },
                {
                    sortable: false,
                    text: 'Action',
                    value: 'action',
                    align: 'right'
                }
            ],
            tests: []
        }
    },
    async asyncData ({ app, params }) {
        let response = await app.$axios.$get('/tests')
        console.log(response)
        return {
            tests: response.tests
        }
    }
}
</script>
