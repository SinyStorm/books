<template>
   <el-container direction="vertical">
      <h1 class="text-align--center">{{ $t('login.title', [new Date().getFullYear(), new Date().getFullYear() + 1]) }}</h1>
      <el-card id="login-form">
         <el-form label-position="top" :model="model" :rules="rules" status-icon ref="login-form">
            <el-form-item prop="login" :label="$t('login.label.login')">
               <el-input type="text" v-model="model.login" clearable></el-input>
            </el-form-item>
            <el-form-item prop="password" :label="$t('login.label.password')">
               <el-input type="password" v-model="model.password" autocomplete="off" clearable show-password></el-input>
            </el-form-item>
            <el-form-item class="text-align--center mb-0 mt-3">
               <el-button type="primary" @click="onSubmit">{{ $t('login.submit') }}</el-button>
               <el-button @click="resetForm()">{{ $t('login.reset') }}</el-button>
            </el-form-item>
         </el-form>
      </el-card>
   </el-container>
</template>

<script>
   export default {
      name: "Login",
      data() {
         return {
            model: {
               login: '',
               password: ''
            },
            rules: {
               login: [
                  { required: true, trigger: 'blur', message: this.$t('login.error.login-empty')}
               ],
               password: [
                  { required: true, trigger: 'blur', message: this.$t('login.error.password-empty')}
               ]
            }
         }
      },
      methods: {
         onSubmit() {
            this.$refs['login-form'].validate(async (valid) => {
               if (valid) {
                  try {
                     await this.$store.dispatch('auth/login', this.model);
                     await this.$router.replace({ path: '/'})
                  } catch (e) {
                     console.log(e);
                     this.$message({
                        message: this.$t('message.login-fail'),
                        type: 'error',
                     });
                  }
               } else {
                  return false;
               }
            })
         },
         resetForm() {
            this.$refs['login-form'].resetFields()
         }
      }
   }
</script>

<style scoped>

</style>