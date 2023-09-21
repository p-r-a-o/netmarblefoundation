<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="board.Board" %>
<%@ page import="board.BoardDAO" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>넷마블문화재단</title>
</head>
<body>
<%
    String memberId = null;
    if(session.getAttribute("memberId")!=null){
        memberId =(String)session.getAttribute("memberId");
    }
    if(memberId == null){
        PrintWriter script=response.getWriter();
        script.println("<script>");
        script.println("alert('로그인을 하세요.')");
        script.println("location.href='login.jsp'");
        script.println("</script>");
    }
    int boardId =0;
    if(request.getParameter("boardId")!=null)
        boardId =Integer.parseInt(request.getParameter("boardId"));
    if(boardId ==0){
        PrintWriter script=response.getWriter();
        script.println("<script>");
        script.println("alert('유효하지 않은 글입니다.')");
        script.println("location.href='board.jsp'");
        script.println("</script>");
    }
    Board board = new BoardDAO().getBoard(boardId);
    if(!memberId.equals(board.getMemberId())){
        PrintWriter script=response.getWriter();
        script.println("<script>");
        script.println("alert('권한이 없습니다.')");
        script.println("location.href='board.jsp'");
        script.println("</script>");
    } else{
        if(request.getParameter("boardTitle")==null||request.getParameter("boardContent")==null
                ||request.getParameter("boardTitle").equals("")||request.getParameter("boardContent").equals("")){
            PrintWriter script=response.getWriter();
            script.println("<script>");
            script.println("alert('입력이 안 된 사항이 있습니다.')");
            script.println("history.back()");
            script.println("</script>");
        }else{
            BoardDAO boardDAO=new BoardDAO();//하나의 인스턴스
            int result=boardDAO.update(boardId, request.getParameter("boardTitle"),request.getParameter("boardContent"));
            if(result == -1){//데이터 베이스 오류가 날 때
                PrintWriter script=response.getWriter();
                script.println("<script>");
                script.println("alert('글 수정에 실패했습니다.')");
                script.println("history.back()");
                script.println("</script>");
            }
            else{
                PrintWriter script=response.getWriter();
                script.println("<script>");
                script.println("location.href='board.jsp?pageNumber=1'");
                script.println("</script>");
            }
        }

    }
%>
</body>
</html>
