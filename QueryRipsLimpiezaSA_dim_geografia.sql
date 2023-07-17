--DIM_GEOGRAFIA
use rips_sa_VValencia
SELECT case when LEN([strIdMunicipio])<5 then CONCAT('0',strIdMunicipio)
			else strIdMunicipio end cod_municipio
      ,[strMunicipio] desc_municipio
      ,case when LEN([strIdDepartamento])<2 then CONCAT('0',[strIdDepartamento])
			else [strIdDepartamento] end cod_departamento
      ,[strDepartamento] desc_departamento
      ,[Latitud]
      ,[Longitud]
  FROM [rips_sa_VValencia].[dbo].[CoordenadasMunicipios]