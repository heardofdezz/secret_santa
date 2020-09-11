<template>
  <div class="create">
    <h1>My Secret Santa </h1>
  <v-form
    v-model="event"
    >
    <v-container>
    <v-row>

        <v-col cols="12" sm="3">
          <v-text-field
            v-model="host"
            label="Host"
            solo-inverted
          ></v-text-field>
        </v-col>
        <v-col cols="12" sm="3">
              <v-menu
        ref="menu"
        v-model="menu"
        :close-on-content-click="false"
        :return-value.sync="date"
        transition="scale-transition"
        offset-y
        max-width="290px"
        min-width="290px"
      >
        <template v-slot:activator="{ on, attrs }">
          <v-text-field
            v-model="date"
            label="Date"
            readonly
            v-bind="attrs"
            v-on="on"
            solo-inverted
          ></v-text-field>
        </template>
        <v-date-picker
          v-model="date"
          no-title
          scrollable
        >
          <v-spacer></v-spacer>
          <v-btn text color="primary" @click="menu = false">Cancel</v-btn>
          <v-btn text color="primary" @click="$refs.menu.save(date)">OK</v-btn>
        </v-date-picker>
      </v-menu>
    </v-col>
    <v-spacer></v-spacer>
        <v-col cols="12" sm="3">
          <v-text-field
            v-model="location"
            label="Location"
            solo-inverted
          ></v-text-field>
        </v-col>
         <v-col cols="12" sm="3">
          <v-text-field
            v-model="amount"
            label="Amount to spend in €"
            solo-inverted
          ></v-text-field>
        </v-col>
        <h2>{{participants.label}} </h2>

        <v-col >
          <v-text-field 
          v-model="participants.users.name"
          solo-inverted
          label="Host Name"
          >
          </v-text-field>
          <v-text-field 
          v-model="participants.users.email"
          solo-inverted
          label="Email"
          ></v-text-field>
        </v-col>
      </v-row>
    <v-checkbox
      v-model="checkbox"
      :rules="[v => !!v || 'You must have permission to continue!']"
      label="Yes, I have permission to use the participant's 
      e-mail addresses for Secret Santa?"
      required
    ></v-checkbox>
  </v-container>
    </v-form>
      <v-btn  depressed small color="red darken-4">Create your Event!</v-btn>

  </div>
</template>


<script>
export default {
  name: 'Create',
  data () {
    return { 
      date:'',
      host: '',
      location: '',
      amount: '',
      message: '',
      participants: {
        label: 'Participants Name & Email',
        users: [
          {name: '', email: ''},
        ]
      },
    }
  },
  // Created(){
  //   this.checkCreated()
  // },
  methods: {
    
    created(){
      this.$http.plain.post('/create', 
      {date: this.date, host: this.host, location: this.location, amount: this.amount, message: this.message, participants: this.participants})
      .then(response => this.createSuccessful(response)).catch(error => this.createFailed(error))
    },
    createSuccessful(response){
        if(!response.data) {
          this.createFailed(response)
          return
        }
        this.$router.replace('/')
    },
    createFailed(error){
      this.error = (error.response && error.response.data && error.response.data.error)
    },
    // checkCreated(){
    //   if (data.) {
    //     this.$router.replace('/')
    //   }
    // }
    // addParticipants: function(){
    // //  var element = document.createElement('')
    //   var element = document.querySelector('v-col.participant')
    //   element.classList.add(element)
    // }
  }
}
</script>
