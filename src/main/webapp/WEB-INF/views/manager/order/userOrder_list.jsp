<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
		<table border="1">
			<thead>
				<tr>
					<th>#</th>
					<th>�̸�</th>
					<th>���̵�</th>
					<th>ȸ�� �ּ�</th>
					<th>��ȭ��ȣ</th>
					<th>���Գ�¥</th>
					<th>���ϸ���</th>
				</tr>
			</thead>
			<tbody>
				<tr class="">
					<td>${tmp.mem_num }</td>
					<c:choose>
						<c:when test="${tmp.mem_num != 3 }">
							<td>������</td>
						</c:when>
						<c:otherwise>
							<td>�Ϲ� ȸ��</td>
						</c:otherwise>
					</c:choose>
					<td>${tmp.name }</td>
					<td>${tmp.id}</td>
					<td>${tmp.addr }</td>
					<td>${tmp.phone }</td>
					<td>${tmp.regdate }</td>
					<td>${tmp.point }</td>

				</tr>
			</tbody>
		</table>
<br>
		<table border="1">
		<thead>
			<tr>
				<th>�޴� ���</th>
				<th>��ȭ ��ȣ</th>
				<th>��� �ּ�</th>
				<th>ȸ�� �ּ�</th>
				<th>���� ����</th>
				<th>���� ����</th>
				<th>��� ����</th>
				<th>������ ����</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td></td>
			</tr>
		</tbody>
	</table>
</body>
</html>