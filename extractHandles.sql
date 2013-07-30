select '<record><pid>' || x.pid || '</pid><owner>' || x.OWNER || '</owner><handle>' ||
-- DigiTool generated PREMIS extraction
x.handleXML.extract('//objectIdentifier/objectIdentifierValue/text()','xmlns="http://www.loc.gov/standards/premis"').getStringVal()
-- Manually created PREMIS
--x.handleXML.extract('/*[name()="premis"]/*[name()="object"]/*[name()="objectIdentifier"]/*[name()="objectIdentifierValue"]/text()','xmlns="http://www.loc.gov/standards/premis"').getStringVal() 
|| '</handle></record>' 
from (
select XMLTYPE(hm.value) as handleXML, hc.PID as PID, hc.OWNER as OWNER
from D31_REP00.HDECONTROL hc
,D31_REP00.HDEPIDMID hp
,D31_REP00.HDEMETADATA hm
where hc.pid = hp.pid
and hp.mid = hm.mid
and hm.MDID = '18'
and hc.OWNER = 'BCD03'
and hm.CREATEDATE > to_date('20130505','yyyymmddhh24mi')
) x