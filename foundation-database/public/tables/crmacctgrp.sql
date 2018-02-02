SELECT xt.create_table('crmacctgrp', 'public', false, 'groups');

SELECT
  xt.add_constraint('crmacctgrp', 'crmacctgrp_pkey', 'PRIMARY KEY (groups_id)', 'public'),
  xt.add_constraint('crmacctgrp', 'crmacctgrp_groups_name_check', $$CHECK (groups_name <> ''::text)$$, 'public');

COMMENT ON TABLE public.crmacctgrp
  IS 'CRM Account Groups';

