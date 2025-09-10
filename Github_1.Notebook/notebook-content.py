# Fabric notebook source

# METADATA ********************

# META {
# META   "kernel_info": {
# META     "name": "synapse_pyspark"
# META   },
# META   "dependencies": {
# META     "lakehouse": {
# META       "default_lakehouse": "e4e4a717-fc60-4af3-9cfa-179459270eec",
# META       "default_lakehouse_name": "lake_house_Git_hub",
# META       "default_lakehouse_workspace_id": "53f0620f-225a-48c1-b7f7-1f149e5cf894",
# META       "known_lakehouses": [
# META         {
# META           "id": "e4e4a717-fc60-4af3-9cfa-179459270eec"
# META         }
# META       ]
# META     }
# META   }
# META }

# CELL ********************

# Welcome to your new notebook
# Type here in the cell editor to add code!


# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }

# CELL ********************

df = spark.read.format("csv").option("header","true").load("Files/datos_ventas_powerbi.csv")
# df now is a Spark DataFrame containing CSV data from "Files/datos_ventas_powerbi.csv".
display(df)

# METADATA ********************

# META {
# META   "language": "python",
# META   "language_group": "synapse_pyspark"
# META }
