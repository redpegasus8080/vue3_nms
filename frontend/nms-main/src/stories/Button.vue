<template>
  <button type="button" :class="classes" @click="onClick" :style="style">{{ label }}</button>
  <v-btn>
    Button
  </v-btn>
  <v-btn icon="mdi-vuetify">
    Button
  </v-btn>
  <v-icon icon="fas fa-plus" />
  <v-icon icon="mdi-minus" />
  <v-btn
    block
    class="text-none mb-4"
    color="indigo-darken-3"
    size="x-large"
    variant="flat"
  >
    Verify and continue
  </v-btn>
</template>

<script>
import './button.css';
import { reactive, computed } from 'vue';

export default {
  name: 'my-button',

  props: {
    label: {
      type: String,
      required: true,
    },
    primary: {
      type: Boolean,
      default: false,
    },
    size: {
      type: String,
      validator: function (value) {
        return ['small', 'medium', 'large'].indexOf(value) !== -1;
      },
    },
    backgroundColor: {
      type: String,
    },
  },

  emits: ['click'],

  setup(props, { emit }) {
    props = reactive(props);
    return {
      classes: computed(() => ({
        'storybook-button': true,
        'storybook-button--primary': props.primary,
        'storybook-button--secondary': !props.primary,
        [`storybook-button--${props.size || 'medium'}`]: true,
      })),
      style: computed(() => ({
        backgroundColor: props.backgroundColor,
      })),
      onClick() {
        emit('click');
      },
    };
  },
};
</script>
