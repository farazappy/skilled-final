<template>
    <v-content>
        <v-container
            fluid
            fill-height
        >
            <v-layout
                align-center
                justify-center
            >
                <v-flex md12>
                    <v-card
                        color="purple"
                        class="mb-3"
                        raised
                        dark
                    >
                        <v-card-title class="headline">You need to answer this test before you can start using the platform!</v-card-title>
                    </v-card>

                    <material-card
                        color="green"
                        :title="test.name"
                        :text="test.name"
                    >

                        <v-form @submit.prevent="submitTestForm()">
                            <v-container py-0>
                                <v-layout wrap>
                                    <v-flex
                                        xs12
                                        md12
                                    >
                                    </v-flex>
                                    <v-flex
                                        xs12
                                        md4
                                        v-for="(question, index) in test.questions"
                                        :key="question.id"
                                    >
                                        <v-card ref="form">
                                            <v-card-title>
                                                Question {{ index+1 }}
                                            </v-card-title>
                                            <v-card-text>
                                                <p>{{ question.name }}</p>
                                                <v-radio-group
                                                    v-model="testForm.testQuestions[n-1]"
                                                    label="Choose correct answer"
                                                >
                                                    <v-radio
                                                        :label="question.option1"
                                                        value="1"
                                                    ></v-radio>
                                                    <v-radio
                                                        :label="question.option2"
                                                        value="2"
                                                    ></v-radio>
                                                    <v-radio
                                                        :label="question.option3"
                                                        value="3"
                                                    ></v-radio>
                                                    <v-radio
                                                        :label="question.option4"
                                                        value="4"
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
                                            :loading="isLoading"
                                            :disabled="isLoading"
                                            @click="submitTestForm"
                                        >
                                            Submit Answer
                                        </v-btn>
                                    </v-flex>
                                </v-layout>
                            </v-container>
                        </v-form>
                    </material-card>
                </v-flex>

            </v-layout>
        </v-container>
    </v-content>
</template>

<script>

import materialCard from '~/components/material/AppCard'

export default {
    components: {
        materialCard
    },
    data () {
        return {
            test: null,
            testForm: {
                name: '',
                subject_id: '',
                level: '',
                people_attempted: 0,
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
        }
    },
    async asyncData ({ app, params }) {
        let response = await app.$axios.$get('student/exam/first')
        return {
            test: response.test
        }
    }
}
</script>

<style scoped>

</style>