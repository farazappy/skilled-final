<template>
    <v-container
        fill-height
        fluid
        grid-list-xl
    >
        <v-layout wrap>
            <v-flex
                sm6
                xs12
                md6
                lg4
                v-if="user.role.id === 1"
            >
                <material-stats-card
                    color="green"
                    icon="verified_user"
                    title="Level"
                    :value="user.level"
                />
            </v-flex>
            <v-flex
                sm6
                xs12
                md6
                lg4
                v-if="user.role.id === 1"
            >
                <material-stats-card
                    color="orange"
                    icon="assignment_ind"
                    title="Jobs applied for"
                    value="2"
                />
            </v-flex>
            <v-flex
                sm6
                xs12
                md6
                lg4
                v-if="user.role.id === 2"
            >
                <material-stats-card
                    color="red"
                    icon="assignment_turned_in"
                    title="Total Teachers"
                    :value="teachers.length.toString()"
                    buttonDegaBC="true"
                    btnText="View Teachers"
                    @click.prevent="viewTeachers()"
                />
                
            </v-flex>
            <v-flex
                sm6
                xs12
                md6
                lg4
                v-if="user.role.id === 2"
            >
                <material-stats-card
                    color="red"
                    icon="assignment_turned_in"
                    title="Tests taken"
                    value="75"
                />
            </v-flex>

            <material-card v-if="user.role.id === 2 && showTeachersTable"
                    color="orange"
                    title="Teacher Stats"
                    text="Viewing all teachers"
                >
                    <v-data-table
                        :headers="headers2"
                        :items="teachers"
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
                            <td class="text-xs-right">{{ item.email }}</td>
                            <td class="text-xs-right">{{ item.phone }}</td>
                        </template>
                    </v-data-table>
                </material-card>

            <!-- <v-flex
                sm6
                xs12
                md6
                lg4
                v-if="user.role.id === 3"
            >
                <material-stats-card
                    color="green"
                    icon="verified_user"
                    title="Jobs posted"
                    :value="4"
                />
            </v-flex> -->
            <v-flex
                sm6
                xs12
                md6
                lg6
                v-if="user.role.id === 3"
            >
                <material-stats-card
                    color="orange"
                    icon="assignment_ind"
                    title="Tests posted"
                    value="3"                    
                />
            </v-flex>
            
            <v-flex
                sm6
                xs12
                md6
                lg6
                v-if="user.role.id === 3"
            >
                <material-stats-card
                    color="red"
                    icon="assignment_turned_in"
                    title="Hired candidates"
                    value="1"
                />
            </v-flex>
            <v-flex
                sm6
                xs12
                md6
                lg3
                v-if="user.role.id === 3"
            >
                <v-btn
                    color="success"
                ><span class="material-icons">
                add_box
                </span>Create Test</v-btn>
                <v-btn
                    color="info"
                    @click.prevent="myTestsTeachers()"
                ><span class="material-icons">
                preview
                </span>View Test</v-btn>
            </v-flex>
            <!-- <v-flex
                sm6
                xs12
                md6
                lg6
                v-if="user.role.id === 4"
            >
                <material-stats-card
                    color="green"
                    icon="verified_user"
                    title="Suggested crareer path"
                    :value="user.profession.name"
                />
            </v-flex> -->
            <!-- <v-flex
                sm6
                xs12
                md6
                lg6
                v-if="user.role.id === 4"
            >
                <material-stats-card
                    color="orange"
                    icon="tv"
                    title="Lectures Watched"
                    value="3"
                />
            </v-flex> -->
            <v-flex
                md12
                lg12
                v-if="user.role.id === 1"
            >
                <material-card
                    color="purple"
                    title="Test Stats"
                    text="Last test given on 23rd January, 2020"
                >
                    <v-data-table
                        :headers="headers"
                        :items="items"
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
                            <td class="text-xs-right">{{ item.salary }}</td>
                            <td class="text-xs-right">{{ item.country }}</td>
                            <td class="text-xs-right">{{ item.city }}</td>
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
            teachers: [],
            showTeachersTable: false,
            dailySalesChart: {
                data: {
                    labels: ['M', 'T', 'W', 'T', 'F', 'S', 'S'],
                    series: [
                        [12, 17, 7, 17, 23, 18, 38]
                    ]
                },
                options: {
                    low: 0,
                    high: 50, // creative tim: we recommend you to set the high sa the biggest value + something for a better look
                    chartPadding: {
                        top: 0,
                        right: 0,
                        bottom: 0,
                        left: 0
                    }
                }
            },
            dataCompletedTasksChart: {
                data: {
                    labels: ['12am', '3pm', '6pm', '9pm', '12pm', '3am', '6am', '9am'],
                    series: [
                        [230, 750, 450, 300, 280, 240, 200, 190]
                    ]
                },
                options: {
                    low: 0,
                    high: 1000, // creative tim: we recommend you to set the high sa the biggest value + something for a better look
                    chartPadding: {
                        top: 0,
                        right: 0,
                        bottom: 0,
                        left: 0
                    }
                }
            },
            emailsSubscriptionChart: {
                data: {
                    labels: ['Ja', 'Fe', 'Ma', 'Ap', 'Mai', 'Ju', 'Jul', 'Au', 'Se', 'Oc', 'No', 'De'],
                    series: [
                        [542, 443, 320, 780, 553, 453, 326, 434, 568, 610, 756, 895]
                    ]
                },
                options: {
                    axisX: {
                        showGrid: false
                    },
                    low: 0,
                    high: 1000,
                    chartPadding: {
                        top: 0,
                        right: 5,
                        bottom: 0,
                        left: 0
                    }
                },
                responsiveOptions: [
                    ['screen and (max-width: 640px)', {
                        seriesBarDistance: 5,
                        axisX: {
                            labelInterpolationFnc: function (value) {
                                return value[0]
                            }
                        }
                    }]
                ]
            },
            headers: [
                {
                    sortable: false,
                    text: 'Test name',
                    value: 'name'
                },
                {
                    sortable: false,
                    text: 'Performance',
                    value: 'performance',
                    align: 'right'
                },
                {
                    sortable: false,
                    text: 'Time taken',
                    value: 'Time taken',
                    align: 'right'
                },
                {
                    sortable: false,
                    text: 'Result',
                    value: 'result',
                    align: 'right'
                }
            ],
            items: [
                {
                    name: 'Dakota Rice',
                    country: 'Niger',
                    city: 'Oud-Tunrhout',
                    salary: '$35,738'
                },
                {
                    name: 'Minerva Hooper',
                    country: 'Curaçao',
                    city: 'Sinaai-Waas',
                    salary: '$23,738'
                }
            ],
            headers2: [
                {
                    sortable: false,
                    text: 'Teacher name',
                    value: 'name'
                },
                {
                    sortable: false,
                    text: 'Teacher email',
                    value: 'performance',
                    align: 'right'
                },
                {
                    sortable: false,
                    text: 'Teacher phone',
                    value: 'Time taken',
                    align: 'right'
                }
            ],
            items2: [
                {
                    name: 'Cool cool',
                    phone: 'cool_ka_phone',
                    email: 'cool_ka_email'
                },
                {
                    name: 'Cool 2',
                    phone: 'cool2_ka_phone',
                    email: 'cool2_ka_email'
                }
            ],
            tabs: 0,
            list: {
                0: false,
                1: false,
                2: false
            }
        }
    },
    async asyncData ({ app, params }) {
        let response = await app.$axios.$get('/company/hire/profiles')
        //console.log(response.teachers)
        return {
            teachers: response.teachers
        }
    },
    methods: {
        myTestsTeachers() {
            this.$router.push('/teacher/my-tests');
        },
        complete (index) {
            this.list[index] = !this.list[index]
        },
        viewTeachers() {
            console.log("view teachers")
            this.showTeachersTable = true
        }
    },
    created() {
        console.log("_role.vue me aaya")
    },
    mounted () {
        console.log(this.teachers)
        
        this.$nextTick(() => {
            /*this.dailySalesChart.options = {
              lineSmooth: this.$chartist.Interpolation.cardinal({
                tension: 0
              }),
              low: 0,
              high: 50, // creative tim: we recommend you to set the high sa the biggest value + something for a better look
              chartPadding: {
                top: 0,
                right: 0,
                bottom: 0,
                left: 0
              }
            };
            this.dataCompletedTasksChart.options = {
              lineSmooth: this.$chartist.Interpolation.cardinal({
                tension: 0
              }),
              low: 0,
              high: 1000, // creative tim: we recommend you to set the high sa the biggest value + something for a better look
              chartPadding: {
                top: 0,
                right: 0,
                bottom: 0,
                left: 0
              }
            };*/
        });
    }
}
</script>
