package ru.sidnystorm.books.service

import org.apache.poi.xssf.usermodel.XSSFSheet
import org.springframework.stereotype.Service
import ru.sidnystorm.books.dto.Order
import org.apache.poi.xssf.usermodel.XSSFWorkbook
import ru.sidnystorm.books.enum.PublisherEnum
import ru.sidnystorm.books.util.MessageLoader
import java.io.FileOutputStream
import java.text.DateFormat
import java.text.SimpleDateFormat
import java.util.*

@Service
class XLSService {

   fun writeToFile(order: Order): String {
      val workbook = XSSFWorkbook()
      val createHelper = workbook.creationHelper

      val sheet = workbook.createSheet(order.publisher!!.name)

      var rowIdx = appendHeader(sheet, order)

      // CellStyle for count
      val countCellStyle = workbook.createCellStyle()
      countCellStyle.dataFormat = createHelper.createDataFormat().getFormat("#0")
      // CellStyle for total
      val totalCellStyle = workbook.createCellStyle()
      totalCellStyle.dataFormat = createHelper.createDataFormat().getFormat("#,##0.00")


      for (book in order.books!!) {
         val row = sheet.createRow(rowIdx++)
         val countCell = row.createCell(0)
         if (book.name != null && book.name!!.trim() != "") {
            countCell.cellStyle = countCellStyle
            countCell.setCellValue(book.count.toDouble())
            if (hasTotalColumn(order.publisher!!.id!!)) {
               val totalCell = row.createCell(1)
               totalCell.cellStyle = totalCellStyle
               totalCell.setCellValue(book.count * book.price!!)
            }
         }
      }

      val fileName = "orders_warehouse/order_${order.id}_from_${order.user?.login}_${SimpleDateFormat("yyyy-MM-dd_HH-mm").format(Date())}.xlsx"
      val fileOut = FileOutputStream(fileName)
      workbook.write(fileOut)
      fileOut.close()
      workbook.close()

      return fileName
   }

   private fun hasTotalColumn(id: Int) =  when (PublisherEnum.fromCode(id)) {
      PublisherEnum.BINOM, PublisherEnum.RUWORD, PublisherEnum.ACADEM -> true
      else -> false
   }


   private fun appendHeader(sheet: XSSFSheet, order: Order) = when (PublisherEnum.fromCode(order.publisher!!.id!!)) {
      PublisherEnum.DROFA, PublisherEnum.VENTANA -> {
         var row = sheet.createRow(0)
         var cell = row.createCell(0)
         cell.setCellValue(order.user!!.userInfo!!.inn)
         row = sheet.createRow(2)
         cell = row.createCell(0)
         cell.setCellValue(MessageLoader.getLoader().getMessage("xls.DROFA.header"))
         3
      }
      PublisherEnum.PROSVET_BL -> {
         var row = sheet.createRow(0)
         var cell = row.createCell(0)
         row = sheet.createRow(1)
         cell = row.createCell(0)
         cell.setCellValue(order.user!!.userInfo!!.inn)
         row = sheet.createRow(1)
         cell = row.createCell(0)
         cell.setCellValue(MessageLoader.getLoader().getMessage("xls.DROFA.header"))
         3
      }
      PublisherEnum.PROSVET_ME -> {
         var row = sheet.createRow(0)
         var cell = row.createCell(0)
         cell.setCellValue(order.user!!.userInfo!!.inn)
         row = sheet.createRow(1)
         cell = row.createCell(0)
         cell.setCellValue(MessageLoader.getLoader().getMessage("xls.DROFA.header"))
         2
      }
      PublisherEnum.PROSVET_VU, PublisherEnum.PROSVET_SH, PublisherEnum.PROSVET_FP -> {
         var row = sheet.createRow(0)
         var cell = row.createCell(0)
         row = sheet.createRow(3)
         cell = row.createCell(0)
         cell.setCellValue(order.user!!.userInfo!!.inn)
         row = sheet.createRow(5)
         cell = row.createCell(0)
         cell.setCellValue(MessageLoader.getLoader().getMessage("xls.DROFA.header"))
         6
      }
      PublisherEnum.BINOM, PublisherEnum.XXI -> {
         var row = sheet.createRow(0)
         var cell = row.createCell(0)
         row = sheet.createRow(1)
         cell = row.createCell(0)
         // merged
         cell.setCellValue(order.user!!.userInfo!!.inn)

         row = sheet.createRow(5)
         cell = row.createCell(0)
         cell.setCellValue(MessageLoader.getLoader().getMessage("xls.BINOM.header.1"))
         cell = row.createCell(1)
         cell.setCellValue(MessageLoader.getLoader().getMessage("xls.BINOM.header.2"))
         8
      }
      PublisherEnum.RUWORD -> {
         var row = sheet.createRow(0)
         var cell = row.createCell(0)
         row = sheet.createRow(4)
         cell = row.createCell(0)
         cell.setCellValue(MessageLoader.getLoader().getMessage("xls.RUWORD.header.1"))
         cell = row.createCell(1)
         cell.setCellValue(MessageLoader.getLoader().getMessage("xls.RUWORD.header.2"))
         5
      }
      PublisherEnum.ACADEM -> {
         var row = sheet.createRow(0)
         var cell = row.createCell(0)
         row = sheet.createRow(5)
         cell = row.createCell(0)
         cell.setCellValue(MessageLoader.getLoader().getMessage("xls.ACADEM.header.1"))
         cell = row.createCell(1)
         cell.setCellValue(MessageLoader.getLoader().getMessage("xls.ACADEM.header.2"))
         6
      }
      else -> -1
   }

}