-- Migration generated by the command below; DO NOT EDIT.
-- hydra:generate hydra migrate gen


UPDATE hydra_oauth2_flow SET requested_scope_json = cast(concat('["' ,  REPLACE(requested_scope,'|','","') ,  '"]') as json) WHERE requested_scope <> ('[]');
UPDATE hydra_oauth2_flow SET requested_at_audience_json = cast( concat('["' ,  REPLACE(requested_at_audience,'|','","') ,  '"]') as json) WHERE requested_at_audience <> ('[]');
UPDATE hydra_oauth2_flow SET amr_json = cast( concat('["' ,  REPLACE(amr,'|','","') ,  '"]') as json) WHERE amr <> ('[]');
UPDATE hydra_oauth2_flow SET granted_scope_json = cast(concat('["' ,  REPLACE(granted_scope,'|','","') ,  '"]') as json) WHERE granted_scope <> ('[]');
UPDATE hydra_oauth2_flow SET granted_at_audience_json = cast(concat('["' ,  REPLACE(granted_at_audience,'|','","') ,  '"]') as json) WHERE granted_at_audience <> ('[]');
