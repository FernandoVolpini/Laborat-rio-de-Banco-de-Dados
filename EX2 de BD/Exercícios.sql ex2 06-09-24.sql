INSERT INTO tb_funcao
VALUES ('AD_PRES', 'Presidente', 20000, 40000);

INSERT INTO tb_funcao
VALUES ('AD_VP', 'Vice Presidente Administrativo', 15000, 30000);

INSERT INTO tb_funcao
VALUES ('AD_ASST', 'Assistente Administrativo', 3000, 6000);

INSERT INTO tb_funcao
VALUES ('FI_MGR', 'Gerente Financeiro', 8200, 16000);

INSERT INTO tb_funcao
VALUES ('FI_ACCOUNT', 'Contador', 4200, 9000);

INSERT INTO tb_funcao
VALUES ('AC_MGR', 'Gerente de Contabilidade', 8200, 16000);

INSERT INTO tb_funcao
VALUES ('AC_ACCOUNT', 'Contador P�blico', 4200, 9000);

INSERT INTO tb_funcao
VALUES ('SA_MAN', 'Gerente de Vendas', 10000, 20000);

INSERT INTO tb_funcao
VALUES ('SA_REP', 'Representante de Vendas', 6000, 12000);

INSERT INTO tb_funcao
VALUES ('PU_MAN', 'Gerente de Compras', 8000, 15000);

INSERT INTO tb_funcao
VALUES ('PU_CLERK', 'Compras', 2500, 5500);

INSERT INTO tb_funcao
VALUES ('ST_MAN', 'Gerente de Estoque', 5500, 8500);

INSERT INTO tb_funcao
VALUES ('ST_CLERK', 'Estoque', 2000, 5000);

INSERT INTO tb_funcao
VALUES ('SH_CLERK', 'Despachante', 2500, 5500);

INSERT INTO tb_funcao
VALUES ('IT_PROG', 'Programador', 4000, 10000);

INSERT INTO tb_funcao
VALUES ('MK_MAN', 'Gerente de Marketing', 9000, 15000);

INSERT INTO tb_funcao
VALUES ('MK_REP', 'Representante de Marketing', 4000, 9000);

INSERT INTO tb_funcao
VALUES ( 'HR_REP', 'Representante de RH', 4000, 9000);

INSERT INTO tb_funcao
VALUES ('PR_REP', 'Representante de Rela��es P�blica', 4500, 10500);

SELECT *
FROM tb_funcao;


INSERT INTO tb_empregado    VALUES
( 100, 'Steven', 'King', 'SKING', '515.123.4567', TO_DATE('17-JUN-1987', 'dd-MON-yyyy')
, 'AD_PRES', 24000.00, NULL, NULL, 90);

INSERT INTO tb_empregado    VALUES
( 101, 'Neena', 'Kochhar', 'NKOCHHAR', '515.123.4568', TO_DATE('21-SET-1989', 'dd-MON-yyyy')
, 'AD_VP', 17000.00, NULL, 100, 90);

INSERT INTO tb_empregado    VALUES
( 102, 'Lex', 'De Haan', 'LDEHAAN', '515.123.4569', TO_DATE('13-JAN-1993', 'dd-MON-yyyy')
, 'AD_VP', 17000.00, NULL, 100, 90);

INSERT INTO tb_empregado    VALUES
( 103, 'Alexander', 'Hunold', 'AHUNOLD', '590.423.4567', TO_DATE('03-JAN-1990', 'dd-MON-yyyy')
, 'IT_PROG', 9000.00, NULL, 102, 60);

INSERT INTO tb_empregado    VALUES
( 104, 'Bruce', 'Ernst', 'BERNST', '590.423.4568', TO_DATE('21-MAI-1991', 'dd-MON-yyyy')
, 'IT_PROG', 6000.00, NULL, 103, 60);

INSERT INTO tb_empregado    VALUES
( 105, 'David', 'Austin', 'DAUSTIN', '590.423.4569', TO_DATE('25-JUN-1997', 'dd-MON-yyyy')
, 'IT_PROG', 4800.00, NULL, 103, 60);

INSERT INTO tb_empregado    VALUES
( 106, 'Valli', 'Pataballa', 'VPATABAL', '590.423.4560', TO_DATE('05-FEV-1998', 'dd-MON-yyyy')
, 'IT_PROG', 4800.00, NULL, 103, 60);

INSERT INTO tb_empregado    VALUES
( 107, 'Diana', 'Lorentz', 'DLORENTZ', '590.423.5567', TO_DATE('07-FEV-1999', 'dd-MON-yyyy')
, 'IT_PROG', 4200.00, NULL, 103, 60);

INSERT INTO tb_empregado    VALUES
( 108, 'Nancy', 'Greenberg', 'NGREENBE', '515.124.4569', TO_DATE('17-AGO-1994', 'dd-MON-yyyy')
, 'FI_MGR', 12000.00, NULL, 101, 100);

INSERT INTO tb_empregado    VALUES
( 109, 'Daniel', 'Faviet', 'DFAVIET', '515.124.4169', TO_DATE('16-AGO-1994', 'dd-MON-yyyy')
, 'FI_ACCOUNT', 9000.00, NULL, 108, 100);

INSERT INTO tb_empregado    VALUES
( 110, 'John', 'Chen', 'JCHEN', '515.124.4269', TO_DATE('28-SET-1997', 'dd-MON-yyyy')
, 'FI_ACCOUNT', 8200.00, NULL, 108, 100);

INSERT INTO tb_empregado    VALUES
( 111, 'Ismael', 'Sciarra', 'ISCIARRA', '515.124.4369', TO_DATE('30-SET-1997', 'dd-MON-yyyy')
, 'FI_ACCOUNT', 7700.00, NULL, 108, 100);

INSERT INTO tb_empregado    VALUES
( 112, 'Jose Manuel', 'Urman', 'JMURMAN', '515.124.4469', TO_DATE('07-MAR-1998', 'dd-MON-yyyy')
, 'FI_ACCOUNT', 7800.00, NULL, 108, 100);

INSERT INTO tb_empregado    VALUES
( 113, 'Luis', 'Popp', 'LPOPP', '515.124.4567', TO_DATE('07-DEZ-1999', 'dd-MON-yyyy')
, 'FI_ACCOUNT', 6900.00, NULL, 108, 100);

INSERT INTO tb_empregado    VALUES
( 114, 'Den', 'Raphaely', 'DRAPHEAL', '515.127.4561', TO_DATE('07-DEZ-1994', 'dd-MON-yyyy')
, 'PU_MAN', 11000.00, NULL, 100, 30);

INSERT INTO tb_empregado    VALUES
( 115, 'Alexander', 'Khoo', 'AKHOO', '515.127.4562', TO_DATE('18-MAI-1995', 'dd-MON-yyyy')
, 'PU_CLERK', 3100.00, NULL, 114, 30);

INSERT INTO tb_empregado    VALUES
( 116, 'Shelli', 'Baida', 'SBAIDA', '515.127.4563', TO_DATE('24-DEZ-1997', 'dd-MON-yyyy')
, 'PU_CLERK', 2900.00, NULL, 114, 30);

INSERT INTO tb_empregado    VALUES
( 117, 'Sigal', 'Tobias', 'STOBIAS', '515.127.4564', TO_DATE('24-JUL-1997', 'dd-MON-yyyy')
, 'PU_CLERK', 2800.00, NULL, 114, 30);

INSERT INTO tb_empregado    VALUES
( 118, 'Guy', 'Himuro', 'GHIMURO', '515.127.4565', TO_DATE('15-NOV-1998', 'dd-MON-yyyy')
, 'PU_CLERK', 2600.00, NULL, 114, 30);

INSERT INTO tb_empregado    VALUES
( 119, 'Karen', 'Colmenares', 'KCOLMENA', '515.127.4566', TO_DATE('10-AGO-1999', 'dd-MON-yyyy')
, 'PU_CLERK', 2500.00, NULL, 114, 30);

INSERT INTO tb_empregado
VALUES
( 120, 'Matthew', 'Weiss', 'MWEISS', '650.123.1234', TO_DATE('18-JUL-1996', 'dd-MON-yyyy')
, 'ST_MAN', 8000.00, NULL, 100, 50);
INSERT INTO tb_empregado    VALUES
( 121, 'Adam', 'Fripp', 'AFRIPP', '650.123.2234', TO_DATE('10-ABR-1997', 'dd-MON-yyyy')
, 'ST_MAN', 8200.00, NULL, 100, 50);

INSERT INTO tb_empregado    VALUES
( 122, 'Payam', 'Kaufling', 'PKAUFLIN', '650.123.3234', TO_DATE('01-MAI-1995', 'dd-MON-yyyy')
, 'ST_MAN', 7900.00, NULL, 100, 50);

INSERT INTO tb_empregado    VALUES
( 123, 'Shanta', 'Vollman', 'SVOLLMAN', '650.123.4234', TO_DATE('10-OUT-1997', 'dd-MON-yyyy')
, 'ST_MAN', 6500.00, NULL, 100, 50);

INSERT INTO tb_empregado    VALUES
( 124, 'Kevin', 'Mourgos', 'KMOURGOS', '650.123.5234', TO_DATE('16-NOV-1999', 'dd-MON-yyyy')
, 'ST_MAN', 5800.00, NULL, 100, 50);

INSERT INTO tb_empregado    VALUES
( 125, 'Julia', 'Nayer', 'JNAYER', '650.124.1214', TO_DATE('16-JUL-1997', 'dd-MON-yyyy')
, 'ST_CLERK', 3200.00, NULL, 120, 50);

INSERT INTO tb_empregado    VALUES
( 126, 'Irene', 'Mikkilineni', 'IMIKKILI', '650.124.1224', TO_DATE('28-SET-1998', 'dd-MON-yyyy')
, 'ST_CLERK', 2700.00, NULL, 120, 50);

INSERT INTO tb_empregado    VALUES
( 127, 'James', 'Landry', 'JLANDRY', '650.124.1334', TO_DATE('14-JAN-1999', 'dd-MON-yyyy')
, 'ST_CLERK', 2400.00, NULL, 120, 50);

INSERT INTO tb_empregado    VALUES
( 128, 'Steven', 'Markle', 'SMARKLE', '650.124.1434', TO_DATE('08-MAR-2000', 'dd-MON-yyyy')
, 'ST_CLERK', 2200.00, NULL, 120, 50);

INSERT INTO tb_empregado    VALUES
( 129, 'Laura', 'Bissot', 'LBISSOT', '650.124.5234', TO_DATE('20-AGO-1997', 'dd-MON-yyyy')
, 'ST_CLERK', 3300.00, NULL, 121, 50);

INSERT INTO tb_empregado    VALUES
( 130, 'Mozhe', 'Atkinson', 'MATKINSO', '650.124.6234', TO_DATE('30-OUT-1997', 'dd-MON-yyyy')
, 'ST_CLERK', 2800.00, NULL, 121, 50);

INSERT INTO tb_empregado    VALUES
( 131, 'James', 'Marlow', 'JAMRLOW', '650.124.7234', TO_DATE('16-FEV-1997', 'dd-MON-yyyy')
, 'ST_CLERK', 2500.00, NULL, 121, 50);

INSERT INTO tb_empregado    VALUES
( 132, 'TJ', 'Olson', 'TJOLSON', '650.124.8234', TO_DATE('10-ABR-1999', 'dd-MON-yyyy')
, 'ST_CLERK', 2100.00, NULL, 121, 50);

INSERT INTO tb_empregado    VALUES
( 133, 'Jason', 'Mallin', 'JMALLIN', '650.127.1934', TO_DATE('14-JUN-1996', 'dd-MON-yyyy')
, 'ST_CLERK', 3300.00, NULL, 122, 50);

INSERT INTO tb_empregado    VALUES
( 134, 'Michael', 'Rogers', 'MROGERS', '650.127.1834', TO_DATE('26-AGO-1998', 'dd-MON-yyyy')
, 'ST_CLERK', 2900.00, NULL, 122, 50);

INSERT INTO tb_empregado    VALUES
( 135, 'Ki', 'Gee', 'KGEE', '650.127.1734', TO_DATE('12-DEZ-1999', 'dd-MON-yyyy')
, 'ST_CLERK', 2400.00, NULL, 122, 50);

INSERT INTO tb_empregado    VALUES
( 136, 'Hazel', 'Philtanker', 'HPHILTAN', '650.127.1634', TO_DATE('06-FEV-2000', 'dd-MON-yyyy')
, 'ST_CLERK', 2200.00, NULL, 122, 50);

INSERT INTO tb_empregado    VALUES
( 137, 'Renske', 'Ladwig', 'RLADWIG', '650.121.1234', TO_DATE('14-JUL-1995', 'dd-MON-yyyy')
, 'ST_CLERK', 3600.00, NULL, 123, 50);

INSERT INTO tb_empregado    VALUES
( 138, 'Stephen', 'Stiles', 'SSTILES', '650.121.2034', TO_DATE('26-OUT-1997', 'dd-MON-yyyy')
, 'ST_CLERK', 3200.00, NULL, 123, 50);

INSERT INTO tb_empregado    VALUES
( 139, 'John', 'Seo', 'JSEO', '650.121.2019', TO_DATE('12-FEV-1998', 'dd-MON-yyyy')
, 'ST_CLERK', 2700.00, NULL, 123, 50);

INSERT INTO tb_empregado    VALUES
( 140, 'Joshua', 'Patel', 'JPATEL', '650.121.1834', TO_DATE('06-ABR-1998', 'dd-MON-yyyy')
, 'ST_CLERK', 2500.00, NULL, 123, 50);

INSERT INTO tb_empregado    VALUES
( 141, 'Trenna', 'Rajs', 'TRAJS', '650.121.8009', TO_DATE('17-OUT-1995', 'dd-MON-yyyy')
, 'ST_CLERK', 3500.00, NULL, 124, 50);

INSERT INTO tb_empregado    VALUES
( 142, 'Curtis', 'Davies', 'CDAVIES', '650.121.2994', TO_DATE('29-JAN-1997', 'dd-MON-yyyy')
, 'ST_CLERK', 3100.00, NULL, 124, 50);

INSERT INTO tb_empregado    VALUES
( 143, 'Randall', 'Matos', 'RMATOS', '650.121.2874', TO_DATE('15-MAR-1998', 'dd-MON-yyyy')
, 'ST_CLERK', 2600.00, NULL, 124, 50);

INSERT INTO tb_empregado    VALUES
( 144, 'Peter', 'Vargas', 'PVARGAS', '650.121.2004', TO_DATE('09-JUL-1998', 'dd-MON-yyyy')
, 'ST_CLERK', 2500.00, NULL, 124, 50);

INSERT INTO tb_empregado    VALUES
( 145, 'John', 'Russell', 'JRUSSEL', '011.44.1344.429268', TO_DATE('01-OUT-1996', 'dd-MON-yyyy')
, 'SA_MAN', 14000.00, .4, 100, 80);

INSERT INTO tb_empregado    VALUES
( 146, 'Karen', 'Partners', 'KPARTNER', '011.44.1344.467268', TO_DATE('05-JAN-1997', 'dd-MON-yyyy')
, 'SA_MAN', 13500.00, .3, 100, 80);

INSERT INTO tb_empregado    VALUES
( 147, 'Alberto', 'Errazuriz', 'AERRAZUR', '011.44.1344.429278', TO_DATE('10-MAR-1997', 'dd-MON-yyyy')
, 'SA_MAN', 12000.00, .3, 100, 80);

INSERT INTO tb_empregado    VALUES
( 148, 'Gerald', 'Cambrault', 'GCAMBRAU', '011.44.1344.619268', TO_DATE('15-OUT-1999', 'dd-MON-yyyy')
, 'SA_MAN', 11000.00, .3, 100, 80);

INSERT INTO tb_empregado    VALUES
( 149, 'Eleni', 'Zlotkey', 'EZLOTKEY', '011.44.1344.429018', TO_DATE('29-JAN-2000', 'dd-MON-yyyy')
, 'SA_MAN', 10500.00, .2, 100, 80);

INSERT INTO tb_empregado    VALUES
( 150, 'Peter', 'Tucker', 'PTUCKER', '011.44.1344.129268', TO_DATE('30-JAN-1997', 'dd-MON-yyyy')
, 'SA_REP', 10000.00, .3, 145, 80);

INSERT INTO tb_empregado    VALUES
( 151, 'David', 'Bernstein', 'DBERNSTE', '011.44.1344.345268', TO_DATE('24-MAR-1997', 'dd-MON-yyyy')
, 'SA_REP', 9500.00, .25, 145, 80);

INSERT INTO tb_empregado    VALUES
( 152, 'Peter', 'Hall', 'PHALL', '011.44.1344.478968', TO_DATE('20-AGO-1997', 'dd-MON-yyyy')
, 'SA_REP', 9000.00, .25, 145, 80);

INSERT INTO tb_empregado    VALUES
( 153, 'Christopher', 'Olsen', 'COLSEN', '011.44.1344.498718', TO_DATE('30-MAR-1998', 'dd-MON-yyyy')
, 'SA_REP', 8000.00, .2, 145, 80);

INSERT INTO tb_empregado    VALUES
( 154, 'Nanette', 'Cambrault', 'NCAMBRAU', '011.44.1344.987668', TO_DATE('09-DEZ-1998', 'dd-MON-yyyy')
, 'SA_REP', 7500.00, .2, 145, 80);

INSERT INTO tb_empregado    VALUES
( 155, 'Oliver', 'Tuvault', 'OTUVAULT', '011.44.1344.486508', TO_DATE('23-NOV-1999', 'dd-MON-yyyy')
, 'SA_REP', 7000.00, .15, 145, 80);

INSERT INTO tb_empregado    VALUES
( 156, 'Janette', 'King', 'JKING', '011.44.1345.429268', TO_DATE('30-JAN-1996', 'dd-MON-yyyy')
, 'SA_REP', 10000.00, .35, 146, 80);

INSERT INTO tb_empregado    VALUES
( 157, 'Patrick', 'Sully', 'PSULLY', '011.44.1345.929268', TO_DATE('04-MAR-1996', 'dd-MON-yyyy')
, 'SA_REP', 9500.00, .35, 146, 80);

INSERT INTO tb_empregado    VALUES
( 158, 'Allan', 'McEwen', 'AMCEWEN', '011.44.1345.829268', TO_DATE('01-AGO-1996', 'dd-MON-yyyy')
, 'SA_REP', 9000.00, .35, 146, 80);

INSERT INTO tb_empregado    VALUES
( 159, 'Lindsey', 'Smith', 'LSMITH', '011.44.1345.729268', TO_DATE('10-MAR-1997', 'dd-MON-yyyy')
, 'SA_REP', 8000.00, .3, 146, 80);

INSERT INTO tb_empregado    VALUES
( 160, 'Louise', 'Doran', 'LDORAN', '011.44.1345.629268', TO_DATE('15-DEZ-1997', 'dd-MON-yyyy')
, 'SA_REP', 7500.00, .3, 146, 80);

INSERT INTO tb_empregado    VALUES
( 161, 'Sarath', 'Sewall', 'SSEWALL', '011.44.1345.529268', TO_DATE('03-NOV-1998', 'dd-MON-yyyy')
, 'SA_REP', 7000.00, .25, 146, 80);

INSERT INTO tb_empregado    VALUES
( 162, 'Clara', 'Vishney', 'CVISHNEY', '011.44.1346.129268', TO_DATE('11-NOV-1997', 'dd-MON-yyyy')
, 'SA_REP', 10500.00, .25, 147, 80);

INSERT INTO tb_empregado    VALUES
( 163, 'Danielle', 'Greene', 'DGREENE', '011.44.1346.229268', TO_DATE('19-MAR-1999', 'dd-MON-yyyy')
, 'SA_REP', 9500.00, .15, 147, 80);

INSERT INTO tb_empregado    VALUES
( 164, 'Mattea', 'Marvins', 'MMARVINS', '011.44.1346.329268', TO_DATE('24-JAN-2000', 'dd-MON-yyyy')
, 'SA_REP', 7200.00, .10, 147, 80);

INSERT INTO tb_empregado    VALUES
( 165, 'David', 'Lee', 'DLEE', '011.44.1346.529268', TO_DATE('23-FEV-2000', 'dd-MON-yyyy')
, 'SA_REP', 6800.00, .1, 147, 80);

INSERT INTO tb_empregado    VALUES
( 166, 'Sundar', 'Ande', 'SANDE', '011.44.1346.629268', TO_DATE('24-MAR-2000', 'dd-MON-yyyy')
, 'SA_REP', 6400.00, .10, 147, 80);

INSERT INTO tb_empregado    VALUES
( 167, 'Amit', 'Banda', 'ABANDA', '011.44.1346.729268', TO_DATE('21-ABR-2000', 'dd-MON-yyyy')
, 'SA_REP', 6200.00, .10, 147, 80);

INSERT INTO tb_empregado    VALUES
( 168, 'Lisa', 'Ozer', 'LOZER', '011.44.1343.929268', TO_DATE('11-MAR-1997', 'dd-MON-yyyy')
, 'SA_REP', 11500.00, .25, 148, 80);

INSERT INTO tb_empregado    VALUES
( 169, 'Harrison', 'Bloom', 'HBLOOM', '011.44.1343.829268', TO_DATE('23-MAR-1998', 'dd-MON-yyyy')
, 'SA_REP', 10000.00, .20, 148, 80);

INSERT INTO tb_empregado    VALUES
( 170, 'Tayler', 'Fox', 'TFOX', '011.44.1343.729268', TO_DATE('24-JAN-1998', 'dd-MON-yyyy')
, 'SA_REP', 9600.00, .20, 148, 80);

INSERT INTO tb_empregado    VALUES
( 171, 'William', 'Smith', 'WSMITH', '011.44.1343.629268', TO_DATE('23-FEV-1999', 'dd-MON-yyyy')
, 'SA_REP', 7400.00, .15, 148, 80);

INSERT INTO tb_empregado    VALUES
( 172, 'Elizabeth', 'Bates', 'EBATES', '011.44.1343.529268', TO_DATE('24-MAR-1999', 'dd-MON-yyyy')
, 'SA_REP', 7300.00, .15, 148, 80);

INSERT INTO tb_empregado    VALUES
( 173, 'Sundita', 'Kumar', 'SKUMAR', '011.44.1343.329268', TO_DATE('21-ABR-2000', 'dd-MON-yyyy')
, 'SA_REP', 6100.00, .10, 148, 80);

INSERT INTO tb_empregado    VALUES
( 174, 'Ellen', 'Abel', 'EABEL', '011.44.1644.429267', TO_DATE('11-MAI-1996', 'dd-MON-yyyy')
, 'SA_REP', 11000.00, .30, 149, 80);

INSERT INTO tb_empregado    VALUES
( 175, 'Alyssa', 'Hutton', 'AHUTTON', '011.44.1644.429266', TO_DATE('19-MAR-1997', 'dd-MON-yyyy')
, 'SA_REP', 8800.00, .25, 149, 80);

INSERT INTO tb_empregado    VALUES
( 176, 'Jonathon', 'Taylor', 'JTAYLOR', '011.44.1644.429265', TO_DATE('24-MAR-1998', 'dd-MON-yyyy')
, 'SA_REP', 8600.00, .20, 149, 80);

INSERT INTO tb_empregado    VALUES
( 177, 'Jack', 'Livingston', 'JLIVINGS', '011.44.1644.429264', TO_DATE('23-ABR-1998', 'dd-MON-yyyy')
, 'SA_REP', 8400.00, .20, 149, 80);

INSERT INTO tb_empregado    VALUES
( 178, 'Kimberely', 'Grant', 'KGRANT', '011.44.1644.429263', TO_DATE('24-MAI-1999', 'dd-MON-yyyy')
, 'SA_REP', 7000.00, .15, 149, NULL);

INSERT INTO tb_empregado    VALUES
( 179, 'Charles', 'Johnson', 'CJOHNSON', '011.44.1644.429262', TO_DATE('04-JAN-2000', 'dd-MON-yyyy')
, 'SA_REP', 6200.00, .10, 149, 80);

INSERT INTO tb_empregado    VALUES
( 180, 'Winston', 'Taylor', 'WTAYLOR', '650.507.9876', TO_DATE('24-JAN-1998', 'dd-MON-yyyy')
, 'SH_CLERK', 3200.00, NULL, 120, 50);

INSERT INTO tb_empregado    VALUES
( 181, 'Jean', 'Fleaur', 'JFLEAUR', '650.507.9877', TO_DATE('23-FEV-1998', 'dd-MON-yyyy')
, 'SH_CLERK', 3100.00, NULL, 120, 50);

INSERT INTO tb_empregado    VALUES
( 182, 'Martha', 'Sullivan', 'MSULLIVA', '650.507.9878', TO_DATE('21-JUN-1999', 'dd-MON-yyyy')
, 'SH_CLERK', 2500.00, NULL, 120, 50);

INSERT INTO tb_empregado    VALUES
( 183, 'Girard', 'Geoni', 'GGEONI', '650.507.9879', TO_DATE('03-FEV-2000', 'dd-MON-yyyy')
, 'SH_CLERK', 2800.00, NULL, 120, 50);

INSERT INTO tb_empregado    VALUES
( 184, 'Nandita', 'Sarchand', 'NSARCHAN', '650.509.1876', TO_DATE('27-JAN-1996', 'dd-MON-yyyy')
, 'SH_CLERK', 4200.00, NULL, 121, 50);

INSERT INTO tb_empregado    VALUES
( 185, 'Alexis', 'Bull', 'ABULL', '650.509.2876', TO_DATE('20-FEV-1997', 'dd-MON-yyyy')
, 'SH_CLERK', 4100.00, NULL, 121, 50);

INSERT INTO tb_empregado    VALUES
( 186, 'Julia', 'Dellinger', 'JDELLING', '650.509.3876', TO_DATE('24-JUN-1998', 'dd-MON-yyyy')
, 'SH_CLERK', 3400.00, NULL, 121, 50);

INSERT INTO tb_empregado    VALUES
( 187, 'Anthony', 'Cabrio', 'ACABRIO', '650.509.4876', TO_DATE('07-FEV-1999', 'dd-MON-yyyy')
, 'SH_CLERK', 3000.00, NULL, 121, 50);

INSERT INTO tb_empregado    VALUES
( 188, 'Kelly', 'Chung', 'KCHUNG', '650.505.1876', TO_DATE('14-JUN-1997', 'dd-MON-yyyy')
, 'SH_CLERK', 3800.00, NULL, 122, 50);

INSERT INTO tb_empregado    VALUES
( 189, 'Jennifer', 'Dilly', 'JDILLY', '650.505.2876', TO_DATE('13-AGO-1997', 'dd-MON-yyyy')
, 'SH_CLERK', 3600.00, NULL, 122, 50);

INSERT INTO tb_empregado    VALUES
( 190, 'Timothy', 'Gates', 'TGATES', '650.505.3876', TO_DATE('11-JUL-1998', 'dd-MON-yyyy')
, 'SH_CLERK', 2900.00, NULL, 122, 50);

INSERT INTO tb_empregado    VALUES
( 191, 'Randall', 'Perkins', 'RPERKINS', '650.505.4876', TO_DATE('19-DEZ-1999', 'dd-MON-yyyy')
, 'SH_CLERK', 2500.00, NULL, 122, 50);

INSERT INTO tb_empregado    VALUES
( 192, 'Sarah', 'Bell', 'SBELL', '650.501.1876', TO_DATE('04-FEV-1996', 'dd-MON-yyyy')
, 'SH_CLERK', 4000.00, NULL, 123, 50);

INSERT INTO tb_empregado    VALUES
( 193, 'Britney', 'Everett', 'BEVERETT', '650.501.2876', TO_DATE('03-MAR-1997', 'dd-MON-yyyy')
, 'SH_CLERK', 3900.00, NULL, 123, 50);

INSERT INTO tb_empregado    VALUES
( 194, 'Samuel', 'McCain', 'SMCCAIN', '650.501.3876', TO_DATE('01-JUL-1998', 'dd-MON-yyyy')
, 'SH_CLERK', 3200.00, NULL, 123, 50);

INSERT INTO tb_empregado    VALUES
( 195, 'Vance', 'Jones', 'VJONES', '650.501.4876', TO_DATE('17-MAR-1999', 'dd-MON-yyyy')
, 'SH_CLERK', 2800.00, NULL, 123, 50);

INSERT INTO tb_empregado    VALUES
( 196, 'Alana', 'Walsh', 'AWALSH', '650.507.9811', TO_DATE('24-ABR-1998', 'dd-MON-yyyy')
, 'SH_CLERK', 3100.00, NULL, 124, 50);

INSERT INTO tb_empregado    VALUES
( 197, 'Kevin', 'Feeney', 'KFEENEY', '650.507.9822', TO_DATE('23-MAI-1998', 'dd-MON-yyyy')
, 'SH_CLERK', 3000.00, NULL, 124, 50);

INSERT INTO tb_empregado    VALUES
( 198, 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', TO_DATE('21-JUN-1999', 'dd-MON-yyyy')
, 'SH_CLERK', 2600.00, NULL, 124, 50);

INSERT INTO tb_empregado    VALUES
( 199, 'Douglas', 'Grant', 'DGRANT', '650.507.9844', TO_DATE('13-JAN-2000', 'dd-MON-yyyy')
, 'SH_CLERK', 2600.00, NULL, 124, 50);

INSERT INTO tb_empregado    VALUES
( 200, 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', TO_DATE('17-SET-1987', 'dd-MON-yyyy')
, 'AD_ASST', 4400.00, NULL, 101, 10);

INSERT INTO tb_empregado    VALUES
( 201, 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', TO_DATE('17-FEV-1996', 'dd-MON-yyyy')
, 'MK_MAN', 13000.00, NULL, 100, 20);

INSERT INTO tb_empregado    VALUES
( 202, 'Pat', 'Fay', 'PFAY', '603.123.6666', TO_DATE('17-AGO-1997', 'dd-MON-yyyy')
, 'MK_REP', 6000.00, NULL, 201, 20);

INSERT INTO tb_empregado    VALUES
( 203, 'Susan', 'Mavris', 'SMAVRIS', '515.123.7777', TO_DATE('07-JUN-1994', 'dd-MON-yyyy')
, 'HR_REP', 6500.00, NULL, 101, 40);

INSERT INTO tb_empregado    VALUES
( 204, 'Hermann', 'Baer', 'HBAER', '515.123.8888', TO_DATE('07-JUN-1994', 'dd-MON-yyyy')
, 'PR_REP', 10000.00, NULL, 101, 70);

INSERT INTO tb_empregado    VALUES
( 205, 'Shelley', 'Higgins', 'SHIGGINS', '515.123.8080', TO_DATE('07-JUN-1994', 'dd-MON-yyyy')
, 'AC_MGR', 12000.00, NULL, 101, 110);

INSERT INTO tb_empregado  
VALUES
( 206, 'William', 'Gietz', 'WGIETZ', '515.123.8181', TO_DATE('07-JUN-1994', 'dd-MON-yyyy')
, 'AC_ACCOUNT', 8300.00, NULL, 205, 110);

SELECT *
FROM tb_empregado;


INSERT INTO tb_historico_funcao
VALUES (102
, TO_DATE('13-JAN-1993', 'dd-MON-yyyy')
, TO_DATE('24-JUL-1998', 'dd-MON-yyyy')
, 'IT_PROG'
, 60);

INSERT INTO tb_historico_funcao
VALUES (101
, TO_DATE('21-SET-1989', 'dd-MON-yyyy')
, TO_DATE('27-OUT-1993', 'dd-MON-yyyy')
, 'AC_ACCOUNT'
, 110);

INSERT INTO tb_historico_funcao
VALUES (101
, TO_DATE('28-OUT-1993', 'dd-MON-yyyy')
, TO_DATE('15-MAR-1997', 'dd-MON-yyyy')
, 'AC_MGR'
, 110);

INSERT INTO tb_historico_funcao
VALUES (201
, TO_DATE('17-FEV-1996', 'dd-MON-yyyy')
, TO_DATE('19-DEZ-1999', 'dd-MON-yyyy')
, 'MK_REP'
, 20);

INSERT INTO tb_historico_funcao
VALUES (114
, TO_DATE('24-MAR-1998', 'dd-MON-yyyy')
, TO_DATE('31-DEZ-1999', 'dd-MON-yyyy')
, 'ST_CLERK'
, 50);

INSERT INTO tb_historico_funcao
VALUES (122
, TO_DATE('01-JAN-1999', 'dd-MON-yyyy')
, TO_DATE('31-DEZ-1999', 'dd-MON-yyyy')
, 'ST_CLERK'
, 50
);

INSERT INTO tb_historico_funcao
VALUES (200
, TO_DATE('17-SET-1987', 'dd-MON-yyyy')
, TO_DATE('17-JUN-1993', 'dd-MON-yyyy')
, 'AD_ASST'
, 90
);

INSERT INTO tb_historico_funcao
VALUES (176
, TO_DATE('24-MAR-1998', 'dd-MON-yyyy')
, TO_DATE('31-DEZ-1998', 'dd-MON-yyyy')
, 'SA_REP'
, 80
);

INSERT INTO tb_historico_funcao
VALUES (176
, TO_DATE('01-JAN-1999', 'dd-MON-yyyy')
, TO_DATE('31-DEZ-1999', 'dd-MON-yyyy')
, 'SA_MAN'
, 80
);

INSERT INTO tb_historico_funcao
VALUES (200
, TO_DATE('01-JUL-1994', 'dd-MON-yyyy')
, TO_DATE('31-DEZ-1998', 'dd-MON-yyyy')
, 'AC_ACCOUNT'
, 90
);

SELECT *
FROM tb_historico_funcao;


ALTER TABLE tb_departamento
ENABLE CONSTRAINT fk_gerente_depto;
COMMIT;
