package com.gathering.controller;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.gathering.dto.FilesVO;
import com.gathering.service.NoticeService;


@RestController

public class uploadController {
	private static final Logger logger = LoggerFactory.getLogger(NoticeService.class);
    
	/* 첨부 파일 업로드 */
	@PostMapping(value="/uploadAjaxAction",produces = MediaType.APPLICATION_JSON_VALUE)
	public ResponseEntity<List<FilesVO>> uploadAjaxActionPOST(MultipartFile[] uploadFile) {
		
				logger.info("uploadAjaxActionPOST..");
				
				/* 이미지 파일 체크 */
				for(MultipartFile multipartFile: uploadFile) {
					
					File checkfile = new File(multipartFile.getOriginalFilename());
					String type = null;
					
					try {
						type = Files.probeContentType(checkfile.toPath());
						logger.info("MIME TYPE : " + type);
					} catch (IOException e) {
						e.printStackTrace();
					}
					if(!type.startsWith("image")) {
						List<FilesVO> list = null;
						return new ResponseEntity<>(list, HttpStatus.BAD_REQUEST);
					}
				}
				//저장경로
				String uploadFolder = "C:\\upload";
				
				//날짜관련
				SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
				
				Date date = new Date();
				
				String str = sdf.format(date);
				
				String datePath = str.replace("-", File.separator);
				
				//폴더 생성하기
				File uploadPath = new File(uploadFolder, datePath);
				
				uploadPath.mkdirs();
				
				//이미지 정보를 담는 개겣
				List<FilesVO> list = new ArrayList();
				
				
				//for문
				for(MultipartFile multipartFile : uploadFile) {
					logger.info("-----------------------------------------------");
					logger.info("파일 이름 : " + multipartFile.getOriginalFilename());
					logger.info("파일 타입 : " + multipartFile.getContentType());
					logger.info("파일 크기 : " + multipartFile.getSize());			
					
					//이미지 정보 객체
					FilesVO filesVO =new FilesVO();
				
					//파일 이름 
					String uploadFileName = multipartFile.getOriginalFilename();			
					//??!
					filesVO.setFile_seq(0);
					filesVO.setUploadPath(datePath);
					
					
					// uuid 적용 파일 이름 
					String uuid = UUID.randomUUID().toString();
					filesVO.setUuid(uuid);
					uploadFileName = uuid + "_" + uploadFileName;
					
					// 파일 위치, 파일 이름을 합친 File 객체 
					File saveFile = new File(uploadPath, uploadFileName);
					
					// 파일 저장 
					try {
						multipartFile.transferTo(saveFile);
					} catch (Exception e) {
						e.printStackTrace();
					} 
					list.add(filesVO);
				}
				
				ResponseEntity<List<FilesVO>> result = new ResponseEntity<List<FilesVO>>(list, HttpStatus.OK);
				
				return result;
		
		
	}
}
     
     
        
        
      