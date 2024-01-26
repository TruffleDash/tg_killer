/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./app/views/**/*.html.erb", "./app/views/**/**/*.html.erb"],
  theme: {
    extend: {
      colors: {
        blue: '#4A90E2',
        lightBlue: '#7FBCD2',
        purple: '#9B6FCC',
        white: '#FFFFFF',
        darkBlue: '#253E66',
        darkPurple: '#5D3B8C'
      }
    },
  },
  plugins: [],
}

