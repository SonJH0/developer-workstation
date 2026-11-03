# 03-permissions — 실제 실행 기록

원본 실행 기록에서 터미널 색상·제목·쉘 메타데이터와 제어문자를 제거한 열람용 사본입니다. 중복 출력은 유지했습니다. 출력 결과를 새로 만들어 넣지 않았습니다.

```text
Script started on 2026-11-04 07:03:34+09:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="120" LINES="62"]
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # 실습용 파일과 디렉토리 생성

mkdir -p permission-lab/shared

echo "Permission practice" > permission-lab/sample.txt


# 비교할 초기 권한 설정

chmod 644 permission-lab/sample.txt

chmod 755 permission-lab/shared


# 변경 전 확인

ls -l permission-lab/sample.txt

ls -ld permission-lab/shared


# 소유자만 접근하도록 변경

chmod 600 permission-lab/sample.txt

chmod 700 permission-lab/shared


# 변경 후 확인

ls -l permission-lab/sample.txt

ls -ld permission-lab/shared


# 숫자와 문자 표기를 함께 확인

stat -c '%a %A %n' permission-lab/sample.txt permission-lab/shared


# 소유자는 계속 파일을 읽고 디렉토리에 들어갈 수 있는지 확인

cat permission-lab/sample.txt

cd permission-lab/shared

pwd

cd ../..
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # 실습용 파일과 디렉토리 생성

mkdir -p permission-lab/shared

echo "Permission practice" > permission-lab/sample.txt


# 비교할 초기 권한 설정

chmod 644 permission-lab/sample.txt

chmod 755 permission-lab/shared


# 변경 전 확인

ls -l permission-lab/sample.txt

ls -ld permission-lab/shared


# 소유자만 접근하도록 변경

chmod 600 permission-lab/sample.txt

chmod 700 permission-lab/shared


# 변경 후 확인

ls -l permission-lab/sample.txt

ls -ld permission-lab/shared


# 숫자와 문자 표기를 함께 확인

stat -c '%a %A %n' permission-lab/sample.txt permission-lab/shared


# 소유자는 계속 파일을 읽고 디렉토리에 들어갈 수 있는지 확인

cat permission-lab/sample.txt

cd permission-lab/shared

pwd

cd ../..

-rw-r--r-- 1 jaehyeong jaehyeong 20 Nov  4 07:03 permission-lab/sample.txt
drwxr-xr-x 2 jaehyeong jaehyeong 4096 Nov  4 07:03 permission-lab/shared
-rw------- 1 jaehyeong jaehyeong 20 Nov  4 07:03 permission-lab/sample.txt
drwx------ 2 jaehyeong jaehyeong 4096 Nov  4 07:03 permission-lab/shared
600 -rw------- permission-lab/sample.txt
700 drwx------ permission-lab/shared
Permission practice
/home/jaehyeong/developer-workstation/permission-lab/shared
jaehyeong@GNIA-C201-H04:~/developer-workstation$ exitexit

exit

Script done on 2026-11-04 07:03:48+09:00 [COMMAND_EXIT_CODE="0"]

```
