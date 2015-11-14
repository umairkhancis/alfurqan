WickedPdf.config = {
    :wkhtmltopdf => 'C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe',
    :layout => "pdf.html",
    :margin => {    :top=> 40,
                    :bottom => 20,
                    :left=> 30,
                    :right => 30},
    :header => {:html => { :template=> 'layouts/pdf_header.html'}},
    :footer => {:html => { :template=> 'layouts/pdf_footer.html'}},
    :exe_path => 'C:\Program Files\wkhtmltopdf\bin\wkhtmltopdf.exe'
}
