__EN:__  
Very simple backup script to backup small websites on a panelless servers.  
This will compress the files and database into a path, and will keep 7 copies of each website.  
Anything older than 7 days will be deleted.  

To use, you need to make the file executable by executing the command:  
```
chmod +x backup.sh
```

What should you replace:  
```
localhost => Change only if you have remote database server.
3306 => change only if you have other port
root => change if you have other master user.
MySQL root Password => change if you want anything to work unless this is your real password.
/var/www => main directory for the websites.
/var/backup => Where should the baceups be placed.
siteX.ltd/web/ => path for the website files.
siteX.ltd => Name of the website.
dbX => Name of the database.
```
__AR:__  
سكربت نسخ إحتياطي للمواقع على الخوادم التي لا تحتوي على لوحة تحكم.  
سيقوم الإسكربت بضغط الملفات وقواعد البيانات والإحتفاط بها لمدة 7 أيام لكل موقع.  
سينم حذف أي شيء أقدم من 7 أيام.  
  
لإستخدام الإسكربت يجب أن تقوم بمنح تصاريح التشغيل من خلال الأمر:  
chmod +x backup.sh  

الأشياء التي يمكن تغييرها:  
```
localhost => قم بالتغيير في حال كان خادم غير محلي.
3306 => قم بالتغيير في حال استخدمت منفذ اخر.
root => قم بالتغيير اذا كان لديك مستخدم رئيسي اخر.
MySQL root Password => قم بالتغيير اذا اردت أن يعمل الإسكربت. الا اذا كانت هذه هي كلمة المرور الحقيقية.
/var/www => المسار الذي تتواجد فيه المواقع.
/var/backup => المسار الذي سيتم نقل النسخ الإحتياطية اليه.
siteX.ltd/web/ => مسار ملفات المواقع.
siteX.ltd => اسم الموقع.
dbX => اسم قاعدة البيانات.
```
  
LinuxArabia  
  لينيكس العرب
https://linuxarabia.co  
