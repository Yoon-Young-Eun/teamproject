function exportToExcel(Tableclass, filename = '') {


            var downloadurl;
            var dataFileType = 'application/vnd.ms-excel';
            var tableSelect = document.getElementsByClassName(Tableclass);
            var tableHTMLData = tableSelect[0].outerHTML.replace(/ /g, '%20');

            // Specify file name
            filename = filename ? filename + '.xls' : 'export_excel_data.xls';

            // Create download link element
            downloadurl = document.createElement("a");

            document.body.appendChild(downloadurl);

            if (navigator.msSaveOrOpenBlob) {
                var blob = new Blob(['\ufeff', tableHTMLData], {
                    type: dataFileType
                });
                navigator.msSaveOrOpenBlob(blob, filename);
            } else {
                // Create a link to the file
                downloadurl.href = 'data:' + dataFileType + ', ' + tableHTMLData;

                // Setting the file name
                downloadurl.download = filename;

                //triggering the function
                downloadurl.click();
            }
        }
