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
                <v-flex
                    xs12
                    sm8
                    md4
                >
                    <v-card>
                        <v-tabs
                            v-model="tab"
                            centered
                            color="primary"
                            dark
                            icons-and-text
                        >
                            <v-tabs-slider></v-tabs-slider>
                            <v-tab href="#tab-1">
                                Login
                                <v-icon>mdi-login</v-icon>
                            </v-tab>

                            <v-tab href="#tab-2">
                                Register
                                <v-icon>mdi-account-plus</v-icon>
                            </v-tab>

                        </v-tabs>

                        <v-tabs-items v-model="tab">
                            <v-tab-item value="tab-1">
                                <v-card flat>
                                    <v-card-text>
                                        <v-form>
                                            <v-text-field
                                                type="text"
                                                v-model="loginForm.email"
                                                prepend-icon="person"
                                                name="username"
                                                label="Login"
                                            ></v-text-field>
                                            <v-text-field
                                                type="password"
                                                v-model="loginForm.password"
                                                prepend-icon="lock"
                                                name="password"
                                                label="Password"
                                            ></v-text-field>
                                        </v-form>
                                    </v-card-text>
                                    <v-card-actions>
                                        <v-layout
                                            justify-center
                                            align-center
                                        >
                                            <v-btn
                                                color="success"
                                                :loading="isLoading"
                                                :disabled="isLoading"
                                                @click.prevent="loginSubmit()"
                                            >Login</v-btn>
                                        </v-layout>
                                    </v-card-actions>
                                </v-card>
                            </v-tab-item>

                            <v-tab-item value="tab-2">
                                <v-card flat>
                                    <v-card-text>
                                        <v-form>
                                            <v-select
                                                :items="computedRoles"
                                                label="Select Role"
                                                solo
                                                v-model="registerForm.role"
                                                @change="roleChanged()"
                                            ></v-select>
                                            <div v-if="registerForm.role != null">
                                                <v-text-field
                                                    type="text"
                                                    v-model="registerForm.name"
                                                    prepend-icon="person"
                                                    name="name"
                                                    label="Full Name"
                                                ></v-text-field>
                                                <v-text-field
                                                    type="email"
                                                    v-model="registerForm.email"
                                                    prepend-icon="mail"
                                                    name="email"
                                                    label="Your email"
                                                ></v-text-field>
                                                <v-text-field
                                                    type="number"
                                                    v-model="registerForm.phone"
                                                    prepend-icon="phone"
                                                    name="phone"
                                                    label="Phone number"
                                                ></v-text-field>
                                                <v-text-field
                                                    type="text"
                                                    v-model="registerForm.institution"
                                                    v-if="registerForm.role == 1"
                                                    prepend-icon="school"
                                                    name="institution"
                                                    label="Institution"
                                                ></v-text-field>
                                                <v-text-field
                                                    type="text"
                                                    v-model="registerForm.skills"
                                                    v-if="registerForm.role == 1 || registerForm.role == 4"
                                                    prepend-icon="lightbulb"
                                                    name="skills"
                                                    label="Skills"
                                                ></v-text-field>
                                                <v-text-field
                                                    type="text"
                                                    v-model="registerForm.qualification"
                                                    v-if="registerForm.role == 4"
                                                    prepend-icon="list"
                                                    name="qualification"
                                                    label="Qualifications"
                                                ></v-text-field>
                                                <div v-if="registerForm.role == 4">
                                                    <label>Tick the things that you think you can</label>
                                                    <v-checkbox
                                                        v-for="(interest, index) in interests"
                                                        v-model="registerForm.interests"
                                                        :label="interest.name"
                                                        :value="interest.id"
                                                        :key="index"
                                                    ></v-checkbox>
                                                </div>
                                                <v-text-field
                                                    type="text"
                                                    v-model="registerForm.trade_lic_no"
                                                    v-if="registerForm.role == 3"
                                                    prepend-icon="verified_user"
                                                    name="trade_lic_no"
                                                    label="Trade License Number"
                                                >
                                                </v-text-field>
                                                <v-text-field
                                                    type="text"
                                                    v-model="registerForm.ugc_no"
                                                    v-if="registerForm.role == 2"
                                                    prepend-icon="verified_user"
                                                    name="ugc_no"
                                                    label="UGC Number"
                                                ></v-text-field>
                                                <v-textarea
                                                    v-model="registerForm.address"
                                                    prepend-icon="person_pin"
                                                    name="address"
                                                    label="Address"
                                                >
                                                </v-textarea>
                                                <v-text-field
                                                    type="password"
                                                    v-model="registerForm.password"
                                                    prepend-icon="lock"
                                                    name="password"
                                                    label="Password"
                                                ></v-text-field>
                                                <v-text-field
                                                    type="password"
                                                    v-model="registerForm.password_confirmation"
                                                    prepend-icon="lock"
                                                    name="password_confirmation"
                                                    label="Confirm Password"
                                                ></v-text-field>
                                            </div>
                                        </v-form>
                                    </v-card-text>
                                    <v-card-actions v-if="registerForm.role != null">
                                        <v-layout
                                            justify-center
                                            align-center
                                        >
                                            <v-btn
                                                color="primary"
                                                :loading="isLoading"
                                                :disabled="isLoading"
                                                @click.prevent="registerSubmit()"
                                            >Register</v-btn>
                                        </v-layout>
                                    </v-card-actions>
                                </v-card>
                            </v-tab-item>
                        </v-tabs-items>
                    </v-card>
                </v-flex>
            </v-layout>
        </v-container>

        <v-snackbar
            color="success"
            top="top"
            left="left"
            v-model="successSnackbar"
            dark
        >
            <v-icon
                color="white"
                class="mr-3"
            >
                mdi-bell-plus
            </v-icon>
            <div>Welcome to <b>SkillED</b> - you have been logged in successfully!</div>
            <v-icon
                size="16"
                @click="successSnackbar = false"
            >
                mdi-close-circle
            </v-icon>
        </v-snackbar>

        <v-snackbar
            color="error"
            top="top"
            v-model="errorSnackbar"
            dark
        >
            <v-icon
                color="white"
                class="mr-3"
            >
                mdi-bell-plus
            </v-icon>
            <div><b>Errors</b> - Please fix the errors!</div>
            <v-icon
                size="16"
                @click="errorSnackbar = false"
            >
                mdi-close-circle
            </v-icon>
        </v-snackbar>
    </v-content>
</template>

<script>
import { mapActions } from 'vuex'
import materialCard from '~/components/material/AppCard'

export default {
    auth: 'guest',
    components: {
        materialCard
    },
    data () {
        return {
            isLoading: false,
            successSnackbar: false,
            errorSnackbar: false,
            roles: [],
            registerForm: {
                role: null,
                name: null,
                email: null,
                phone: null,
                institution: null,
                skills: null,
                qualification: null,
                interests: [],
                trade_lic_no: null,
                ugc_no: null,
                address: null,
                password: null,
                password_confirmation: null
            },
            loginForm: {
                email: null,
                password: null,
            },
            interests: [],
            tab: null,
        }
    },
    methods: {
        roleChanged () {
            for (let key in this.registerForm)
                if (key !== 'role')
                    if (key == 'interests')
                        this.registerForm[key] = []
                    else
                        this.registerForm[key] = null
        },
        async registerSubmit () {
            this.isLoading = true
            await this.$axios
                .post('auth/register', this.registerForm)
                .then((res) => {
                    this.isLoading = false
                    this.successSnackbar = true
                    this.loginForm.email = this.registerForm.email
                    this.loginForm.password = this.registerForm.password
                    this.loginSubmit()
                    this.roleChanged()
                })
                .catch((err) => {
                    this.isLoading = false
                    this.errorSnackbar = true
                    console.log(err)
                })
        },
        async loginSubmit () {
            this.isLoading = true
            await this.$auth
                .loginWith('local', {
                    data: this.loginForm
                })
                .then(() => {
                    this.isLoading = false
                    this.loginForm.email = ''
                    this.loginForm.password = ''
                    this.$store.dispatch('notification/setNotification', {
                        type: "Success!",
                        color: "success",
                        message: `Welcome back ${this.user.name}!`
                    })
                    // this.$router.push({
                    //     path: `/dashboard/${this.user.role.slug}` // @todo redirect intended
                    // })
                })
                .catch((err) => {
                    this.isLoading = false
                    this.errorSnackbar = true
                    console.log(err)
                })
        },
    },
    computed: {
        computedRoles () {
            this.roles.forEach((r, i) => {
                r.text = r.name;
                r.value = r.id;
            })
            return this.roles
        }
    },
    async asyncData ({ params, app }) {
        const response = await app.$axios.$get('auth/register/generic');
        return {
            interests: response.interests,
            roles: response.roles
        }
    }
}
</script>
