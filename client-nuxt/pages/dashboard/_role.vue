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
                    title="Semester"
                    :value="user.semester_id"
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
                    title="Tests given"
                    value="2staic"
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
                    buttonDegaBC="true"
                    btnText="View Tests"
                    :value="tests.length.toString()"
                    @click.prevent="viewTests()"
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

                <material-card v-if="user.role.id === 2 && showTestsTable"
                    color="orange"
                    title="Test Stats"
                    text="Viewing all tests"
                >
                    <v-data-table
                        :headers="headers3"
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
                            <td class="text-xs-right">{{ item.semester.name }}</td>
                            <td class="text-xs-right">{{ item.subject.name }}</td>
                            <td class="text-xs-right">{{ item.created_by.name }}</td>
                            <td class="text-xs-right">{{ item.students_attempted }}</td>
                        </template>
                    </v-data-table>
                </material-card>

            
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
                    @click.prevent="createTest()"
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
            
            <v-flex
                md12
                lg12
                v-if="user.role.id === 1"
            >
                <material-card
                    color="purple"
                    title="Upcoming Tests for You"
                    text="Last test given on 23rd January, 2020"
                >
                    <v-data-table
                        :headers="headers4"
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
            tests: [],
            showTeachersTable: false,
            showTestsTable: false,
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
            
            headers3: [
                {
                    sortable: false,
                    text: 'Test name',
                    value: 'name'
                },
                {
                    sortable: false,
                    text: 'Semester',
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
                    text: 'Created By',
                    value: 'Time taken',
                    align: 'right'
                },
                {
                    sortable: false,
                    text: 'Students attempted',
                    value: 'Time taken',
                    align: 'right'
                }
            ],
            headers4: [
                {
                    sortable: false,
                    text: 'Test name',
                    value: 'name'
                },
                {
                    sortable: false,
                    text: 'Semester',
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
                    text: 'Start Time',
                    value: 'Time taken',
                    align: 'right'
                },
                {
                    sortable: false,
                    text: 'Subject',
                    value: 'End Time',
                    align: 'right'
                },
                {
                    sortable: false,
                    text: 'Action',
                    value: 'Time taken',
                    align: 'right'
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
        let response2 = await app.$axios.$get('/all-tests')
        console.log(response2.tests)
        return {
            teachers: response.teachers,
            tests: response2.tests
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
            //console.log("view teachers")
            this.showTeachersTable = true
        },
        viewTests() {
            console.log('clicked')
            this.showTestsTable = true
        },
        createTest() {
            this.$router.push('/teacher/create')
        }
    },
    created() {
        //console.log("_role.vue me aaya")
    },
    mounted () {
        //console.log(this.teachers)
        
        this.$nextTick(() => {
            
        });
    }
}
</script>
