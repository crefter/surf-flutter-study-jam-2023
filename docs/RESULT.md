# Целевая платформа

Android, pixel 5, API 29

# Результаты

1. Сделал экран с пустым состоянием
<img src="./docs/assets/empty.png" width="375" alt="Empty screen" />

2. По клику на кнопку добавить появляется BottomSheet, в который можно ввести url. Если в буфере обмена уже имеется ссылка на pdf-файл, то ссылка вставится автоматически. Также появляется снекбар
<img src="./docs/assets/2.gif" width="375" alt="Empty screen" />
<img src="./docs/assets/2.webm" width="375" alt="Empty screen" />
<br>
3. Валидация данных: нельзя ввести неверный url и файл не расширения pdf
<img src="./docs/assets/7.gif" width="375" alt="Empty screen" />
<img src="./docs/assets/7.webm" width="375" alt="Empty screen" />
<br>
4. Сделано сохранение данных локально в БД
<br>
5. Кнопка скрывается, когда достигает конца списка
<img src="./docs/assets/3.gif" width="375" alt="Empty screen" />
<img src="./docs/assets/3.webm" width="375" alt="Empty screen" />
<br>
6. По нажатию на кнопку, файл скачивается, также меняются иконки в зависимости от состояния. Можно удалить файл и тикет при помощи свайпа
<img src="./docs/assets/4.gif" width="375" alt="Empty screen" />
<img src="./docs/assets/4.webm" width="375" alt="Empty screen" />
<br>
7. Можно просмотреть pdf-файл - необходимо осуществить LongPress
<img src="./docs/assets/5.gif" width="375" alt="Empty screen" />
<img src="./docs/assets/5.webm" width="375" alt="Empty screen" />
<br>
8. Можно отсортировать файлы по дате и состоянию загрузки.
<img src="./docs/assets/6.gif" width="375" alt="Empty screen" />
<img src="./docs/assets/6.webm" width="375" alt="Empty screen" />
<br>
9. Для локального хранения данных использовал drift. 
<br>

<p> Что хотел сделать и не получилось: 
а) Продолжение загрузки после паузы. </p>
<br>
<p>
Что не успел:
а) Выбор отдельных файлов и их скачивание.
б) Загрузку всех незагруженных файлов по одной кнопке.
в) Проблемы с перестроением списков.
г) Различные анимации для кнопок, смещения списка при удалении, сортировки.
</p>