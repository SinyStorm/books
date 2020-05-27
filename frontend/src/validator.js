export function inn_validator(component) {
   return (rule, value, callback) => {
      if (value === '') {
         callback(new Error(component.$t('user-info.error.inn-empty')));
      } else if (value.length !== 10 || !parseInt(value)) {
         callback(new Error(component.$t('user-info.error.inn-incorrect')));
      } else {
         callback();
      }
   }
}

export function kpp_validator(component) {
   return (rule, value, callback) => {
      if (value === '') {
         callback(new Error(component.$t('user-info.error.kpp-empty')));
      } else if (value.length !== 9 || !parseInt(value)) {
         callback(new Error(component.$t('user-info.error.kpp-incorrect')));
      } else {
         callback();
      }
   }
}

export function ogrn_validator(component) {
   return (rule, value, callback) => {
      if (value === '') {
         callback(new Error(component.$t('user-info.error.ogrn-empty')));
      } else if (value.length !== 13 || !parseInt(value)) {
         callback(new Error(component.$t('user-info.error.ogrn-incorrect')));
      } else {
         callback();
      }
   }
}

export function okpo_validator(component) {
   return (rule, value, callback) => {
      if (value === '') {
         callback(new Error(component.$t('user-info.error.okpo-empty')));
      } else if (value.length !== 10 && value.length !== 8 || !parseInt(value)) {
         callback(new Error(component.$t('user-info.error.okpo-incorrect')));
      } else {
         callback();
      }
   }
}

export function bik_validator(component) {
   return (rule, value, callback) => {
      if (value === '') {
         callback(new Error(component.$t('user-info.error.bik-empty')));
      } else if (value.length !== 9 || !parseInt(value)) {
         callback(new Error(component.$t('user-info.error.bik-incorrect')));
      } else {
         callback();
      }
   }
}