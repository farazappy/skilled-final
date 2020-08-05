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
                    :text="`Tests published by ${user.name}`"
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
                            <td class="text-xs-right">{{ item.total_marks }}</td>
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
                                    :loading="isLoading"
                                    :disabled="isLoading"
                                    @click.prevent="deleteTest(item.id)"
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
            isLoading: false,
            headers: [
                {
                    sortable: false,
                    text: 'Test name',
                    value: 'name'
                },
                {
                    sortable: false,
                    text: 'Total Marks',
                    value: 'performance',
                    align: 'right'
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
    methods: {
        async deleteTest(id) {
            if(confirm('Are sure want to delete this test?'))
            {
                this.isLoading = true
                let ID = parseInt(id)
                await this.$axios.delete(`/test/${ID}`)
                .then((response) => {
                    this.isLoading = false
                    console.log(response)
                    this.$router.go()
                })
                .catch((err) => {
                    this.isLoading = false
                    console.log(err)
                })
            }
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