<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    String serverName = request.getServerName();
    String serverIP = request.getLocalAddr();
    String clientIP = request.getRemoteAddr();
    String protocol = request.getProtocol();
    String method = request.getMethod();
    String sessionId = session.getId();
    String time = new java.util.Date().toString();
%>

<!DOCTYPE html>
<html>
<head>
    <title>Secure WAR Application</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f8;
            margin: 0;
            padding: 0;
        }
        header {
            background: #0b5ed7;
            color: white;
            padding: 20px;
            text-align: center;
        }
        section {
            padding: 20px;
        }
        .card {
            background: white;
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        h2 {
            color: #0b5ed7;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        table, th, td {
            border: 1px solid #ddd;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        footer {
            background: #222;
            color: #ccc;
            text-align: center;
            padding: 10px;
        }
    </style>
</head>

<body>

<header>
    <h1>Secure WAR Application</h1>
    <p>Deployed on AWS Elastic Beanstalk using Apache Tomcat</p>
</header>

<section>

    <div class="card">
        <h2>🚀 Deployment Status</h2>
        <p><strong>Status:</strong> Application Successfully Deployed</p>
        <p><strong>Deployment Time:</strong> <%= time %></p>
    </div>

    <div class="card">
        <h2>🖥️ Server Details</h2>
        <table>
            <tr>
                <th>Parameter</th>
                <th>Value</th>
            </tr>
            <tr>
                <td>Server Name</td>
                <td><%= serverName %></td>
            </tr>
            <tr>
                <td>Server IP</td>
                <td><%= serverIP %></td>
            </tr>
            <tr>
                <td>Protocol</td>
                <td><%= protocol %></td>
            </tr>
            <tr>
                <td>HTTP Method</td>
                <td><%= method %></td>
            </tr>
            <tr>
                <td>Session ID</td>
                <td><%= sessionId %></td>
            </tr>
        </table>
    </div>

    <div class="card">
        <h2>🌐 Client Information</h2>
        <p><strong>Client IP Address:</strong> <%= clientIP %></p>
    </div>

    <div class="card">
        <h2>☁️ AWS Architecture Overview</h2>
        <ul>
            <li>Application packaged as a <strong>WAR file</strong></li>
            <li>Hosted on <strong>AWS Elastic Beanstalk</strong></li>
            <li>Runs on <strong>Apache Tomcat</strong></li>
            <li>Deployed on <strong>EC2 instance</strong></li>
            <li>Supports <strong>Auto Scaling & Load Balancer (future scope)</strong></li>
            <li>Monitored using <strong>Amazon CloudWatch</strong></li>
        </ul>
    </div>

    <div class="card">
        <h2>🔐 Security Features</h2>
        <ul>
            <li>Application runs inside a secure AWS VPC</li>
            <li>Access controlled using Security Groups</li>
            <li>IAM roles used for controlled AWS access</li>
            <li>Public access only via Elastic Beanstalk endpoint</li>
        </ul>
    </div>

</section>

<footer>
    <p>Secure WAR App | AWS Cloud Deployment Project</p>
</footer>

</body>
</html>
