<template>
   <el-card>
      <div slot="header">
         <el-steps :active="step" align-center finish-status="success">
            <el-step :title="$t('order.step-one.title')" icon="el-icon-edit"></el-step>
            <el-step :title="$t('order.step-two.title')" icon="el-icon-reading"></el-step>
            <el-step :title="$t('order.step-three.title')" icon="el-icon-document"></el-step>
         </el-steps>
      </div>
      <keep-alive>
         <el-form>
            <template v-if="step===0">
               <user-info v-if="user" v-model="user.userInfo" form-name="user-form" ref="user-info"></user-info>
               <el-icon v-else name="loading"></el-icon>
            </template>
            <template v-if="step===1">
               <el-row  type="flex" justify="space-around" style="flex-wrap: wrap">
                  <div v-for="publisher in publishers" :key="publisher.id" :class="{'chosen': publisher.id === publisherId}" class="card--publisher">
                     <el-icon name="check" class="card--publisher-icon"></el-icon>
                     <el-card :body-style="{padding: 0}" class="el-card--publisher">
                        <img :src="`/assets${publisher.image}`" class="image">
                        <div style="padding: 14px;">
                           <span>{{ publisher.view }}</span>
                           <div class="text-align--right">
                              <el-button type="primary" @click="choosePublisher(publisher.id)">{{ $t('button.choose') }}</el-button>
                           </div>
                        </div>
                     </el-card>
                  </div>
               </el-row>
            </template>
            <template v-if="step===2">
               <book-table v-model="order.books"></book-table>
            </template>
            <el-form-item>
               <div class="display--flex justify--space-between">
                  <el-button v-if="step > 0" type="primary" icon="el-icon-back" @click="prev" :disabled="step === 0" :loading="loading">
                     {{ $t('order.prev') }}
                  </el-button>
                  <el-button type="primary" @click="next" v-if="step<2" :loading="loading" :disabled="disableNext" style="margin-left: auto">
                     {{ $t('order.next') }} <el-icon name="right"></el-icon>
                  </el-button>
                  <el-button type="primary" @click="next" v-if="step>=2">
                     {{ $t('order.cart') }}
                  </el-button>
               </div>
            </el-form-item>
         </el-form>
      </keep-alive>
   </el-card>
</template>

<script>
   import { User, Order} from '../../model';

   export default {
      name: "OrderSteps",
      data() {
         return {
            order: {
               books: []
            },
            step: 0,
            loading: true,
            user: null,
            publishers: [],
            publisherId: 0,
         }
      },
      watch: {
         '$route': 'fetchOrder'
      },
      methods: {
         async next() {
            this.loading = true;
            switch (this.step) {
               case 0:
                  await this.$store.dispatch('updateUser', this.user);
                  this.publishers = await this.$store.dispatch('publisher/list');
                  break;
               case 1:
                  this.order.books = await this.$store.dispatch('book/list',
                     {publisher: this.publisherId, filledBooks: this.order.books});
                  break;
               case 2:
                  this.order.publisher = { id: this.publisherId };
                  await this.$store.dispatch('confirmOrder', this.order);
                  await this.$router.replace({ path: '/cart'});
                  break;
            }
            this.loading = false;
            this.step++
         },
         prev() {
            if (this.step - 1 >= 0) this.step -= 1
         },
         choosePublisher(id) {
            if (this.publisherId !== id) {
               this.order.books = []
            }
            this.publisherId = id;
         },
         async fetchOrder() {
            this.loading = true;

            if (this.$route.params['id']) {
               this.order = await this.$store.dispatch('findOrder', this.$route.params['id']);
               if (!this.order) {
                  this.$message({
                     message: this.$t('order.not-found', [this.$route.params['id']]),
                     type: 'error'
                  });
                  return this.$router.push({path: '/cart'})
               } else {
                  this.publisherId = this.order.publisher.id
               }
            } else {
               this.order = { books: [] };
               this.publisherId = 0;
               this.step = 0
            }

            this.loading = false;
         }
      },
      computed: {
         disableNext() {
            return this.step === 1 && !this.publisherId
         }
      },
      async mounted() {
         if (!this.$store.state.user) {
            await this.$store.dispatch('loadUser', this.$store.state.auth.user.login)
         }
         this.user = new User().build(this.$store.state.user);

         await this.fetchOrder()
      }
   }
</script>

<style scoped>

</style>