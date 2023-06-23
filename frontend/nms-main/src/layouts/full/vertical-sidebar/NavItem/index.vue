<script setup>
import Icon from '../Icon.vue';

const props = defineProps({ item: Object, level: Number });
</script>

<template>
    <!---Single Item-->
    <v-list-item
        :to="item.type === 'external' ? '' : item.to"
        :href="item.type === 'external' ? item.to : ''"
        density="compact"
        :disabled="item.disabled"
        :target="item.type === 'external' ? '_blank' : ''"
        class="mt-0 mb-0 pt-0 pb-0 pl-0 pr-0 rounded-0"

    >
        <!---If icon-->
        <template v-slot:prepend>
<!--            <Icon :item="item.icon" :level="level" />-->
            <v-icon v-if="level > 0" :icon="item.icon" size="16" stroke-width="1.5" class="mr-0 iconClass"></v-icon>
            <v-icon v-else :icon="item.icon" size="22" stroke-width="1.5" class="mr-0 iconClass"></v-icon>
        </template>
        <v-list-item-title>{{ item.title }}</v-list-item-title>
        <!---If Caption-->
        <v-list-item-subtitle v-if="item.subCaption" class="text-caption mt-n1 hide-menu">
            {{ item.subCaption }}
        </v-list-item-subtitle>
        <!---If any chip or label-->
        <template v-slot:append v-if="item.chip">
            <v-chip
                :color="item.chipColor"
                :class="'sidebarchip hide-menu bg-' + item.chipBgColor"
                :size="item.chipIcon ? 'small' : 'small'"
                :variant="item.chipVariant"
                :prepend-icon="item.chipIcon"
            >
                {{ item.chip }}
            </v-chip>
        </template>
    </v-list-item>
</template>
