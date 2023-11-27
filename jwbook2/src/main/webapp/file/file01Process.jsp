<%@page import="java.io.File"%>
<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("utf-8");

	String realFolder = "C:/jspWorks/jwbook2/src/main/webapp/upload";
	//생성자 5가지 - request, 업로드 폴더 경로, 파일 사이즈, 인코딩, 중복 파일명 추가
	MultipartRequest multi = new MultipartRequest(request, realFolder,
			5*1024*1024, "utf-8", new DefaultFileRenamePolicy());

	//일반 name 속성
	String name = multi.getParameter("username");
	String title = multi.getParameter("title");
	out.println("이름 : " + name + "<br>");
	out.println("제목 : " + title + "<br>");
	
	//file name 속성
	Enumeration<String> files = multi.getFileNames();
	while(files.hasMoreElements()){
		String fname = files.nextElement();	//파일의 name 속성이 있으면
		String filename = multi.getFilesystemName(fname);		//업로드된 파일
		String original = multi.getOriginalFileName(fname);	//원본 파일
		String type = multi.getContentType(fname);	//컨텐츠 유형
		
		//파일 크기 출력 속성
		File file = multi.getFile(fname);
		
		out.println("파일명 : " + filename + "<br>");
		out.println("원본 파일명 : " + original + "<br>");
		out.println("파일 컨텐츠 유형 : " + type + "<br>");
		
		if(file != null){
			out.println("파일 크기 : " + file.length() + "B");
		}
	}
%>