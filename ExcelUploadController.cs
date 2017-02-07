using OfficeOpenXml;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;



namespace ExcelUpload.Controllers
{
    public class ExcelUploadController : Controller
    {
        //
        // GET: /ExcelUpload/
        public String Index()
        {
            return "Upload Code is Ready";
        }


        [HttpPost]
        public String ExcelFilePost(HttpPostedFileBase fileData)
        {
            String filename,type;
            byte[] fileBytes=null;
            List<ExcelUpload.Models.Insurance_tbl> InsList = new List<ExcelUpload.Models.Insurance_tbl>();
            if(Request!=null)
            {
                for(int i=0;i<Request.Files.Count;i++)
                {
                    fileData = Request.Files["UploadedFile"];
                    if((fileData!=null)&&(fileData.ContentLength>0)&& (!string.IsNullOrEmpty(fileData.FileName)))
                    {
                        filename=fileData.FileName;
                        type=fileData.ContentType;
                        fileBytes=new byte[fileData.ContentLength];
                        var StreamedData=fileData.InputStream.Read(fileBytes,0,fileData.ContentLength);
                        using (var excelObj = new ExcelPackage(fileData.InputStream))
                        {
                            var currentSheet = excelObj.Workbook.Worksheets;
                            var workSheet = currentSheet.First();
                            var noOfCol=workSheet.Dimension.End.Column;
                            var noOfRow = workSheet.Dimension.End.Row;
                            //application/vnd.openxmlformats-officedocument.spreadsheetml.sheet
                            for(int r=2 ;r<=noOfRow;r++)
                            {
                                var insObj=new ExcelUpload.Models.Insurance_tbl();
                                insObj.DateOfService=Convert.ToDateTime(workSheet.Cells[r,1].Value);
                                insObj.InsuranceCode = Convert.ToString(workSheet.Cells[r, 2].Value);
                                insObj.InsuranceId = Convert.ToInt32(workSheet.Cells[r, 3].Value);
                                insObj.Name = Convert.ToString(workSheet.Cells[r, 4].Value);
                                insObj.PhoneNo = Convert.ToString(workSheet.Cells[r, 5].Value);
                                insObj.Address = Convert.ToString(workSheet.Cells[r, 6].Value);
                                insObj.Email = Convert.ToString(workSheet.Cells[r, 7].Value);
                                //insObj.SumAssured = Convert.ToDouble(workSheet.Cells[r, 8].Value);
                                insObj.Premium = Convert.ToInt32(workSheet.Cells[r, 9].Value);
                                insObj.Nominee = Convert.ToString(workSheet.Cells[r, 10].Value);
                            }
                        }
                    }
                }
            }

            return "File uploaded";
        }
	}
}