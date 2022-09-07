let
    Source = Excel.Workbook(File.Contents("C:\Users\Ganesh.Breed\OneDrive - MOYO Business Advisory\Desktop\Moyo Projects\Power BI - Best Practice\retail_analysis_webinar.xlsx"), null, true),
    Managers_Table = Source{[Item="Managers",Kind="Table"]}[Data],
    #"Changed Type" = Table.TransformColumnTypes(Managers_Table,{{"Suburb", type text}, {"Postcode", Int64.Type}, {"Manager", type text}})
in
    #"Changed Type"