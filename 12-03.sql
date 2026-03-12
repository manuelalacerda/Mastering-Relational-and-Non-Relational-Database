CREATE TABLE aluno(
    ra VARCHAR2(10) PRIMARY KEY,
    nome VARCHAR2(30),
    data_cadastro DATE
);


//ADICIONANDO ALUNOS COM RA NOME E DATA
declare 
    v_ra VARCHAR2(30) := '&ra';
    v_nome VARCHAR2(40) := '&nome';
    v_data date := sysdate;
Begin
    insert into aluno values (v_ra, v_nome, v_data);
    
    Commit;
End;


select * from aluno;

///ALTERANDO A TABELA
alter table aluno add nota number;

declare
    v_ra varchar2(10) := '&ra';
    v_nota number := &nota;
begin

//ALTERANDO A NOTA
update aluno set nota = v_nota WHERE ra = v_ra;

commit;
end;

//DELETANDO O ALUNO
declare
    v_ra varchar2(10) := '&ra';
begin

delete aluno WHERE ra = v_ra;

commit;
end;
    
//Habilitando saída de dados
set serveroutput on

// LOOP

declare 
 v_contador number(2):=1;
begin
loop
 dbms_output.put_line(v_contador);
 v_contador := v_contador + 1;
 exit when v_contador >20;
end loop;
end;

//WHILE

declare 
 v_contador number(2):=1;
begin
loop
 dbms_output.put_line(v_contador);
 v_contador := v_contador + 1;
 exit when v_contador >20;
end loop;
end;

// FOR

begin
for v_contador in 1..20 loop
    dbms_output.put_line(v_contador);
    end loop;
    end;
    

// Tabuada
begin
for x in 1..10 loop
    dbms_output.put_line(x 
                        || ' x ' 
                        || 10 
                        || ' é - '
                        || x * 5);
    end loop;
end;



//PROFESSOR

begin
for x in 1..10 loop
    dbms_output.put_line(x 
                        || ' x ' 
                        || 10 
                        || ' é - '
                        || x * 10);
    end loop;
end;

// EXERCICIOS

declare 
 v_contador number(2):=1;
begin
loop
 v_contador := v_contador + 1;
 exit when v_contador >10;
 if mod(v_contador,2) = 0 then
        dbms_output.put_line('o número '||v_contador||' é par');
    else
        dbms_output.put_line('o número'||v_contador||' é impar');
    end if;
end loop;
end;

