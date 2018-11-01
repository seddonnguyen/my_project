<template>
  <div class="Hello">
    <label for="time">Time</label>
    <input type="text" id="time" v-model="epochTime" readonly>
    <button @click="getEpochTime">Click here</button>
  </div>
</template>

<script>
export default {
    data() {
        return {
            epochTime: ''
        };
    },
    methods: {
        getEpochTime() {
          this.epochTime = new Date().getTime();
        }
    },
}
</script>