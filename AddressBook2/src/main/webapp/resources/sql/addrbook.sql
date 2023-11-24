-- addrbook table 생성
CREATE TABLE addrbook(
    bnum      NUMBER PRIMARY KEY,
    username  VARCHAR2(20) NOT NULL,
    tel       VARCHAR2(20),
    email     VARCHAR2(20) UNIQUE,
    gender    VARCHAR2(6),
    regdate   TIMESTAMP DEFAULT SYSTIMESTAMP
);
CREATE SEQUENCE seq_bnum NOCACHE; -- 자동 순번

INSERT INTO addrbook(bnum, username, tel, email, gender)
VALUES (seq_bnum.NEXTVAL, '김희린', '010-1111-1111', 'abc@zzz', '여');

-- aaa@bbb 이메일 찾기
SELECT email from addrbook
WHERE email = 'aaa@bbb';

--주소 삭제
DELETE FROM addrbook WHERE bnum = 4;

--주소 수정
UPDATE addrbook
SET username = '희린', tel='010-1122-1122', gender='남'
WHERE bnum = 9;

commit;
SELECT * from addrbook;
drop table addrbook;
drop SEQUENCE seq_bnum;

