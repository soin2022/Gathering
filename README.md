# Gathering

양식 통일

file:///c:/GatheringFileSave/

모임 만들기, 모임리스트,모임 삭제, 상세, 수정 (윤)
모임 가입하기, 관심있는 모임, 내가 가입한 모임, 내가 만든 모임 삭제 찜하기 (윤)


모임공지에 관련된
공지 등록, 삭제, 리스트, 수정, 상세  (성현)




모임앨범, 수다 관련
모임 수다방, 모임앨범, 앨범 댓글, 앨범 사진첨부, (정태)





--컬럼 변경 
ALTER TABLE group_info ADD kind VARCHAR2(20);

--컬럼 속성 변경
ALTER TABLE group_info MODIFY brief VARCHAR2(100);

commit;


-- 테이블변경(group_notice)

CREATE TABLE group_notice (
	group_notice_seq	NUMBER PRIMARY KEY,
	group_seq	        NUMBER,
	type	            VARCHAR2(20),
	title	            VARCHAR2(30),
	content	            VARCHAR2(1000),
	filename	        VARCHAR2(50),
	regDate	            DATE DEFAULT SYSDATE,
	jungmo_date	        VARCHAR2(50),
	jungmo_place	    VARCHAR2(100),
        cnt                 NUMBER default 0,
    FOREIGN KEY(group_seq) REFERENCES group_info(group_seq)
);
