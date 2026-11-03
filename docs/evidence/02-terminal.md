# 02-terminal — 실제 실행 기록

원본 실행 기록에서 터미널 색상·제목·쉘 메타데이터와 제어문자를 제거한 열람용 사본입니다. 중복 출력은 유지했습니다. 출력 결과를 새로 만들어 넣지 않았습니다.

```text
Script started on 2026-11-04 07:01:53+09:00 [TERM="xterm-256color" TTY="/dev/pts/0" COLUMNS="120" LINES="62"]
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # 현재 위치와 숨김 파일 포함 목록 확인

pwd

ls -la


# 실습 폴더 생성 후 상대 경로로 이동

mkdir terminal-lab

cd terminal-lab

pwd


# 빈 파일과 숨김 파일 생성

touch empty.txt .hidden-demo

ls -la


# 파일에 내용 작성하고 확인

echo "Hello, Linux!" > original.txt

cat original.txt


# 파일 복사 후 원본과 복사본 확인

cp -v original.txt copy.txt

ls -l

cat copy.txt


# 복사본 이름 변경

mv -v copy.txt renamed.txt

ls -l


# 하위 폴더를 만들고 파일 이동

mkdir archive

mv -v renamed.txt archive/

ls -l archive


# 실습 파일과 빈 폴더 삭제

rm -v archive/renamed.txt

ls -la archive

rmdir archive

rm -v empty.txt .hidden-demo

ls -la


# 절대 경로로 프로젝트 폴더에 이동

cd /home/jaehyeong/developer-workstation

pwd
jaehyeong@GNIA-C201-H04:~/developer-workstation$ # 현재 위치와 숨김 파일 포함 목록 확인

pwd

ls -la


# 실습 폴더 생성 후 상대 경로로 이동

mkdir terminal-lab

cd terminal-lab

pwd


# 빈 파일과 숨김 파일 생성

touch empty.txt .hidden-demo

ls -la


# 파일에 내용 작성하고 확인

echo "Hello, Linux!" > original.txt

cat original.txt


# 파일 복사 후 원본과 복사본 확인

cp -v original.txt copy.txt

ls -l

cat copy.txt


# 복사본 이름 변경

mv -v copy.txt renamed.txt

ls -l


# 하위 폴더를 만들고 파일 이동

mkdir archive

mv -v renamed.txt archive/

ls -l archive


# 실습 파일과 빈 폴더 삭제

rm -v archive/renamed.txt

ls -la archive

rmdir archive

rm -v empty.txt .hidden-demo

ls -la


# 절대 경로로 프로젝트 폴더에 이동

cd /home/jaehyeong/developer-workstation

pwd

/home/jaehyeong/developer-workstation
total 16
drwxr-xr-x 4 jaehyeong jaehyeong 4096 Nov  4 06:58 .
drwxr-x--- 5 jaehyeong jaehyeong 4096 Nov  4 06:59 ..
drwxr-xr-x 2 jaehyeong jaehyeong 4096 Nov  4 06:58 app
drwxr-xr-x 4 jaehyeong jaehyeong 4096 Nov  4 06:58 docs
/home/jaehyeong/developer-workstation/terminal-lab
total 8
drwxr-xr-x 2 jaehyeong jaehyeong 4096 Nov  4 07:02 .
drwxr-xr-x 5 jaehyeong jaehyeong 4096 Nov  4 07:02 ..
-rw-r--r-- 1 jaehyeong jaehyeong    0 Nov  4 07:02 .hidden-demo
-rw-r--r-- 1 jaehyeong jaehyeong    0 Nov  4 07:02 empty.txt
Hello, Linux!
'original.txt' -> 'copy.txt'
total 8
-rw-r--r-- 1 jaehyeong jaehyeong 14 Nov  4 07:02 copy.txt
-rw-r--r-- 1 jaehyeong jaehyeong  0 Nov  4 07:02 empty.txt
-rw-r--r-- 1 jaehyeong jaehyeong 14 Nov  4 07:02 original.txt
Hello, Linux!
renamed 'copy.txt' -> 'renamed.txt'
total 8
-rw-r--r-- 1 jaehyeong jaehyeong  0 Nov  4 07:02 empty.txt
-rw-r--r-- 1 jaehyeong jaehyeong 14 Nov  4 07:02 original.txt
-rw-r--r-- 1 jaehyeong jaehyeong 14 Nov  4 07:02 renamed.txt
renamed 'renamed.txt' -> 'archive/renamed.txt'
total 4
-rw-r--r-- 1 jaehyeong jaehyeong 14 Nov  4 07:02 renamed.txt
removed 'archive/renamed.txt'
total 8
drwxr-xr-x 2 jaehyeong jaehyeong 4096 Nov  4 07:02 .
drwxr-xr-x 3 jaehyeong jaehyeong 4096 Nov  4 07:02 ..
removed 'empty.txt'
removed '.hidden-demo'
total 12
drwxr-xr-x 2 jaehyeong jaehyeong 4096 Nov  4 07:02 .
drwxr-xr-x 5 jaehyeong jaehyeong 4096 Nov  4 07:02 ..
-rw-r--r-- 1 jaehyeong jaehyeong   14 Nov  4 07:02 original.txt
/home/jaehyeong/developer-workstation
jaehyeong@GNIA-C201-H04:~/developer-workstation$ exitexit

exit

Script done on 2026-11-04 07:02:12+09:00 [COMMAND_EXIT_CODE="0"]

```
