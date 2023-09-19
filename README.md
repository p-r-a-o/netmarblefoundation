# Team COMMIT mini project

## 🏷프로젝트명: 넷마블 문화재단

화면 구현 + 서버 구현을 통한 웹페이지 클론 코딩

## 🖥️ 프로젝트 소개
넷마블 문화재단을 참고하여 만든 웹사이트입니다.

## 🗓️ 개발 기간
- `Frontend` - 23.08.02(수) ~ 23.08.08(화) (7일)
- `Backend`  - 23.09.13(수) ~ 23.09.21(목) (9일)

### 👬 멤버 구성
- 박창호`팀장` - 프로젝트 기획안 작성 및 계획 수립, 역할 분담, PPT 제작 및 발표, 재단활동, 로그인, 회원가입
- 이재현`조원` - 메인 페이지 구현, 메인 CSS, 프론트엔드 코드 통합, 테스트, 리팩토링, 형상관리
- 장성운`조원` - 재단소식 구현, PPT 제작, 1대1 문의 게시판(CRUD), 공지사항(CRUD)

## 🍳 사용 기술
- `Frontend` - `HTML` + `CSS` + `JavaScript`
- `Backend` - `Java` + `Spring` + `JSP`

## 📌 주요 기능
- 추가 예정

## SQL Script
```
CREATE TABLE BOARD (
boardId INT(11) PRIMARY KEY ,
boardTitle VARCHAR(50),
memberId VARCHAR(20),
boardDate DATETIME,
boardContent VARCHAR(2048),
boardAvailable INT(11),
boardCount INT(11),
likeCount INT(11)
);

CREATE TABLE COMMENT (
commentContent VARCHAR(300),
commentId INT(11) PRIMARY KEY ,
memberId VARCHAR(20),
commentAvailable INT(11),
commentDate DATETIME,
boardId INT(11),
FOREIGN KEY (boardId) REFERENCES BOARD(boardId)
);

CREATE TABLE LIKEY (
memberId VARCHAR(20) PRIMARY KEY ,
boardId INT(11),
FOREIGN KEY (boardId) REFERENCES BOARD(boardId)
);

CREATE TABLE MEMBER (
memberId VARCHAR(20) PRIMARY KEY ,
memberPassword VARCHAR(20) NOT NULL ,
memberName VARCHAR(20) NOT NULL ,
birthday VARCHAR(10),
tel varchar(20)
);
```



## 🏛 커밋 컨벤션
### 🧬 타입
<mark>"태그: 제목"의 형태, : 뒤에만 space(공백)가 있음에 유의할 것</mark>

|태그 이름|설명|
|-------|-----------------------------------------------------------------------------|
|Feat|새로운 기능을 추가할 경우|
|Fix|버그를 고친 경우|
|Design|CSS 등 사용자 UI 디자인 변경|
|!BREAKING CHANGE|커다란 API 변경의 경우|
|!HOTFIX|	급하게 치명적인 버그를 고쳐야하는 경우|
|Style|코드 포맷 변경, 세미 콜론 누락, 코드 수정이 없는 경우|
|Refactor|프로덕션 코드 리팩토링|
|Comment|필요한 주석 추가 및 변경|
|Docs|문서를 수정한 경우|
|Test|테스트 추가, 테스트 리팩토링(프로덕션 코드 변경 X)|
|Chore|빌드 태스트 업데이트, 패키지 매니저를 설정하는 경우(프로덕션 코드 변경 X)|
|Rename|파일 혹은 폴더명을 수정하거나 옮기는 작업만인 경우|
|Remove|파일을 삭제하는 작업만 수행한 경우|

### ✏️ 제목
> 1. 제목의 처음은 동사 원형
> 2. 총 글자 수는 50자 이내
> 3. 마지막에 특수문자 삽입 X
> 4. 제목은 개조식 구문
> 5. 첫 글자는 대문자
> 6. "Fix", "Add", "Change"의 명령어로 시작

#### 🖊️ 예시
```
Feat: "게시판 기능 추가"
```
### ✏️ 본문
> 1. 본문은 한줄당 72자 이내
> 2. 본문 내용은 양에 구애받지 않고 최대한 상세히 작성
> 3. 본문 내용은 ~~어떻게 변경했는지~~ 보다 **무엇을** 변경했는지 또는 **왜** 변경했는지를 설명

#### 🖊️ 예시
```
Feat: "게시판 기능 추가"

1대1 문의 게시판 기능 구현
공지사항 게시판 구현
```

### ✏️ 꼬리말
> 1. optional이고 이슈 트래커 ID wkrtjd
> 2. "유형: #이슈 번호" 형식으로 사용
> 3. 여러 개의 이슈 번호를 적을 때는 쉼표로 구분
> 4. 이슈 트래커 유형은 다음 중 하나를 사용
>    - Fixes: 이슈 수정 중(아직 해결되지 않은 경우)
>    - Resolves: 이슈를 해결했을 때 사용
>    - Ref: 참고할 이슈가 있을 때 사용
>    - Related to: 해당 커밋에 관련된 이슈번호(아직 해결되지 않은 경우)
>    ex) Fixes: #45 Related to: #34, #23

#### 🖊️ 예시
```
Feat: "게시판 기능 추가"

1대1 문의 게시판 기능 구현
공지사항 게시판 구현

Resolve: #12
Ref: #34
Related to: #5, #6
```

### ✉ 커밋 메세지 Emoji

|Emoji|Description|
|--------|----------------------------------------------------------------------|
|🎨|코드의 형식 / 구조를 개선 할 때|
|📰|새 파일을 만들 때|
|📝|사소한 코드 또는 언어를 변경할 때|
|🐎|성능을 향상시킬 때|
|📚|문서를 쓸 때|
|🐛|버그 reporting할 때, @FIXME 주석 태그 삽입|
|🚑|버그를 고칠 때|
|🐧|리눅스에서 무언가를 고칠 때|
|🍎|Mac OS에서 무언가를 고칠 때|
|🏁|Windows에서 무언가를 고칠 때|
|🔥|코드 또는 파일 제거할 때 , @CHANGED주석 태그와 함께|
|🚜|파일 구조를 변경할 때 . 🎨과 함께 사용|
|🔨|코드를 리팩토링 할 때|
|☔️|테스트를 추가 할 때|
|🔬|코드 범위를 추가 할 때|
|💚|CI 빌드를 고칠 때|
|🔒|보안을 다룰 때|
|⬆️|종속성을 업그레이드 할 때|
|⬇️|종속성을 다운 그레이드 할 때|
|⏩|이전 버전 / 지점에서 기능을 전달할 때|
|⏪|최신 버전 / 지점에서 기능을 백 포트 할 때|
|👕|linter / strict / deprecation 경고를 제거 할 때|
|💄|UI / style 개선시|
|♿️|접근성을 향상시킬 때|
|🚧|WIP (진행중인 작업)에 커밋, @REVIEW주석 태그와 함께 사용|
|💎|New Release|
|🔖|버전 태그|
|🎉|Initial Commit|
|🔈|로깅을 추가 할 때|
|🔇|로깅을 줄일 때|
|✨|새로운 기능을 소개 할 때|
|⚡️|도입 할 때 이전 버전과 호환되지 않는 특징, @CHANGED주석 태그 사용|
|💡|새로운 아이디어, @IDEA주석 태그|
|🚀|배포 / 개발 작업 과 관련된 모든 것|
|🐘|PostgreSQL 데이터베이스 별 (마이그레이션, 스크립트, 확장 등)
|🐬|MySQL 데이터베이스 특정 (마이그레이션, 스크립트, 확장 등)
|🍃|MongoDB 데이터베이스 특정 (마이그레이션, 스크립트, 확장 등)|
|🏦|일반 데이터베이스 별 (마이그레이션, 스크립트, 확장명 등)|
|🐳|도커 구성|
|🤝|파일을 병합 할 때|

### 참고 자료
* 커밋 컨벤션 규칙: <https://overcome-the-limits.tistory.com/6>
* 좋은 커밋을 위한 약속: <https://meetup.nhncloud.com/posts/106>
