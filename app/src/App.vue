// v-on為定義事件 事件名稱add-todo時呼叫addTodo(method)
<template>
  <div id="app">
    <Todos v-bind:todos="todos" v-on:delete-todo="deleteTodo"/>
    <AddTodo v-on:add-todo="addTodo" />
  </div>
</template>

<script>
import Todos from './components/Todos';
import AddTodo from './components/AddTodo';

// 初始Demo資料輸入
export default {
  name: 'App',
  components: {
    Todos,
    AddTodo
  },
  data() {
    return {
      todos: [
        {
          id: 1,
          title: 'pfsense HAProxy',
          completed: true
        },
        {
          id: 2,
          title: 'pfsense Suricata',
          completed: true
        },
        {
          id: 3,
          title: 'pfsense OpenVPN',
          completed: true
        },
        {
          id: 4,
          title: 'pfsense on Vmware',
          completed: true
        },
        {
          id: 5,
          title: 'pfsense ACME',
          completed: true
        },
        {
          id: 6,
          title: 'pfsense BIND DNS',
          completed: false
        }
      ],
    }
  },
  methods: {
    // addTodo將todo物件加入到todo的陣列清單(...是spread operator)
    addTodo(newTodoObj){
      this.todos = [...this.todos, newTodoObj];
    },
    deleteTodo(todoId){
      this.todos = this.todos.filter(todo => todo.id !== todoId);
    }
  }
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
