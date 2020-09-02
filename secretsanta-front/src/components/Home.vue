<template>
  <v-container>
    <v-row class="text-center">
      <v-col cols="12">
        <v-img
          src="https://image.freepik.com/vecteurs-libre/pere-noel-secret-dans-fond-bureau_18591-8214.jpg"
          class="my-3"
          contain
          height="200"
        />
      </v-col>

      <v-col class="mb-4">
        <h1 class="display-2 font-weight-bold mb-3">
         WELCOME TO SECRETE SANTA APP.
        </h1>

        <p class="subheading font-weight-regular">What is Secret Santa?
          <br>It’s a free online Secret Santa gift exchange organizer / Kris Kringle generator! Organize a Secret Santa party with friends, family or even co-workers. After receiving the Secret Santa mail you can add your own wishlist, which will be delivered to your Secret Santa.

Each year around Christmas time people all over the world exchange gifts.
To keep things interesting though, you can randomly assign persons to each other to give a present to one another.
        </p>
      </v-col>

      <v-col
        class="mb-5"
        cols="12"
      >
        <h2 class="headline font-weight-bold mb-3">
          YOU CAN FIND A LIST OF OUR ON GOING EVENTS BELOW 
        </h2>

        <v-row justify="center">
          <a
            v-for="(next, i) in whatsNext"
            :key="i"
            :href="next.href"
            class="subheading mx-3"
            target="_blank"
          >
            {{ next.text }}
          </a>
        </v-row>
      </v-col>

      <v-col
        class="mb-5"
        cols="12"
      >
        <h2 class="headline font-weight-bold mb-3">
          Important Links
        </h2>

        <v-row justify="center">
          <a
            v-for="(link, i) in importantLinks"
            :key="i"
            :href="link.href"
            class="subheading mx-3"
            target="_blank"
          >
            {{ link.text }}
          </a>
        </v-row>
      </v-col>

      <v-col
        class="mb-5"
        cols="12"
      >
        <h2 class="headline font-weight-bold mb-3">
          Ecosystem
        </h2>

        <v-row justify="center">
          <a
            v-for="(eco, i) in ecosystem"
            :key="i"
            :href="eco.href"
            class="subheading mx-3"
            target="_blank"
          >
            {{ eco.text }}
          </a>
        </v-row>
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
  export default {
    name: 'Home',

    data: () => ({
      
    }),
  }
</script>
