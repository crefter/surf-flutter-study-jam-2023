# Целевая платформа

Android, pixel 5, API 29

# Результаты
<ol>
<li>Сделал экран с пустым состоянием<br>
<img src="assets/empty.png" width="375" alt="Empty screen" />
</li>
<li>
По клику на кнопку добавить появляется BottomSheet, в который можно ввести url. Если в буфере обмена уже имеется ссылка на pdf-файл, то ссылка вставится автоматически. Также появляется снекбар<br>
<img src="assets/2.gif" width="375" alt="Empty screen" />
<img src="assets/2.webm" width="375" alt="Empty screen" />
<br>
</li>
<li>
Валидация данных: нельзя ввести неверный url и файл не расширения pdf<br>
<img src="assets/7.gif" width="375" alt="Empty screen" />
<img src="assets/7.webm" width="375" alt="Empty screen" />
<br>
</li>
<li>
Сделано сохранение данных локально в БД<br>
<br>
</li>
<li>
Кнопка скрывается, когда достигает конца списка<br>
<img src="assets/3.gif" width="375" alt="Empty screen" />
<img src="assets/3.webm" width="375" alt="Empty screen" />
<br>
</li>
<li>
По нажатию на кнопку, файл скачивается, также меняются иконки в зависимости от состояния. Можно удалить файл и тикет при помощи свайпа <br>
<img src="assets/4.gif" width="375" alt="Empty screen" />
<img src="assets/4.webm" width="375" alt="Empty screen" />
<br>
</li>
<li>
Можно просмотреть pdf-файл - необходимо осуществить LongPress<br>
<img src="assets/5.gif" width="375" alt="Empty screen" />
<img src="assets/5.webm" width="375" alt="Empty screen" />
<br>
</li>
<li>
Можно отсортировать файлы по дате и состоянию загрузки.<br>
<img src="assets/6.gif" width="375" alt="Empty screen" />
<img src="assets/6.webm" width="375" alt="Empty screen" />
<br>
</li>
<li>
Для локального хранения данных использовал drift. 
<br>
</li>
</ol>
<p> Что хотел сделать и не получилось: </p>
<ul> <li>Продолжение загрузки после паузы.</li> </ul>
<br>
<p>
Что не успел:
<ul>
<li>Выбор отдельных файлов и их скачивание.</li>
<li>Загрузку всех незагруженных файлов по одной кнопке.</li>
<li>Проблемы с перестроением списков.</li>
<li>Различные анимации для кнопок, смещения списка при удалении, сортировки.</li>
</ul>