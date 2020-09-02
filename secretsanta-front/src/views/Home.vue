<template>
  <div class="home">
    <HelloWorld msg=""/>
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from '@/components/Home.vue'

export default {
  name: 'Home',
  components: {
    HelloWorld
  }
}
</script>
