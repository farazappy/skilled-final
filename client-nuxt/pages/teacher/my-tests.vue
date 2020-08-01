<template>
  <v-container>
      <v-layout>
          <v-flex
                md12
                lg12
                v-if="user.role.id === 3"
            >
                <material-card
                    color="purple"
                    title="Test Stats"
                    text="Last test given on 23rd January, 2020"
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
                            <td class="text-xs-right">{{ item.students_attempted }}</td>
                            <td class="text-xs-right">{{ item.subject.name }}</td>
                            <td class="text-xs-right">
                                <v-btn 
                                    color="success"
                                    :to="`test/${item.id}`"
                                ><span class="material-icons">
                                remove_red_eye
                                </span>
                                View</v-btn>
                                <v-btn 
                                    color="error"
                                ><span class="material-icons">
                                delete
                                </span>
                                Delete</v-btn>
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
    data(){
        return {
            headers: [
                {
                    sortable: false,
                    text: 'Test name',
                    value: 'name'
                },
                {
                    sortable: false,
                    text: 'Students attempted',
                    value: 'performance',
                    align: 'right'
                },
                {
                    sortable: false,
                    text: 'Subject',
                    value: 'Time taken',
                    align: 'right'
                },
                {
                    sortable: false,
                    text: 'Action',
                    value: 'Time taken',
                    align: 'center'
                }
            ],
            tests: []
        }
    },
    async asyncData ({ app, params }) {
        let response = await app.$axios.$get('/teacher/getMyTests')
        console.log(response.tests)
        return {
            tests: response.tests
        }
        
    }
}
</script>

<style>

</style>