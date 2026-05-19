<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.college.attendance.model.Teacher" %>
<%
    Teacher teacher = (Teacher) session.getAttribute("user");
    if (teacher == null || !"Teacher".equals(session.getAttribute("role"))) {
        response.sendRedirect("login.jsp?msg=Please login first.");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>Teacher Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link href="css/admin_theme.css" rel="stylesheet">
    <style>
        .subject-card {
            background: #fff;
            border-radius: 12px;
            padding: 20px;
            text-align: center;
            border: 2px solid transparent;
            transition: all 0.3s ease;
            box-shadow: 0 4px 15px rgba(0,0,0,0.05);
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            height: 100%;
            text-decoration: none;
            color: inherit;
        }
        .subject-card:hover {
            transform: translateY(-5px);
        }
        
        .card-purple {
            border-color: #d8b4e2;
            background-color: #fcf9fd;
        }
        .card-purple .card-title-text { color: #a17eb8; }
        .card-purple .card-action { color: #8e65a6; }
        
        .card-red {
            border-color: #ffb3b3;
            background-color: #fffafb;
        }
        .card-red .card-title-text { color: #ff6b6b; }
        .card-red .card-action { color: #ff5252; }
        
        .card-title-text {
            font-size: 1.1rem;
            font-weight: 700;
            margin-bottom: 15px;
            text-transform: uppercase;
            letter-spacing: 1px;
        }
        
        .card-action {
            font-size: 0.9rem;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
            margin-bottom: 5px;
            font-weight: 500;
        }
        .card-action i {
            font-size: 1.1rem;
        }
        
        .dashboard-container {
            padding: 30px;
            max-width: 900px;
        }
    </style>
</head>
<body>
    
    <!-- Sidebar Include -->
    <jsp:include page="includes/teacher_sidebar.jsp" />

    <!-- Main Content -->
    <div id="content-wrapper">
        
        <!-- Header Include -->
        <jsp:include page="includes/teacher_header.jsp" />

        <div class="container-fluid dashboard-container">
            <h3 class="fw-bold mb-4" style="color: #2c3e50;">Teacher Dashboard</h3>
            
            <div class="row g-4 mt-2">
                <!-- Take Attendance Card -->
                <div class="col-md-6 col-lg-5">
                    <a href="takeAttendance" class="subject-card card-purple text-decoration-none">
                        <div class="card-title-text">TAKE ATTENDANCE</div>
                        <div class="card-action">
                            <i class="bi bi-eye"></i> View Classes
                        </div>
                        <div class="card-action">
                            <i class="bi bi-eye"></i> Mark Students
                        </div>
                    </a>
                </div>
                
                <!-- Defaulter List Card -->
                <div class="col-md-6 col-lg-5">
                    <a href="#" class="subject-card card-red text-decoration-none">
                        <div class="card-title-text">DEFAULTER LIST</div>
                        <div class="card-action">
                            <i class="bi bi-eye"></i> View Defaulters
                        </div>
                        <div class="card-action">
                            <i class="bi bi-eye"></i> Generate Report
                        </div>
                    </a>
                </div>
            </div>
            
            <div class="mt-5">
                <h5 class="fw-bold mb-4 text-center" style="color: #2c3e50; letter-spacing: 1px;">WEEKLY COURSE SCHEDULE</h5>
                <!-- Placeholder for schedule as seen in the design -->
                <div class="card border-0 shadow-sm" style="border-radius: 12px; height: 300px; background: #fff; display: flex; align-items: center; justify-content: center;">
                    <p class="text-muted">Schedule calendar will be displayed here</p>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
