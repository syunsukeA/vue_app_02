<template>
    <button type="button" @click="handleClick">私は子供です。押すとイベントが発行されます。</button>
</template>

<script>
import { defineComponent, ref } from 'vue';

export default defineComponent({
  props: {
    flag: {
      type: Boolean
    }
  },
  setup(props, { emit }) { // これ見たことあるけど意味わかってないな
    // ローカルな状態やメソッドの定義
    const handleClick = () => {
      // emitを使用してイベントを発行する
      console.log("emitは発行されています。")
      emit('childMessage', "子コンポーネントからのメッセージです。");
    }
    return {
      handleClick
    }
  }
});
</script>