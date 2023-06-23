import { within, userEvent } from '@storybook/testing-library';
import MyNavi from './Navi.vue';

export default {
  title: 'Example/Navi',
  component: MyNavi,
  parameters: {
    layout: 'fullscreen',
  },
};

export const Open = {};

