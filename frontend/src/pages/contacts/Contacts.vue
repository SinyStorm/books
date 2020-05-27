<template>
   <article class="text-content">
      <p>Общество с ограниченной ответственностью <span class="text--primary">Торговый Дом «Дюна»</span></p>
      <p>Номер телефона: <strong>{{ $store.getters['phone'] }}</strong></p>
      <p>Адрес: <strong>600007, Владимирская область, г. Владимир, ул. Электрозаводская, дом 1, этаж 2, помещение 20А</strong></p>
      <p>ИНН: <strong>3328015525</strong></p>
      <p>КПП: <strong>332801001</strong></p>
      <p>ОГРН: <strong>1163328067462 свидетельство 33 № 002083928 от 31.10.2016 выдан ИФНС по Октябрьскому району г. Владимира</strong></p>
   </article>
</template>

<script>
   export default {
      name: "Contacts"
   }
</script>

<style scoped>

</style>