export const state = () => ({
    notification: {
        type: '',
        color: '',
        message: ''
    }
})

export const getters = {
    notification (state) {
        return state.notification
    }
}

export const mutations = {
    SET_NOTIFICATION (state, notification) {
        state.notification = notification
    }
}

export const actions = {
    setNotification ({ commit }, notification) {
        commit('SET_NOTIFICATION', notification)
    },
    clearNotification ({ commit }) {
        commit('SET_NOTIFICATION', {
            type: '',
            color: '',
            message: ''
        })
    }
}
