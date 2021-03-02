<template>
  <div id="app">
    <Todos v-bind:todos="todos"/>
  </div>
</template>

<script>
import Todos from './components/Todos'

// 初始Demo資料輸入
export default {
  name: 'App',
  components: {
    Todos
  },
  data() {
    return {
      todos: [
        {
          id: 1,
          title: 'pfsense HAProxy',
          complete: true
        },
        {
          id: 2,
          title: 'pfsense Suricata',
          complete: true
        },
        {
          id: 3,
          title: 'pfsense OpenVPN',
          complete: true
        },
        {
          id: 4,
          title: 'pfsense on Vmware',
          complete: true
        },
        {
          id: 5,
          title: 'pfsense ACME',
          complete: true
        },
        {
          id: 6,
          title: 'pfsense BIND DNS',
          complete: false
        }
      ],
    }
  },
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
