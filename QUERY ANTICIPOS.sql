select a.*,c.id_medidor,d.* from detalle_anticipos a
left join cat_lotes b on  a.id_factor=b.id_colono 
left join  cat_medidores c on c.id_lote=b.id_lote
left join (select id_factor,sum(saldo_pagado)  from kardex_servicios d where  d.id_servicio=3 and periodo>='02' and anio>='2017' group by 1) d on
c.id_medidor=d.id_factor ;
-- where a.estatus='A';
select * from saldo_anticipos;
select * from detalle_anticipos;
select * from gestion_granjas.kardex_servicios where id_factor=246 and id_servicio=3 and anio='2017';
select * from gestion_granjas.kardex_servicios where id_factor=334 and id_servicio=3 and anio='2017';

select * from detalle_anticipos  a where id_factor='344';

select * from saldo_anticipos  a where id_factor='344';


select * from gestion_granjas.kardex_servicios where id_factor=333 and id_servicio=3 and anio='2017' and periodo='06';
select * from gestion_granjas.kardex_servicios_detalle where id_factor=138 and id_servicio=3 and anio='2017' and periodo='06';