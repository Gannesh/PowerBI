let
    Source = Excel.Workbook(File.Contents("C:\Users\Ganesh.Breed\OneDrive - MOYO Business Advisory\Desktop\Moyo Projects\Power BI - Best Practice\retail_analysis_webinar.xlsx"), null, true),
    Sales_Table = Source{[Item="Sales",Kind="Table"]}[Data],
    #"Changed Type" = Table.TransformColumnTypes(Sales_Table,{{"Date", type date}, {"Chain", type text}, {"Postcode", Int64.Type}, {"Category", type text}, {"Total Units", Int64.Type}, {"Sale Price", type number}, {"Cost Price", type number}}),
    #"Added Custom" = Table.AddColumn(#"Changed Type", "Sales", each [Sale Price]*[Total Units]),
    #"Added Custom1" = Table.AddColumn(#"Added Custom", "Cost", each [Cost Price]*[Total Units]),
    #"Added Custom2" = Table.AddColumn(#"Added Custom1", "Gross Profit", each [Sales]-[Cost]),
    #"Changed Type1" = Table.TransformColumnTypes(#"Added Custom2",{{"Sales", type number}, {"Cost", type number}, {"Gross Profit", type number}})
in
    #"Changed Type1"