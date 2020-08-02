<template>
  <v-container>
      
      <v-layout>
          <v-flex
                md12
                lg12
                v-if="user.role.id === 3"
            >
            <!-- {{test[0]}} -->
                <material-card
                    color="green"
                    title="Edit Test"
                    :text="`FIll up the form below to edit ${test[0].name} test`"
                >
                    
                    <v-container py-0>
                        <v-layout wrap>
                            <v-flex
                                xs12
                                md6
                            >
                                <v-text-field
                                    class="green-input"
                                    label="Title"
                                    v-model="test[0].name"
                                />
                            </v-flex>
                            <v-flex
                                xs12
                                md6
                            >
                                <v-select
                                    :items="computedSubjects"
                                    label="Subject"
                                    v-model="test[0].subject_id"
                                ></v-select>
                            </v-flex>
                            <v-flex xs12 md6 style="margin-bottom: 10px; margin-top: 10px">
                                <h2>Start:</h2>
                                <v-time-picker v-model="test[0].start_time" :max="test.end_time"></v-time-picker>
                            </v-flex>
                            <v-flex xs12 md6 style="margin-bottom: 10px; margin-top: 10px">
                                <h2>End:</h2>
                                <v-time-picker v-model="test[0].end_time" :min="test.start_time"></v-time-picker>
                            </v-flex>
                            <v-flex
                                xs12
                                md4
                                class="px-2"
                                v-for="(question,i) in test[0].questions"
                                :key="i"
                            >
                                <v-card ref="form">
                                    <v-card-title>
                                        Question {{i+1}}
                                    </v-card-title>
                                    <v-card-text>
                                        <v-text-field
                                            v-model="question.name"
                                            label="Question title"
                                            required
                                        ></v-text-field>
                                        <v-text-field
                                            v-model="question.option1"
                                            label="Answer Option 1"
                                            required
                                        ></v-text-field>
                                        <v-text-field
                                            v-model="question.option2"
                                            label="Answer Option 2"
                                            required
                                        ></v-text-field>
                                        <v-text-field
                                            v-model="question.option3"
                                            label="Answer Option 3"
                                            required
                                        ></v-text-field>
                                        <v-text-field
                                            v-model="question.option4"
                                            label="Answer Option 4"
                                            required
                                        ></v-text-field>
                                        <v-radio-group
                                            v-model="question.correct_ans"
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
                                    
                                    <v-btn
                                        @click.prevent="deleteQuestion(i,question)"
                                        color="error" 
                                        block>
                                        Delete Question
                                    </v-btn>
                                </v-card>
                            </v-flex>
                            <v-flex
                                xs12
                                md12
                            >
                                <v-btn
                                    @click.prevent="addQuestion()"
                                    color="success" 
                                    block>
                                    Add New
                                </v-btn>
                                <v-btn
                                    :loading="isLoading"
                                    :disabled="isLoading"
                                    @click.prevent="submitTest()"
                                    color="success" 
                                    block>
                                    Submit
                                </v-btn>
                            </v-flex>
                        </v-layout>
                    </v-container>
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
    validate({params}) {
        return !/\D/.test(params.test)
    },
    data(){
        return {
            test: {},
            id: null,
            isLoading: false,
            subjects: [],
            // testForm: {
            //     name: '',
            //     start_time: '',
            //     end_time: '',
            //     subject_id: null,
            //     testQuestions: [
            //         {
            //             name: '',
            //             option1: '',
            //             option2: '',
            //             option3: '',
            //             option4: '',
            //             correct: ''
            //         },
            //     ]
            // },
        }
    },
    async asyncData ({ params, app }) {
        let response = await app.$axios.$get('/subjects')
        const subjects = response.subjects
        let ID = parseInt(params.test)
        response = await app.$axios.$get(`/test/${ID}`)
        const test = response
        return {
            subjects,
            test
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
    created() {
        this.id = parseInt(this.$route.params.test)
        //console.log(typeof(this.id))
    },
    methods: {
        
        async submitTest() {
            this.isLoading = true
            //console.log(this.test[0])
            await this.$axios.post('/auth/tests/create', this.test[0])
                .then((response) => {
                    this.isLoading = false
                    this.$store.dispatch('notification/setNotification', {
                        type: "Success!",
                        color: "success",
                        message: `Test edited successfully!`
                    })
                    console.log(response)
                    this.$router.push('/teacher/my-tests')
                })
                .catch((err) => {
                    this.isLoading = false
                    this.$store.dispatch('notification/setNotification', {
                        type: "Error!",
                        color: "error",
                        message: `Please fix the errors!`
                    })
                    console.log(err)
                })
        },
        addQuestion() {
            this.test[0].questions.push({
                name: '',
                option1: '',
                option2: '',
                option3: '',
                option4: '',
                correct_ans: ''
            })
        },
        deleteQuestion(index,testQuestion) {
            let idx = this.test[0].questions.indexOf(testQuestion)
            //console.log(idx,index)
            if(idx > -1) {
                this.test[0].questions.splice(idx,1)
            }
        }
    }
}
</script>

<style>

</style>