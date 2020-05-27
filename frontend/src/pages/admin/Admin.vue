<template>
   <el-card :header="$t('admin.title')" class="form-card">
       <user-info v-model="user" form-name="user-form" ref="user-info" :slot-rules="rules">
          <el-form-item prop="login" :label="$t('user-info.label.login')">
             <el-input type="text" v-model="user.login" clearable></el-input>
          </el-form-item>
          <el-form-item prop="password" :label="$t('user-info.label.password')">
             <el-input type="text" v-model="user.password" clearable></el-input>
          </el-form-item>
          <el-form-item prop="manager.region.id" :label="$t('user-info.label.region')">
             <el-select v-model="user.manager.id" clearable>
                <el-option
                      v-for="item in regionOptions"
                      :key="item.value"
                      :label="item.label"
                      :value="item.value">
                </el-option>
             </el-select>
          </el-form-item>
       </user-info>
      <el-row justify="space-between" type="flex">
         <el-button @click="clear">{{ $t('button.clear') }}</el-button>
         <el-button type="primary" @click="save" :loading="loading">{{ $t('button.save') }}</el-button>
      </el-row>
   </el-card>
</template>

<script>
   import {UserInfo} from '../../model';

   export default {
      name: "Admin",
      data() {
         return {
            user: new UserInfo(),
            rules: {
               login: [
                  { required: true, trigger: 'blur', message: this.$t('user-info.error.login-empty')}
               ],
               password: [
                  { required: true, trigger: 'blur', message: this.$t('user-info.error.password-empty')}
               ],
               'manager.id': [
                  { required: true, trigger: 'blur', message: this.$t('user-info.error.region-empty')}
               ]
            },
            loading: false,
            regionOptions: []
         }
      },
      methods: {
         clear() {
            this.user = new UserInfo()
         },
         save() {
            this.$refs['user-info'].$refs['user-form'].validate(async (valid) => {
               let message = 'message.user-add.success';
               let type = 'success';
               if (valid) {
                  this.loading = true;
                  try {
                     await this.$store.dispatch('admin/addUser', this.user);
                     this.clear()
                  } catch (e) {
                     switch(e.response.status) {
                        case 400:
                           message = 'message.user-add.fail-validate';
                           type = 'error';
                           break;
                        case 409:
                           message = 'message.user-add.fail-duplicate';
                           type = 'error';
                           break;
                     }
                  }

                  this.$message({
                     message: this.$t(message),
                     type: type
                  });
               } else {
                  return false;
               }
               this.loading = false
            })
         }
      },
      async mounted() {
         this.regionOptions = await this.$store.dispatch('region/list')
      }
   }
</script>

<style scoped>
   .el-select { width: 100%; }
</style>