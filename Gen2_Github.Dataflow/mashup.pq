[DefaultOutputDestinationSettings = [DestinationDefinition = [Kind = "Reference", QueryName = "DefaultDestination", IsNewTarget = true], UpdateMethod = [Kind = "Replace"], DestinationTypeSettings = [Kind = "Table"]], StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared DefaultDestination = Lakehouse.Contents([EnableFolding = false]){[workspaceId = "53f0620f-225a-48c1-b7f7-1f149e5cf894"]}[Data]{[lakehouseId = "e4e4a717-fc60-4af3-9cfa-179459270eec"]}[Data];
[BindToDefaultDestination = true]
shared camara_seguridad_blue_express = let
  Origen = Csv.Document(Web.Contents("https://eureka595-my.sharepoint.com/personal/angeltroncoso_eureka595_onmicrosoft_com/Documents/Aplicaciones/Microsoft Power Query/Uploaded Files/camara_seguridad_blue_express.csv"), [Delimiter = ",", Columns = 6, Encoding = 65001, QuoteStyle = QuoteStyle.None]),
  #"Encabezados promovidos" = Table.PromoteHeaders(Origen, [PromoteAllScalars = true]),
  #"Tipo de columna cambiado" = Table.TransformColumnTypes(#"Encabezados promovidos", {{"id", Int64.Type}, {"timestamp", type datetime}, {"ubicacion", type text}, {"camara_id", type text}, {"nivel_alerta", type text}, {"evento", type text}}, "es")
in
  #"Tipo de columna cambiado";
