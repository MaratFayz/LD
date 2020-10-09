INSERT INTO currency(id, name, short_name, user_last_changed_id, cbrcurrency_code, date_time_last_change)
VALUES (1, 'Russian Ruble', 'RUB', 1, NULL, '2020-05-27 21:05:12.937360'),
       (2, 'USA Dollar', 'USD', 1, 'R01235', '2020-05-27 21:05:12.937360');


INSERT INTO scenario(id, name, storno_status, user_last_changed_id, is_blocked, date_time_last_change)
VALUES (1, 'FACT', 'ADDITION', 1, NULL, '2020-05-27 21:05:12.937360');


INSERT INTO counterpartner(id, name, user_last_changed_id, date_time_last_change)
VALUES (1, 'SuperBP', 1, '2020-05-27 21:05:12.937360');


INSERT INTO company(id, code, name, user_last_changed_id, date_time_last_change)
VALUES (1, 'C1001', 'SuperCompany', 1, '2020-05-27 21:05:12.937360');


INSERT INTO ifrs_account(id, account_code, account_name, flow_code, flow_name, dr, pa, ct, sh, is_inverse_sum, mapping_form_and_column, date_time_last_change, user_last_changed_id)
VALUES (1, 'A0203010100', 'Долгосрочные депозиты по аренде ВС - основная сумма', 'F2000', 'Поступление', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.1=N5', '2020-05-27 21:05:12.937360', 1),
       (2, 'A0208010000', 'Долгосрочные авансы выданные', 'F2000', 'Поступление', '-', 'THP99', 'RUB', '-', TRUE, 'Reg.LD.1=N5', '2020-05-27 21:05:12.937360', 1),
       (3, 'A0208010000', 'Долгосрочные авансы выданные', 'F2000', 'Поступление', '-', 'THP99', 'RUB', '-', TRUE, 'Reg.LD.1=M5', '2020-05-27 21:05:12.937360', 1),
       (4, 'A0203010100', 'Долгосрочные депозиты по аренде ВС - основная сумма', 'F2000', 'Поступление', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.1=M5', '2020-05-27 21:05:12.937360', 1),
       (5, 'P0302990000', 'Прочие финансовые расходы', 'Y9900', 'Накопительно с начала года', '-', 'THP99', '-', '-', TRUE, 'Reg.LD.1=U5 + Reg.LD.1=V5', '2020-05-27 21:05:12.937360', 1),
       (6, 'A0203010100', 'Долгосрочные депозиты по аренде ВС - основная сумма', 'F2700', 'Начисление процентных доходов/расходов/дисконта', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.1=U5', '2020-05-27 21:05:12.937360', 1),
       (7, 'A0203010200', 'Долгосрочные депозиты по аренде ВС - проценты', 'F2700', 'Начисление процентных доходов/расходов/дисконта', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.1=V5', '2020-05-27 21:05:12.937360', 1),
       (8, 'P0301990000', 'Прочие финансовые доходы', 'Y9900', 'Накопительно с начала года', '-', 'THP99', '-', '-', TRUE, 'Reg.LD.1=W5 + Reg.LD.1=X5', '2020-05-27 21:05:12.937360', 1),
       (9, 'A0203010100', 'Долгосрочные депозиты по аренде ВС - основная сумма', 'F2700', 'Начисление процентных доходов/расходов/дисконта', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.1=W5', '2020-05-27 21:05:12.937360', 1),
       (10, 'A0203010200', 'Долгосрочные депозиты по аренде ВС - проценты', 'F2700', 'Начисление процентных доходов/расходов/дисконта', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.1=X5', '2020-05-27 21:05:12.937360', 1),
       (11, 'A0203010200', 'Долгосрочные депозиты по аренде ВС - проценты', 'F2700', 'Начисление процентных доходов/расходов/дисконта', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.2=M5', '2020-05-27 21:05:12.937360', 1),
       (12, 'P0301020000', 'Процентные доходы по страховым депозитам', 'Y9900', 'Накопительно с начала года', '-', 'THP99', '-', '-', TRUE, 'Reg.LD.2=M5', '2020-05-27 21:05:12.937360', 1),
       (13, 'A0203010100', 'Долгосрочные депозиты по аренде ВС - основная сумма', 'F1600', 'Курсовая разница', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.3=N5', '2020-05-27 21:05:12.937360', 1),
       (14, 'A0203010100', 'Долгосрочные депозиты по аренде ВС - основная сумма', 'F1600', 'Курсовая разница', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.3=O5', '2020-05-27 21:05:12.937360', 1),
       (15, 'A0203010200', 'Долгосрочные депозиты по аренде ВС - проценты', 'F1600', 'Курсовая разница', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.3=T5', '2020-05-27 21:05:12.937360', 1),
       (16, 'A0203010200', 'Долгосрочные депозиты по аренде ВС - проценты', 'F1600', 'Курсовая разница', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.3=U5', '2020-05-27 21:05:12.937360', 1),
       (17, 'P0301310000', 'Положительные курсовые разницы', 'Y9900', 'Накопительно с начала года', '-', 'THP99', '-', '-', FALSE, 'Reg.LD.3=V5', '2020-05-27 21:05:12.937360', 1),
       (18, 'P0302310000', 'Отрицательные курсовые разницы', 'Y9900', 'Накопительно с начала года', '-', 'THP99', '-', '-', FALSE, 'Reg.LD.3=W5', '2020-05-27 21:05:12.937360', 1),
       (19, 'A0107010000', 'Краткосрочные авансы выданные', 'F3000', 'Выбытие', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.3=X5 + Reg.LD.3=Y5', '2020-05-27 21:05:12.937360', 1),
       (20, 'A0203010100', 'Долгосрочные депозиты по аренде ВС - основная сумма', 'F3000', 'Выбытие', '-', 'THP99', 'RUB', '-', TRUE, 'Reg.LD.3=X5', '2020-05-27 21:05:12.937360', 1),
       (21, 'A0203010200', 'Долгосрочные депозиты по аренде ВС - проценты', 'F3000', 'Выбытие', '-', 'THP99', 'RUB', '-', TRUE, 'Reg.LD.3=Y5', '2020-05-27 21:05:12.937360', 1),
       (22, 'P0301310000', 'Положительные курсовые разницы', 'Y9900', 'Накопительно с начала года', '-', 'THP99', '-', '-', FALSE, 'Reg.LD.4_MA_AFL=B1', '2020-05-27 21:05:12.937360', 1),
       (23, 'P0302310000', 'Отрицательные курсовые разницы', 'Y9900', 'Накопительно с начала года', '-', 'THP99', '-', '-', FALSE, 'Reg.LD.4_MA_AFL=C1', '2020-05-27 21:05:12.937360', 1),
       (24, 'A0107010000', 'Краткосрочные авансы выданные', 'F1600', 'Курсовая разница', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.4_MA_AFL=A1', '2020-05-27 21:05:12.937360', 1),
       (25, 'A0215010100', 'АПП воздушные суда и авиационные двигатели - ПСт', 'F2006', 'Ввод в эксплуатацию', '-', 'THP99', '-', '-', FALSE, 'APP-1', '2020-05-27 21:05:12.937360', 1),
       (26, 'A0215020100', 'АПП земля - ПСт', 'F2006', 'Ввод в эксплуатацию', '-', 'THP99', '-', '-', FALSE, 'APP-2', '2020-05-27 21:05:12.937360', 1),
       (27, 'A0215030100', 'АПП здания - ПСт', 'F2006', 'Ввод в эксплуатацию', '-', 'THP99', '-', '-', FALSE, 'APP-3', '2020-05-27 21:05:12.937360', 1),
       (28, 'A0215040100', 'АПП машины и оборудование - ПСт', 'F2006', 'Ввод в эксплуатацию', '-', 'THP99', '-', '-', FALSE, 'APP-4', '2020-05-27 21:05:12.937360', 1),
       (29, 'A0215050100', 'АПП прочие ОС - ПСт', 'F2006', 'Ввод в эксплуатацию', '-', 'THP99', '-', '-', FALSE, 'APP-5', '2020-05-27 21:05:12.937360', 1),
       (30, 'A0215060100', 'АПП незавершенное строительство - первоначальная стоимость', 'F2006', 'Ввод в эксплуатацию', '-', 'THP99', '-', '-', FALSE, 'APP-6', '2020-05-27 21:05:12.937360', 1),
       (31, 'A0208010000', 'Долгосрочные авансы выданные', 'F3000', 'Выбытие', '-', 'THP99', 'RUB', '-', TRUE, 'APP-7', '2020-05-27 21:05:12.937360', 1),
       (32, 'A0208010000', 'Долгосрочные авансы выданные', 'F5000', 'Реклассификация между группами актива/обязательства', '-', 'THP99', 'RUB', '-', TRUE, 'Reg.LD.3=AE5-Reg.LD.3=AF5', '2020-05-27 21:05:12.937360', 1),
       (33, 'A0107010000', 'Краткосрочные авансы выданные', 'F5000', 'Реклассификация между группами актива/обязательства', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.3=AE5-Reg.LD.3=AF5', '2020-05-27 21:05:12.937360', 1),
       (34, 'A0203010100', 'Долгосрочные депозиты по аренде ВС - основная сумма', 'F5000', 'Реклассификация между группами актива/обязательства', '-', 'THP99', 'RUB', '-', TRUE, 'Reg.LD.3=AA5-Reg.LD.3=AC5', '2020-05-27 21:05:12.937360', 1),
       (35, 'A0102010100', 'Краткосрочные депозиты по аренде ВС - основная сумма', 'F5000', 'Реклассификация между группами актива/обязательства', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.3=AA5-Reg.LD.3=AC5', '2020-05-27 21:05:12.937360', 1),
       (36, 'A0203010200', 'Долгосрочные депозиты по аренде ВС - проценты', 'F5000', 'Реклассификация между группами актива/обязательства', '-', 'THP99', 'RUB', '-', TRUE, 'Reg.LD.3=AB5-Reg.LD.3=AD5', '2020-05-27 21:05:12.937360', 1),
       (37, 'A0102010200', 'Краткосрочные депозиты по аренде ВС - проценты', 'F5000', 'Реклассификация между группами актива/обязательства', '-', 'THP99', 'RUB', '-', FALSE, 'Reg.LD.3=AB5-Reg.LD.3=AD5', '2020-05-27 21:05:12.937360', 1);


INSERT INTO duration(id, max_month, min_month, date_time_last_change, name, user_last_changed_id)
VALUES (1, 12, 0, '2020-05-27 21:05:12.937360', '<= 12 мес.', 1),
       (2, 24, 13, '2020-05-27 21:05:12.937360', '13-24 мес.', 1),
       (3, 36, 25, '2020-05-27 21:05:12.937360', '25-36 мес.', 1),
       (4, 48, 37, '2020-05-27 21:05:12.937360', '37-48 мес.', 1),
       (5, 60, 49, '2020-05-27 21:05:12.937360', '49-60 мес.', 1),
       (6, 72, 61, '2020-05-27 21:05:12.937360', '61-72 мес.', 1),
       (7, 84, 73, '2020-05-27 21:05:12.937360', '73-84 мес.', 1),
       (8, 96, 85, '2020-05-27 21:05:12.937360', '85-96 мес.', 1),
       (9, 108, 97, '2020-05-27 21:05:12.937360', '97-108 мес.', 1),
       (10, 120, 109, '2020-05-27 21:05:12.937360', '109-120 мес.', 1),
       (11, 132, 121, '2020-05-27 21:05:12.937360', '121-132 мес.', 1),
       (12, 144, 133, '2020-05-27 21:05:12.937360', '133-144 мес.', 1),
       (13, 100000, 145, '2020-05-27 21:05:12.937360', '> 144 мес.', 1);