<template>
   <div>
      <el-card v-for="order in orders" :key="order.id" class="mb-3">
         <div  class="display--flex justify--space-between">
         <div>
            {{ $t('order.view', [order.id, order.date.toLocaleDateString()])}}<br/>
            {{ $t('order.publisher' , [order.publisher.name]) }}
         </div>
         <div>
            <el-button type="primary" @click="$router.push({path: `/order/${order.id}`})">{{ $t('button.change') }}</el-button>
            <el-button v-if="!order.formed" type="success" @click="form(order)" :loading="loading">{{ $t('button.form') }}</el-button>
         </div>
         </div>
      </el-card>
   </div>
</template>

<script>
   export default {
      name: "Cart",
      data() {
         return {
            loading: false
         }
      },
      computed: {
         orders() {
            return this.$store.state.orders
         }
      },
      methods: {
         async form(order) {
            this.loading = true;
            try {
               await this.$store.dispatch("formOrder", order.id)
            } catch (e) {
               console.error(e);
               this.$message({
                  message: this.$t('order.fail-form'),
                  type: 'error'
               })
            }
            this.loading = false;
         }
      },
      async mounted() {
         if (!this.$store.state.user) {
            await this.$store.dispatch('loadUser', this.$store.state.auth.user.login)
         }
         await this.$store.dispatch('listOrders')
      }
   }
</script>

<style scoped>

</style>