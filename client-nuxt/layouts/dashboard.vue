<template>
    <v-app>
        <core-notification />

        <core-filter />

        <core-toolbar />

        <core-drawer />

        <core-view />
    </v-app>
</template>

<script>
import coreFilter from '~/components/core/AppFilter';
import coreToolbar from '~/components/core/AppToolbar';
import coreDrawer from '~/components/core/AppDrawer';
import coreView from '~/components/core/AppView';
import coreNotification from '~/components/core/AppNotification';

export default {
    components: {
        coreFilter,
        coreToolbar,
        coreDrawer,
        coreView,
        coreNotification
    }
}
</script>

<style lang="scss">
/* Remove in 1.2 */
.v-datatable thead th.column.sortable i {
    vertical-align: unset;
}
</style>
