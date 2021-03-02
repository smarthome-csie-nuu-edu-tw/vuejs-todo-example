// 用於新增Todo數量
// two-way binding v-model, @submit->method: addTodo
<template>
  <div>
      <form @submit="addTodo">
          <input type="text" v-model="title" name="title">
          <button type="submit">Add</button>
      </form>
  </div>
</template>

// 讓每個代辦事項都有一個獨特的id
<script>
import { v4 as uuidv4 } from 'uuid';


export default {
    name: 'AddTodo',
    data(){
        return {
            title: ''
        }
    },
    // 新增功能t
    methods:{
        addTodo(e){
            e.preventDefault();

            const newTodoObj = {
                id: uuidv4(),
                title: this.title,
                completed: false
            }

            this.$emit('add-todo', newTodoObj);
            this.title = '';
        }
    }
}
</script>

<style scoped>

</style>>