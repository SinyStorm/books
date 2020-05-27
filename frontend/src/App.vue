<template>
  <div id="app" v-if="$store.state.localized">
    <el-container>
      <el-header height="70">
        <el-row :gutter="20" type="flex" align="middle" justify="space-between" class="m-0">
            <span id="main-title">{{ $t('header.title') }}</span>
            <el-menu :router="true" mode="horizontal" :default-active="$route.name">
              <el-menu-item v-for="route in $router.options.routes.filter(r=>r.nav)" :key="route.name"
                            :index="route.name" :route="route">
                {{ $t(`nav.title.${route.name}`) }}
              </el-menu-item>
              <li v-if="$store.state.auth.status.loggedIn" class="el-menu-item" style="border-bottom-color: transparent;" @click="logout">
                 <el-icon name="switch-button" class="el-link el-link--danger is-bold"></el-icon>
              </li>
            </el-menu>
            <el-link id="phone-link" type="primary">{{ $store.getters['phone'] }}</el-link>
            <el-button v-if="$store.state.auth.status.loggedIn" type="primary" @click="dialogVisible = true">{{ $t('header.callback') }}</el-button>
        </el-row>
      </el-header>
      <el-main>
        <router-view></router-view>
      </el-main>

       <el-dialog
             :title="$t('callback.title')"
             :visible.sync="dialogVisible"
             width="30%"
             :before-close="clearCallbackInfo">
          <el-form :model="callbackInfo" :rules="rules" ref="callback-form">
             <el-form-item :label="$t('callback.name')" prop="name">
                <el-input v-model="callbackInfo.name" autocomplete="off"></el-input>
             </el-form-item>
             <el-form-item :label="$t('callback.phone')" prop="phone">
                <el-input type="phone" v-model="callbackInfo.phone" autocomplete="off"></el-input>
             </el-form-item>
          </el-form>
          <span slot="footer" class="dialog-footer">
             <el-button :loading="sendingCallback" @click="closeDialog">{{ $t('button.close') }}</el-button>
             <el-button :loading="sendingCallback" type="primary" @click="sendCallback">{{ $t('button.send') }}</el-button>
          </span>
       </el-dialog>

      <el-footer>

      </el-footer>
    </el-container>
  </div>
</template>

<script>
   import CallbackService from './service/callback.service'

  export default {
    name: 'App',
    data() {
      return {
         dialogVisible: false,
         sendingCallback: false,
         callbackInfo: {
            name: '',
            phone: '',
         },
         rules: {}
      }
    },
    methods: {
      async logout() {
        await this.$store.dispatch('auth/logout');
        return this.$router.push('/login');
      },
       clearCallbackInfo(done) {
          this.callbackInfo.name = '';
          this.callbackInfo.phone = '';
         done()
       },
       closeDialog() {
          this.dialogVisible = false;
          this.callbackInfo.name = '';
          this.callbackInfo.phone = '';
       },
       async sendCallback() {
          this.$refs['callback-form'].validate(async (valid) => {
             if (!valid) return false;

             this.sendingCallback = true;

             try {
                const data = {
                   userId: this.$store.state.user?.id || null,
                   ...this.callbackInfo
                };

                await CallbackService.sendCallbackRequest(data);
                this.dialogVisible = false;
                this.callbackInfo.name = '';
                this.callbackInfo.phone = '';
                this.$message({
                   message: this.$t('callback.success'),
                   type: 'success'
                });
             } catch (e) {
                console.error(e);
                this.$message({
                   message: this.$t('callback.error'),
                   type: 'error'
                });
             }

             this.sendingCallback = false;

          })
       }
    },
    created() {
      if (!this.$store.state.localized) {
        this.$http.get('/locale/ru.json').then(locale => {
          this.$i18n.mergeLocaleMessage("ru", locale.body);
          this.rules = {
             name: [
                { required: true, trigger: 'blur', message: this.$t('callback.name-empty')}
             ],
             phone: [
                { required: true, trigger: 'blur', message: this.$t('callback.phone-empty')}
             ]
          };
          this.$store.state.localized = true
        })
      }
    },
    mounted() {
      t = this
    }
  }
</script>