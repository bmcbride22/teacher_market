module.exports = {
  content: [
    "./app/views/**/*.{html,html.erb,erb}",
    "./app/views/devise/**/*.{html,html.erb,erb}",
    "./app/frontend/components/**/*.{vue,js,ts,jsx,tsx}",
    "./app/frontend/**/*.{vue,js,ts,jsx,tsx}",
    "./app/**/*.{vue,js,ts,jsx,tsx}"
  ],
  theme: {
    extend: {
      colors: {
        bossanova: {
          50: "#f3effe",
          100: "#eae2fd",
          200: "#d9cbfa",
          300: "#c5acf5",
          400: "#b38aef",
          500: "#a86ee6",
          600: "#9e52d9",
          700: "#8c43bf",
          800: "#70399a",
          900: "#3e2454"
        }
      }
    }
  },
  plugins: [require("@tailwindcss/forms"), require("@tailwindcss/aspect-ratio")]
};
