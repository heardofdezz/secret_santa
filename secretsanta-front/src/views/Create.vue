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

        <v-col cols="12" sm="12">
          <v-text-field
            v-model="first"
            label="First Name"
            solo-inverted
          >
          <v-col cols="12" sm="6">
          <v-text-field
            v-model="first"
            label="First Name"
            solo
          ></v-text-field>
        </v-col>
          
          </v-text-field>
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
      participants: [],
      message: ''
    }
  }
}
</script>
