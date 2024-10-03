create or replace package test2 is

  -- Author  : FOZILJON
  -- Created : 03.10.2024 11:53:13
  -- Purpose : 
  
procedure insTesting1;
function t1 return varchar2;
function t2 return varchar2;
function t3 return varchar2;

end test2;
/
create or replace package body test2 is

function t1 return varchar2 is  
begin
  return '1';
end;
function t2 return varchar2 is  
begin
  ------testing
  return '2';
end;
function t3 return varchar2 is  
begin
  return '3';
end;
function t4 return varchar2 is  
begin
  return '4';
end;
function getId return number
  is
  vCounter number;
begin
  select nvl(max(a.id), 0) into vCounter from testing1 a;
  return vCounter + 1;
end;
procedure insTesting1 is
  vCount number;
begin
  vCount := getId;
  insert into testing1(id, text1, text2)
  values(vCount, t1, t2);
end;
----
end test2;
/
