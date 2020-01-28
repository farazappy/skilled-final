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
                    <v-card-title class="headline">Tests published by you</v-card-title>
                </v-card>
                <material-card
                    class="card-tabs"
                    color="green"
                    v-if="tests.length > 0"
                >
                    <v-flex slot="header">
                        <v-tabs
                            v-model="subjects.length"
                            color="transparent"
                            slider-color="white"
                        >
                            <span
                                class="subheading font-weight-light mr-3"
                                style="align-self: center"
                            >Subjects:</span>
                            <v-tab
                                class="mr-3"
                                v-for="subject in subjects"
                                :key="subject.id"
                            >
                                <v-icon class="mr-2">library_books</v-icon>
                                {{ subject.name }}
                            </v-tab>
                        </v-tabs>
                    </v-flex>

                    <v-tabs-items v-model="tabs">
                        <v-tab-item
                            v-for="n in subjects.length"
                            :key="n"
                        >
                            <v-list three-line>
                                <v-list-tile @click="complete(0)">
                                    <v-list-tile-action>
                                        <v-checkbox
                                            :value="list[0]"
                                            color="green"
                                        />
                                    </v-list-tile-action>
                                    <v-list-tile-title>
                                        Sign contract for "What are conference organized afraid of?" {{ n }}
                                    </v-list-tile-title>
                                    <div class="d-flex">
                                        <v-tooltip
                                            top
                                            content-class="top"
                                        >
                                            <v-btn
                                                slot="activator"
                                                class="v-btn--simple"
                                                color="success"
                                                icon
                                            >
                                                <v-icon color="primary">mdi-pencil</v-icon>
                                            </v-btn>
                                            <span>Edit</span>
                                        </v-tooltip>
                                        <v-tooltip
                                            top
                                            content-class="top"
                                        >
                                            <v-btn
                                                slot="activator"
                                                class="v-btn--simple"
                                                color="danger"
                                                icon
                                            >
                                                <v-icon color="error">mdi-close</v-icon>
                                            </v-btn>
                                            <span>Close</span>
                                        </v-tooltip>

                                    </div>
                                </v-list-tile>
                                <v-divider />
                                <v-list-tile @click="complete(1)">
                                    <v-list-tile-action>
                                        <v-checkbox
                                            :value="list[1]"
                                            color="success"
                                        />
                                    </v-list-tile-action>
                                    <v-list-tile-title>
                                        Lines From Great Russian Literature? Or E-mails From My Boss?
                                    </v-list-tile-title>
                                    <div class="d-flex">
                                        <v-tooltip
                                            top
                                            content-class="top"
                                        >
                                            <v-btn
                                                slot="activator"
                                                class="v-btn--simple"
                                                color="success"
                                                icon
                                            >
                                                <v-icon color="primary">mdi-pencil</v-icon>
                                            </v-btn>
                                            <span>Edit</span>
                                        </v-tooltip>

                                        <v-tooltip
                                            top
                                            content-class="top"
                                        >
                                            <v-btn
                                                slot="activator"
                                                class="v-btn--simple"
                                                color="danger"
                                                icon
                                            >
                                                <v-icon color="error">mdi-close</v-icon>
                                            </v-btn>
                                            <span>Close</span>
                                        </v-tooltip>
                                    </div>
                                </v-list-tile>
                                <v-divider />
                                <v-list-tile @click="complete(2)">
                                    <v-list-tile-action>
                                        <v-checkbox
                                            :value="list[2]"
                                            color="success"
                                        />
                                    </v-list-tile-action>
                                    <v-list-tile-title>
                                        Flooded: One year later, assessing what was lost and what was found when a ravaging rain swept through metro Detroit
                                    </v-list-tile-title>
                                    <div class="d-flex">
                                        <v-tooltip
                                            top
                                            content-class="top"
                                        >
                                            <v-btn
                                                slot="activator"
                                                class="v-btn--simple"
                                                color="success"
                                                icon
                                            >
                                                <v-icon color="primary">mdi-pencil</v-icon>
                                            </v-btn>
                                            <span>Edit</span>
                                        </v-tooltip>
                                        <v-tooltip
                                            top
                                            content-class="top"
                                        >
                                            <v-btn
                                                slot="activator"
                                                class="v-btn--simple"
                                                color="danger"
                                                icon
                                            >
                                                <v-icon color="error">mdi-close</v-icon>
                                            </v-btn>
                                            <span>Close</span>
                                        </v-tooltip>

                                    </div>
                                </v-list-tile>
                            </v-list>
                        </v-tab-item>
                    </v-tabs-items>
                </material-card>
                <material-card
                    v-else
                    class="card-tabs"
                >
                    <v-card-test>You have not published any tests yet, please use the button below to publish a test</v-card-test>
                </material-card>
            </v-flex>
            <v-flex
                xs12
                md12
            >

                <material-card
                    color="green"
                    title="Publish A New Test"
                    text="FIll up the form below to publish a new test"
                >
                    <v-form @submit.prevent="submitTestForm()">
                        <v-container py-0>
                            <v-layout wrap>
                                <v-flex
                                    xs12
                                    md4
                                >
                                    <v-text-field
                                        class="purple-input"
                                        label="Title"
                                        v-model="testForm.name"
                                    />
                                </v-flex>
                                <v-flex
                                    xs12
                                    md4
                                >
                                    <v-select
                                        :items="computedSubjects"
                                        label="Subject"
                                        v-model="testForm.subject_id"
                                    ></v-select>
                                </v-flex>
                                <v-flex
                                    xs12
                                    md4
                                >
                                    <v-select
                                        :items="testLevels"
                                        label="Level"
                                        v-model="testForm.level"
                                    ></v-select>
                                </v-flex>
                                <v-flex
                                    xs12
                                    md4
                                    v-for="n in 10"
                                    :key="n"
                                >
                                    <v-card ref="form">
                                        <v-card-title>
                                            Question {{ n }}
                                        </v-card-title>
                                        <v-card-text>
                                            <v-text-field
                                                v-model="testForm.testQuestions[n-1].name"
                                                label="Question title"
                                                required
                                            ></v-text-field>
                                            <v-text-field
                                                v-model="testForm.testQuestions[n-1].optione1"
                                                label="Answer Option 1"
                                                required
                                            ></v-text-field>
                                            <v-text-field
                                                v-model="testForm.testQuestions[n-1].option2"
                                                label="Answer Option 2"
                                                required
                                            ></v-text-field>
                                            <v-text-field
                                                v-model="testForm.testQuestions[n-1].option3"
                                                label="Answer Option 3"
                                                required
                                            ></v-text-field>
                                            <v-text-field
                                                v-model="testForm.testQuestions[n-1].option4"
                                                label="Answer Option 4"
                                                required
                                            ></v-text-field>
                                            <v-radio-group
                                                v-model="testForm.testQuestions[n-1].correct"
                                                label="Choose correct answer"
                                            >
                                                <v-radio
                                                    v-for="n in 4"
                                                    :key="n"
                                                    :label="`Option ${n}`"
                                                    :value="n"
                                                ></v-radio>
                                            </v-radio-group>
                                        </v-card-text>
                                    </v-card>
                                </v-flex>
                                <v-flex
                                    xs12
                                    text-xs-right
                                >
                                    <v-btn
                                        class="mx-0 font-weight-light"
                                        color="success"
                                        @click="submitTestForm"
                                    >
                                        Publish test
                                    </v-btn>
                                </v-flex>
                            </v-layout>
                        </v-container>
                    </v-form>
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
            tests: [],
            subjects: [],
            testForm: {
                name: '',
                subject_id: '',
                level: '',
                testQuestions: [
                    {
                        name: '',
                        option1: '',
                        option2: '',
                        option3: '',
                        option4: '',
                        correct: ''
                    },
                    {
                        name: '',
                        option1: '',
                        option2: '',
                        option3: '',
                        option4: '',
                        correct: ''
                    },
                    {
                        name: '',
                        option1: '',
                        option2: '',
                        option3: '',
                        option4: '',
                        correct: ''
                    },
                    {
                        name: '',
                        option1: '',
                        option2: '',
                        option3: '',
                        option4: '',
                        correct: ''
                    },
                    {
                        name: '',
                        option1: '',
                        option2: '',
                        option3: '',
                        option4: '',
                        correct: ''
                    },
                    {
                        name: '',
                        option1: '',
                        option2: '',
                        option3: '',
                        option4: '',
                        correct: ''
                    },
                    {
                        name: '',
                        option1: '',
                        option2: '',
                        option3: '',
                        option4: '',
                        correct: ''
                    },
                    {
                        name: '',
                        option1: '',
                        option2: '',
                        option3: '',
                        option4: '',
                        correct: ''
                    },
                    {
                        name: '',
                        option1: '',
                        option2: '',
                        option3: '',
                        option4: '',
                        correct: ''
                    },
                    {
                        name: '',
                        option1: '',
                        option2: '',
                        option3: '',
                        option4: '',
                        correct: ''
                    }
                ]
            },
            list: {
                0: false,
                1: false,
                2: false
            },
            testLevels: [
                {
                    text: 'Level 1', value: 1
                },
                {
                    text: 'Level 2', value: 2
                },
                {
                    text: 'Level 3', value: 3
                },
                {
                    text: 'Level 4', value: 4
                }
            ]
        }
    },
    async asyncData ({ params, app }) {
        let response = await app.$axios.$get('/auth/tests')
        const tests = response.tests
        response = await app.$axios.$get('/subjects')
        const subjects = response.subjects
        return {
            tests,
            subjects
        }
    },
    computed: {
        computedSubjects () {
            this.subjects.forEach((s, i) => {
                s.text = s.name;
                s.value = s.id;
            })
            return this.subjects
        }
    },
    methods: {
        async submitTestForm () {
            await this.$axios.$post('/auth/tests/create')
                .then(res => {
                    console.log(res);
                    this.tests = res.tests
                })
                .catch(err => {
                    console.log(err);
                })
        }
    }
}
</script>
