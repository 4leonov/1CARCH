﻿#Область ОбработчикиСобытийФормы

&НаСервере
Процедура ПриСозданииНаСервере(Отказ, СтандартнаяОбработка)
	
	Если Параметры.Ключ.Пустая() Тогда
		
		Объект.Статус = Перечисления.СтатусыЗаявокСотрудников.Черновик;
				
	КонецЕсли;
	
КонецПроцедуры

#КонецОбласти
