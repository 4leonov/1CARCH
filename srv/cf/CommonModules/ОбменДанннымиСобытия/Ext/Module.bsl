﻿#Область ПрограммныйИнтерфейс

Процедура ДобавлениеОбъектовКОбменуОбработчик(Источник) Экспорт
	
	Если Источник.Статус =  Перечисления.СтатусыЗаявокСотрудников.Согласовано Тогда
		
		РегистрыСведений.ОчередьОбмена1СЗУП.ДобавитьОбъект(Источник.Ссылка);
		
	КонецЕсли;	
	
КонецПроцедуры

#КонецОбласти
