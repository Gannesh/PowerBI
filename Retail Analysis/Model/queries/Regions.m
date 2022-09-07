let
    Source = Excel.Workbook(File.Contents("C:\Users\Ganesh.Breed\OneDrive - MOYO Business Advisory\Desktop\Moyo Projects\Power BI - Best Practice\retail_analysis_webinar.xlsx"), null, true),
    Regions_Table = Source{[Item="Regions",Kind="Table"]}[Data],
    #"Changed Type" = Table.TransformColumnTypes(Regions_Table,{{"State", type text}, {"Suburb", type text}, {"Postcode", Int64.Type}})
in
    #"Changed Type"