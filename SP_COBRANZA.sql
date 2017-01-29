CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_rpt_cobranza`(
IN op int,
IN p_periodo int,
IN p_anio int,
IN p_medidor int
)
BEGIN
DECLARE v_periodo int;
DECLARE v_periodoAnt int;
DECLARE v_anio int;
DECLARE v_anioAnt int;

if(op=1) then
/*SE OBTIENEN LOS DATOS DEL COLONO, ASI COMO MEDIDOR Y SU RESPECTIVOS DATOS DE CONTRATO*/
SELECT
	a.id_lote, 
    a.id_manzana, 
    c.nombre, 
    b.manzana, 
    a.lote, 
    e.cuota, 
    a.metros_cuadrados,  
    d.contrato, 
    d.medidor, 
    d.id_medidor
    FROM gestion_granjas.cat_lotes a inner join gestion_granjas.cat_manzanas b
    on a.id_manzana=b.id_manzana 
    left join gestion_granjas.cat_colonos c 
    on a.id_colono=c.id_colono 
    left join gestion_granjas.cat_medidores d
    on a.id_lote=d.id_lote
    left join gestion_granjas.cuotas_base_agua e
    on d.id_medidor=e.id_factor
    where e.periodo=p_periodo and e.anio=p_anio and  a.estatus='A'  order by a.id_manzana, a.id_lote asc;
elseif(op=2)then
/*SE OBTIENEN LAS LECTURAS ANTERIORES, ACTUALES Y CONSUMOS */
set v_periodoAnt=p_periodo-1;
    set v_anioAnt=p_anio;
    if(v_periodoAnt=0)then
		set v_periodoAnt=12;
		set v_anioAnt=p_anio-1;
	end if;
    
	SELECT 
		a.id_lectura, 
        a.id_medidor,
        ifnull((SELECT b.lectura from gestion_granjas.reg_lecturas b WHERE b.id_medidor=a.id_medidor and b.periodo=v_periodoAnt and b.anio=v_anioAnt),0) as lec_anterior, 
        a.lectura, 
        ifnull(a.lectura-ifnull((SELECT b.lectura from gestion_granjas.reg_lecturas b WHERE b.id_medidor=a.id_medidor and b.periodo=v_periodoAnt and b.anio=v_anioAnt),0),0) as consumo,
        a.periodo,
        a.anio, 
        a.estatus 
	from gestion_granjas.reg_lecturas a 
    WHERE a.id_medidor=p_medidor and periodo=p_periodo and anio=p_anio;
elseif(op=3) then
/*SE OBTINEN LOS CBA ANUALES, Y CBA ASIGNADO AL MES EN CURSO  CORRESPONDIENTES A CADA MEDIDOR*/
	SELECT 
		sum(cuota) as anual, 
        (SELECT sum(cuota) FROM gestion_granjas.cuotas_base_agua where id_factor=p_medidor and periodo<=p_periodo and anio=p_anio) as al_momento
	FROM 
		gestion_granjas.cuotas_base_agua 
    where 
		id_factor=p_medidor and anio=p_anio;
elseif(op=4) then

SELECT 
	a.id_medidor,
   ifnull((SELECT b.lectura  from gestion_granjas.reg_lecturas b WHERE b.id_medidor=a.id_medidor 
    and b.periodo=date_format(DATE_ADD(concat(a.anio,"-",a.periodo,"-01"),INTERVAL -1 MONTH ),'%m')
    and b.anio=date_format(DATE_ADD(concat(a.anio,"-",a.periodo,"-01"),INTERVAL -1 MONTH ),'%Y')),0) as lec_ant, 
    a.lectura, 
    ifnull((SELECT a.lectura - ifnull(b.lectura,0)  from gestion_granjas.reg_lecturas b WHERE b.id_medidor=a.id_medidor 
    and b.periodo=date_format(DATE_ADD(concat(a.anio,"-",a.periodo,"-01"),INTERVAL -1 MONTH ),'%m')
    and b.anio=date_format(DATE_ADD(concat(a.anio,"-",a.periodo,"-01"),INTERVAL -1 MONTH ),'%Y')),a.lectura) as consumo,
    a.periodo,
    a.anio, 
    a.estatus 
from gestion_granjas.reg_lecturas a WHERE id_medidor=p_medidor and periodo<=p_periodo and anio=p_anio and estatus='A';

elseif(op=5) then
SELECT 
	consumo,
    tarifa, 
    cuota_tarifa,
    importe 
FROM 
	gestion_granjas.kardex_servicios_detalle 
where 
	id_factor=p_medidor and id_servicio=3 and id_concepto=1 and periodo=p_periodo and anio=p_anio;


end if;
END