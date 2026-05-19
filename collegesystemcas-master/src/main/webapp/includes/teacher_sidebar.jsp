<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    String currentPath = request.getRequestURI();
    String activePage = currentPath.substring(currentPath.lastIndexOf("/") + 1);
%>
<nav id="sidebar">
    <div class="sidebar-brand">
        <i class="bi bi-person-workspace text-primary"></i> CAS Teacher
    </div>
    <ul class="sidebar-nav">
        <li>
            <a href="teacher_dashboard.jsp" class="<%= activePage.equals("teacher_dashboard.jsp") ? "active" : "" %>">
                <i class="bi bi-house-door"></i> Dashboard
            </a>
        </li>
        <li>
            <a href="takeAttendance" class="<%= activePage.contains("takeAttendance") ? "active" : "" %>">
                <i class="bi bi-calendar-check"></i> Take Attendance
            </a>
        </li>
        <li>
            <a href="#" class="<%= activePage.contains("defaulter") ? "active" : "" %>">
                <i class="bi bi-exclamation-triangle"></i> Defaulter List
            </a>
        </li>
    </ul>
</nav>

<script>
    document.addEventListener("DOMContentLoaded", function() {
        const sidebar = document.getElementById("sidebar");
        const content = document.getElementById("content-wrapper");
        const toggleBtn = document.getElementById("sidebarToggle");

        if(toggleBtn) {
            toggleBtn.addEventListener("click", function() {
                sidebar.classList.toggle("collapsed");
                content.classList.toggle("expanded");
            });
        }
    });
</script>
