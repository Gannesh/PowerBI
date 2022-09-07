let
    Source = Excel.Workbook(File.Contents("C:\Users\Ganesh.Breed\OneDrive - MOYO Business Advisory\Desktop\Moyo Projects\Power BI - Best Practice\retail_analysis_webinar.xlsx"), null, true),
    Dates_Table = Source{[Item="Dates",Kind="Table"]}[Data],
    #"Changed Type" = Table.TransformColumnTypes(Dates_Table,{{"Date", type date}, {"Financial Year", type text}, {"FY Qtr", type text}, {"FY Month", Int64.Type}})
in
    #"Changed Type"