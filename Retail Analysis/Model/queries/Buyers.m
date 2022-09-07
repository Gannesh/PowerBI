let
    Source = Excel.Workbook(File.Contents("C:\Users\Ganesh.Breed\OneDrive - MOYO Business Advisory\Desktop\Moyo Projects\Power BI - Best Practice\retail_analysis_webinar.xlsx"), null, true),
    Buyers_Table = Source{[Item="Buyers",Kind="Table"]}[Data],
    #"Changed Type" = Table.TransformColumnTypes(Buyers_Table,{{"Category", type text}, {"Buyer", type text}})
in
    #"Changed Type"