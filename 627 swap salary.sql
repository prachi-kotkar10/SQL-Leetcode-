-- update Salary SET sex =
-- (
--      case sex  
--   when 'f' then 'm'
--   else 'f'
--  END 
-- );

-- or 
 update Salary set sex = if(sex = 'm', 'f', 'm');