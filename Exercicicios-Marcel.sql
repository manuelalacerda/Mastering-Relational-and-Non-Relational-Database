// Exercícios de PLSQL – Prof. Ms Marcel

//EXERCICIO 01 – Criar um bloco PL-SQL para calcular o valor do novo 
//salário mínimo que deverá ser de 25% em cima do atual, que é de R$ 
//???.  
    
declare
    v_sal number(10,2) := &salario;
    v_sal_final number(10,2) := v_sal * 1.25; -- Aplica os 25% de aumento
begin
    dbms_output.put_line('Salario Atual: R$ '||v_sal);
    dbms_output.put_line('Novo Salario (com + 25%): R$ '||v_sal_final);
end;
    
//EXERCÍCIO 02 – Criar um bloco PL-SQL para calcular o valor em 
//REAIS de 45 dólares, sendo que o valor do câmbio a ser considerado 
//é de R$ ??? no qual estes valores deverão ser constantes dentro do 
//bloco.
    
declare
    C_DOLAR CONSTANT NUMBER(10,2) := 45.00;
    C_CAMBIO CONSTANT NUMBER(10,2) := 5.00; -- Valor de câmbio exemplo
    v_reais NUMBER(10,2);
begin
    v_reais := C_DOLAR * C_CAMBIO;
    dbms_output.put_line('Valor em Dólares: US$ '||C_DOLAR);
    dbms_output.put_line('Valor convertido em Reais: R$ '||v_reais);
end;

//EXERCÍCIO 03 – Criar um bloco PL-SQL para converter em REAIS os 
//dólares informados, sendo que o valor do Câmbio a ser considerado é 
//de ????.

declare
    v_dolar NUMBER(10,2) := &quantidade_dolares;
    v_cambio NUMBER(10,2) := &valor_cambio;
    v_reais NUMBER(10,2);
begin
    v_reais := v_dolar * v_cambio;
    dbms_output.put_line('US$ '||v_dolar||' na cotação de '||v_cambio||' equivale a R$ '||v_reais);
end;

//EXERCÍCIO 04 – Criar um bloco PL-SQL para calcular o valor das 
//parcelas de uma compra de um carro, nas seguintes condições:  
//OBSERVAÇÃO:  
//1 - Parcelas para aquisição em 10 pagamentos.  
//2 - O valor total dos juros é de 3% e deverá ser aplicado sobre o 
//montante financiado  
//3 – No final informar o valor de cada parcela.

declare
    v_valor_carro NUMBER(10,2) := &valor_total_carro;
    v_total_com_juros NUMBER(10,2);
    v_parcela NUMBER(10,2);
begin
    v_total_com_juros := v_valor_carro * 1.03; -- Aplica 3% de juros
    v_parcela := v_total_com_juros / 10;
    dbms_output.put_line('Valor total financiado (com juros): R$ '||v_total_com_juros);
    dbms_output.put_line('Valor de cada parcela (10x): R$ '||v_parcela);
end;

//EXERCÍCIO 05 – Criar um bloco PL-SQL para calcular o valor de cada 
//parcela de uma compra de um carro, nas seguintes condições: - Parcelas para aquisição em 6 pagamentos.  - Parcelas para aquisição em 12 pagamentos.  - Parcelas para aquisição em 18 pagamentos.  
//OBSERVAÇÃO:  
//1 – Deverá ser dada uma entrada de 20% do valor da compra.  
//2 – Deverá ser aplicada uma taxa juros, no saldo restante, nas 
//seguintes condições:  
//3 – No final informar o valor das parcelas para as 3 formas de 
//pagamento, com o Valor de aquisição de 10.000. 
//A – Pagamento em 6 parcelas: 10%.  
//B – Pagamento em 12 parcelas: 15%.  
//C – Pagamento em 18 parcelas: 20%. 

declare
    v_total number(10,2) := 10000; -- Valor de aquisição fixo
    v_entrada v_total%type := v_total * 0.2; -- 20% de entrada
    v_financiado v_total%type := v_total * 0.8; -- Saldo restante
    v_parcela v_total%type;
begin
    dbms_output.put_line('Valor do Carro: R$ '||v_total);
    dbms_output.put_line('Entrada (20%): R$ '||v_entrada);
    dbms_output.put_line('---');

    -- Opção A: 6 parcelas com 10% de juros
    v_parcela := (v_financiado * 1.1) / 6;
    dbms_output.put_line('Opção 6x (10% juros): R$'||v_parcela);

    -- Opção B: 12 parcelas com 15% de juros
    v_parcela := (v_financiado * 1.15) / 12;
    dbms_output.put_line('Opção 12x (15% juros): R$'||v_parcela);

    -- Opção C: 18 parcelas com 20% de juros
    v_parcela := (v_financiado * 1.2) / 18;
    dbms_output.put_line('Opção 18x (20% juros): R$'||v_parcela);
end;