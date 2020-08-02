<template>
  <v-container>
      <v-layout>
          <v-flex
                md12
                lg12
                v-if="user.role.id === 3"
            >
                <material-card
                    color="green"
                    title="Publish A New Test"
                    text="FIll up the form below to publish a new test"
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
                                    v-model="testForm.name"
                                />
                            </v-flex>
                            <v-flex
                                xs12
                                md6
                            >
                                <v-select
                                    :items="computedSubjects"
                                    label="Subject"
                                    v-model="testForm.subject_id"
                                ></v-select>
                            </v-flex>
                            <v-flex xs12 md6 style="margin-bottom: 10px; margin-top: 10px">
                                <h2>Start:</h2>
                                <v-time-picker v-model="testForm.start_time" :max="testForm.end_time"></v-time-picker>
                            </v-flex>
                            <v-flex xs12 md6 style="margin-bottom: 10px; margin-top: 10px">
                                <h2>End:</h2>
                                <v-time-picker v-model="testForm.end_time" :min="testForm.start_time"></v-time-picker>
                            </v-flex>
                            <v-flex
                                xs12
                                md4
                                class="px-2"
                                v-for="(testQuestion,i) in testForm.testQuestions"
                                :key="i"
                            >
                                <v-card ref="form">
                                    <v-card-title>
                                        Question {{i+1}}
                                    </v-card-title>
                                    <v-card-text>
                                        <v-text-field
                                            v-model="testForm.testQuestions[i].name"
                                            label="Question title"
                                            required
                                        ></v-text-field>
                                        <v-text-field
                                            v-model="testForm.testQuestions[i].option1"
                                            label="Answer Option 1"
                                            required
                                        ></v-text-field>
                                        <v-text-field
                                            v-model="testForm.testQuestions[i].option2"
                                            label="Answer Option 2"
                                            required
                                        ></v-text-field>
                                        <v-text-field
                                            v-model="testForm.testQuestions[i].option3"
                                            label="Answer Option 3"
                                            required
                                        ></v-text-field>
                                        <v-text-field
                                            v-model="testForm.testQuestions[i].option4"
                                            label="Answer Option 4"
                                            required
                                        ></v-text-field>
                                        <v-radio-group
                                            v-model="testForm.testQuestions[i].correct_ans"
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
                                        @click.prevent="deleteQuestion(i,testQuestion)"
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
    data(){
        return {
            isLoading: false,
            subjects: [],
            testForm: {
                name: '',
                start_time: '',
                end_time: '',
                subject_id: null,
                testQuestions: [
                    {
                        name: '',
                        option1: '',
                        option2: '',
                        option3: '',
                        option4: '',
                        correct_ans: null
                    },
                ]
            },
        }
    },
    async asyncData ({ params, app }) {
        let response = await app.$axios.$get('/subjects')
        const subjects = response.subjects
        return {
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
        
        async submitTest() {
            this.isLoading = true
            //console.log(this.testForm)
            
            await this.$axios.post('/auth/tests/create', this.testForm)
                .then((response) => {
                    this.isLoading = false
                    this.$store.dispatch('notification/setNotification', {
                        type: "Success!",
                        color: "success",
                        message: `Test published successfully!`
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
            this.testForm.testQuestions.push({
                name: '',
                option1: '',
                option2: '',
                option3: '',
                option4: '',
                correct: ''
            })
        },
        deleteQuestion(index,testQuestion) {
            let idx = this.testForm.testQuestions.indexOf(testQuestion)
            //console.log(idx,index)
            if(idx > -1) {
                this.testForm.testQuestions.splice(idx,1)
            }
        }
    }
}
</script>

<style>

</style>