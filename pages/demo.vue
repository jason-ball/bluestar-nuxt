<template>
  <div>
    <div v-for="quiz in $quizzes" :key="quiz">
      <Quiz :quiz="quiz" />
      <br />
    </div>
    <br />
  </div>
</template>

<script>
import Quiz from '../components/Quiz.vue'
export default {
  name: 'Demo',
  components: {
    Quiz,
  },
  auth: false,
}
</script>

<style></style>
