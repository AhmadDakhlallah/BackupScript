#!/bin/bash
# Backup script by Ahmad Dakhlallah 15/07/2019
# https://linuxarabia.co

#THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
#IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
#FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
#AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
#LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
#OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
#SOFTWARE.

#هذا البرنامج مقدم كما هو، بدون أي ضمانات مضمنة او معلن عنها بشكل صريح.
#هذا يشمل على سبيل المثال لا الحصر ضمانة عمل البرنامج، ملائمة البرنامج لعمل ما
#او حتى خرق البرنامج لحقوق النشر. المخاطر الكاملة فيما يتعلق بجودة البرنامج وأدائه هي 
#مسؤوليتك الخاصة. حتى لو كان البرنامج غير صحيح ، أنت تتحمل تكلفة جميع الخدمات اللازمة لإصلاح
#أو تصحيح ما تسبب به البرنامج.

export PATH=/bin:/usr/bin:/usr/local/bin
TODAY=$(date +%d-%m-%Y)
HOST='localhost'
PORT='3306'
USER='root'
PASS='MySQL root Password'
BATH='/var/www'
BACKUPBATH='/var/backup'

##############################
###      1st Website       ###
##############################
## Files
WEBSITE1='site1.ltd/web/'
WEBSITENAME1='site1.ltd'

## database
DBNAME1='db1'



##############################
###      2nd Website       ###
##############################
## Files
#WEBSITE2='site2.ltd/web/'
#WEBSITENAME2='site2.ltd'

## database
#DBNAME2='db2'

#########################
#                       #
##   Work start here   ##
#                       #
#########################

## Backup files
zip -r ${BACKUPBATH}/${WEBSITENAME1}_${TODAY}.zip ${BATH}/${WEBSITE1}/
#zip -r ${BACKUPBATH}/${WEBSITENAME2}_${TODAY}.zip ${BATH}/${WEBSITE2}/

##Backup Database
mysqldump -h ${HOST} -P ${PORT} -u ${USER} -p${PASS} ${DBNAME1} > ${BACKUPBATH}/${DBNAME1}.sql
zip ${BACKUPBATH}/${DBNAME1}_${TODAY}.sql.zip ${BACKUPBATH}/${DBNAME1}.sql
#mysqldump -h ${HOST} -P ${PORT} -u ${USER} -p${PASS} ${DBNAME2} > ${BACKUPBATH}/${DBNAME2}.sql
#zip ${BACKUPBATH}/${DBNAME2}_${TODAY}.sql.zip ${BACKUPBATH}/${DBNAME2}.sql

##Delete old files
rm -rf ${BACKUPBATH}/*.sql
find ${BACKUPBATH}/*.zip -mtime +7 -delete
