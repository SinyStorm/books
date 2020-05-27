<template>
   <el-form label-position="left" label-width="auto" :model="userInfo" :rules="rules" status-icon :ref="formName">
      <slot></slot>
      <el-form-item prop="name" :label="$t('user-info.label.name')">
         <el-input type="text" v-model="userInfo.name" clearable></el-input>
      </el-form-item>
      <el-form-item prop="address" :label="$t('user-info.label.address')">
         <el-input type="text" v-model="userInfo.address" clearable></el-input>
      </el-form-item>
      <el-form-item prop="inn" :label="$t('user-info.label.inn')">
         <el-input type="text" v-model="userInfo.inn" clearable></el-input>
      </el-form-item>
      <el-form-item prop="kpp" :label="$t('user-info.label.kpp')">
         <el-input type="text" v-model="userInfo.kpp" clearable></el-input>
      </el-form-item>
      <el-form-item prop="ogrn" :label="$t('user-info.label.ogrn')">
         <el-input type="text" v-model="userInfo.ogrn" clearable></el-input>
      </el-form-item>
<!--      <el-form-item prop="okpo" :label="$t('user-info.label.okpo')">-->
<!--         <el-input type="text" v-model="userInfo.okpo" clearable></el-input>-->
<!--      </el-form-item>-->
      <el-form-item prop="bank" :label="$t('user-info.label.bank')">
         <el-input type="text" v-model="userInfo.bank" clearable></el-input>
      </el-form-item>
      <el-form-item prop="bik" :label="$t('user-info.label.bik')">
         <el-input type="text" v-model="userInfo.bik" clearable></el-input>
      </el-form-item>
<!--      <el-form-item prop="bankAddress" :label="$t('user-info.label.bank_address')">-->
<!--         <el-input type="text" v-model="userInfo.bankAddress" clearable></el-input>-->
<!--      </el-form-item>-->
      <el-form-item prop="checkingAccount" :label="$t('user-info.label.checking_account')">
         <el-input type="text" v-model="userInfo.checkingAccount" clearable></el-input>
      </el-form-item>
<!--      <el-form-item prop="correspondentAccount" :label="$t('user-info.label.correspondent_account')">-->
<!--         <el-input type="text" v-model="userInfo.correspondentAccount" clearable></el-input>-->
<!--      </el-form-item>-->
      <el-form-item prop="phone" :label="$t('user-info.label.phone')">
         <el-input type="text" v-model="userInfo.phone" clearable></el-input>
      </el-form-item>
      <el-form-item prop="email" :label="$t('user-info.label.email')">
         <el-input type="text" v-model="userInfo.email" clearable></el-input>
      </el-form-item>
   </el-form>
</template>

<script>
   import { UserInfo } from '../model';
   import {bik_validator, inn_validator, kpp_validator, ogrn_validator, okpo_validator} from '../validator';

   export default {
      name: "UserInfo",
      model: {
         prop: 'userInfo'
      },
      props: {
         userInfo: {
            type: UserInfo
         },
         formName: {
            type: String,
            required: true
         },
         slotRules: {
            type: Object
         }
      },
      data() {
         return {
            rules: {
               name: [
                  { required: true, trigger: 'blur', message: this.$t('user-info.error.name-empty')}
               ],
               address: [
                  { required: true, trigger: 'blur', message: this.$t('user-info.error.address-empty')}
               ],
               inn: [
                  { validator: inn_validator(this), trigger: 'blur', required: true }
               ],
               kpp: [
                  { validator: kpp_validator(this), trigger: 'blur', required: true}
               ],
               ogrn: [
                  { validator: ogrn_validator(this), trigger: 'blur', required: true}
               ],
               okpo: [
                  { validator: okpo_validator(this), trigger: 'blur', required: true}
               ],
               bik: [
                  { validator: bik_validator(this), trigger: 'blur', required: true}
               ],
               bank: [
                  { required: true, trigger: 'blur', message: this.$t('user-info.error.bank-empty')}
               ],
               bankAddress: [
                  { required: true, trigger: 'blur', message: this.$t('user-info.error.bank_address-empty')}
               ],
               checkingAccount: [
                  { required: true, trigger: 'blur', message: this.$t('user-info.error.checking_account-empty')}
               ],
               correspondentAccount: [
                  { required: true, trigger: 'blur', message: this.$t('user-info.error.correspondent_account-empty')}
               ],
               phone: [
                  { required: true, trigger: 'blur', message: this.$t('user-info.error.phone-empty')}
               ],
               email: [
                  { required: true, trigger: 'blur', message: this.$t('user-info.error.email-empty')}
               ],
               ...this.slotRules
            }
         }
      }
   }
</script>

<style scoped>

</style>