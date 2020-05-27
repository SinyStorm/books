<template>
   <el-search-table-pagination class="mb-3"
         type="local"
         :data="Object.values(booksData)"
         pagination-layout="prev, pager, next, sizes"
         border stripe
         :columns="columns"
         :form-options="formOptions">
      <template #test="{row}">
         <el-input-number size="mini" v-model="booksData[row.id].count" :min="0" @change="change(row)"></el-input-number>
      </template>
   </el-search-table-pagination>
</template>

<script>
   import keyBy from 'lodash/keyBy'
   export default {
      name: "BookTable",
      model: {
         prop: 'books',
         event: 'book:changed'
      },
      props: {
         books: {
            required: true,
            type: Array
         }
      },
      data() {
         return {
            formOptions: {
               inline: true,
               submitBtnText: this.$t('button.search'),
               resetBtnText: this.$t('button.clear'),
               showResetBtn: true,
               forms: [
                  { prop: 'author', label: this.$t('book.table-caption.author'), fuzzy: true },
                  { prop: 'name', label: this.$t('book.table-caption.name'), fuzzy: true },
                  { prop: 'grade', label: this.$t('book.table-caption.grade'), fuzzy: true },
               ]
            },
            columns: [
               { prop: 'author', label: this.$t('book.table-caption.author'), width: '-', minWidth: '300' },
               { prop: 'name',   label: this.$t('book.table-caption.name'), width: '-', minWidth: '500' },
               { prop: 'grade',  label: this.$t('book.table-caption.grade'), width: '80' },
               { prop: 'price',  label: this.$t('book.table-caption.price'), width: '80' },
               { prop: 'count',  label: this.$t('book.table-caption.count'), width: '155', slotName: 'test' }
            ],
            booksData: keyBy(this.books, 'id')
         }
      },
      methods: {
         change(book) {
            // this.booksData[book.id].count = book.count;
            this.$emit('book:changed', Object.values(this.booksData))
         }
      }
   }
</script>

<style scoped>

</style>