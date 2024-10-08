﻿#Область ОбработчикиКомандФормы

&НаКлиенте
Процедура Отклонить(Команда)
	
	ОтклонитьНаСервере();
	Элементы.СписокЗаявок.Обновить();
		
КонецПроцедуры

&НаКлиенте
Процедура Согласовать(Команда)
	
	СогласоватьНаСервере();
	Элементы.СписокЗаявок.Обновить();
	
КонецПроцедуры

#КонецОбласти

#Область СлужебныеПроцедурыИФункции

&НаСервере
Процедура СогласоватьНаСервере()
	
	МассивНаСогласование = Элементы.СписокЗаявок.ВыделенныеСтроки;

	УстановитьПривилегированныйРежим(Истина);

	Для Каждого СтрокаЗаявки ИЗ МассивНаСогласование  Цикл
		
		ДокЗаявка = СтрокаЗаявки.Ссылка.ПолучитьОбъект();
		ДокЗаявка.Статус = Перечисления.СтатусыЗаявокСотрудников.Согласовано;
		ДокЗаявка.Записать(РежимЗаписиДокумента.Проведение);
		
	КонецЦикла;	
	
КонецПроцедуры

&НаСервере
Процедура ОтклонитьНаСервере()

	МассивОтклонить = Элементы.СписокЗаявок.ВыделенныеСтроки;

	УстановитьПривилегированныйРежим(Истина);

	Для Каждого СтрокаЗаявки ИЗ МассивОтклонить  Цикл
		
		ДокЗаявка = СтрокаЗаявки.Ссылка.ПолучитьОбъект();
		ДокЗаявка.Статус = Перечисления.СтатусыЗаявокСотрудников.Отклонено;
		ДокЗаявка.Записать(РежимЗаписиДокумента.Проведение);
		
	КонецЦикла;	
	
КонецПроцедуры

#КонецОбласти
