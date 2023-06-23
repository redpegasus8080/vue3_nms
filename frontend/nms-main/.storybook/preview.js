/** @type { import('@storybook/vue3').Preview } */
const preview = {
  parameters: {
    actions: { argTypesRegex: "^on[A-Z].*" },
    controls: {
      matchers: {
        color: /(background|color)$/i,
        date: /Date$/,
      },
    },
  },
};

import { setup } from '@storybook/vue3';
import { registerPlugins } from '../src/plugins';
import '@/scss/style.scss';
setup((app) => {
  // Registers your app's plugins into Storybook
  registerPlugins(app);
});

export default preview;


