// 顯示出全部(多個）代辦事項Todo的清單

<template>
    <div>
        <h2> Todo List </h2>
        <ul>
            <li v-bind:key="todo.id" v-for="todo in todos">
                <Todo v-bind:todo="todo" />
            </li>
        </ul>
    </div>
</template>

// 匯入Todo元件(components資料夾內)
<script>
import Todo from './Todo';
export default {
    name: 'Todos',
    components: {
        Todo
    },
    // 增加元件屬性
    props: [
        "todos"
    ]
}
</script>

<style scoped>

</style>