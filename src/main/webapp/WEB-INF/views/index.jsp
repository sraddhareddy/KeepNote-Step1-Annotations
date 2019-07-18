<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="false"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
   <!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send
        button. Handle errors like empty fields -->
   <h2>Note Information</h2>

   <form action="saveNote" method="post">

     Note ID:<br>
     <input type="number" id="noteId" name="noteId"><br>
     Title:<br>
     <input type="text" id="noteTitle" name="noteTitle"><br>
     Content:<br>
     <input type="textarea" id="noteContent" name="noteContent"><br>
     Status:<br>
     <select id="noteStatus" name= "noteStatus">
         <option value="active">Active</option>
         <option value="inactive">Inactive</option>
     </select>
     <br>
     <br>
     <button type="submit" value="Submit"> submit</button>

   </form>
   <br>
   <!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
   <c:if test="${not empty error}">
      <p style="color:red">Error</p>: ${error}
   </c:if>
   <h2>Saved Notes</h2>
   <table>
   <c:forEach items="${SavedNotes}" var="note">

       <form action="deleteNote" method="post">
           <input id="noteId" name="noteId" value="${note.noteId}"/>
           <input id="noteTitle" name="noteTitle" value="${note.noteTitle}"/>
           <input id="noteContent" name="noteContent" value="${note.noteContent}"/>
           <input id="noteStatus" name="noteStatus" value="${note.noteStatus}"/>
           <input id="createdtime" name="createdtime" value="${note.createdAt}"/>


           <button type="submit">Delete</button>
       </form>
       </td>
       </tr>
       </c:forEach>
   </table>

</body>
</html>