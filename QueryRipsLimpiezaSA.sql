/****** Script for SelectTopNRows command from SSMS  ******/
use rips_sa_VValencia
SELECT substring([departamento],3,2) cod_departamento
      ,SUBSTRING(municipio,3,5) cod_departamento
      ,substring(annio,3,4) annio
      ,trim('(),'' ' FROM replace(tipo_atencion,'''','')) tipo_atencion
      ,left(trim('(),'' ' FROM replace(diagnostico,'''','')),4) cod_diagnostico
	  ,substring(trim('(),'' ' FROM replace(diagnostico,'''','')),8,LEN(diagnostico)) desc_diagnostico
      ,[numero_atenciones]
  FROM  [rips_sa_VValencia].[dbo].[rips_sa_VValencia]