// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    // Choose either "stable" for receiving highly polished,
    // or "canary" for less polished but more frequent updates
    updateChannel: 'stable',

    fontFamily: '"Fira Code", monospace',
    cursorColor: 'rgba(69, 217, 154, 0.75)',
    cursorShape: 'BLOCK',
    cursorBlink: false,
    foregroundColor: '#fff',
    backgroundColor: '#000',
    borderColor: '#333',
    css: '',
    termCSS: 'x-row {line-height: initial} .unicode-node {position: relative}',
    showHamburgerMenu: '',
    showWindowControls: '',
    padding: '14px 14px',

    colors: {
      black       : '#000000',
      red         : '#e83a30', // red
      green       : '#3BDA98', // green
      yellow      : '#F7CB1B', // yellow
      blue        : '#31A2FE', // blue
      magenta     : '#8930e8', // pink
      cyan        : '#31A2FE', // cyan
      white       : '#d0d0d0', // light gray
      lightBlack  : '#808080', // medium gray
      lightRed    : '#e83a30', // red
      lightGreen  : '#3BDA98', // green
      lightYellow : '#F7CB1B', // yellow
      lightBlue   : '#31A2FE', // blue
      lightMagenta: '#8930e8', // pink
      lightCyan   : '#31A2FE', // cyan
    },

    shell: '/usr/local/bin/zsh',
    shellArgs: ['--login'],
    env: {},
    bell: false,
    copyOnSelect: false
  },

  plugins: ['hyper-statusline', 'hyper-ligatures'],
  localPlugins: ['hyper-pacific'],
};
