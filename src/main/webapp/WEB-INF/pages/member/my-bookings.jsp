<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" class="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Bookings — GymPulse</title>
</head>
<body class="bg-gradient-to-br from-zinc-950 via-zinc-900 to-black text-white min-h-screen flex flex-col font-sans antialiased">
<%@ include file="../header.jsp" %>

<main class="flex-grow max-w-7xl mx-auto w-full px-4 sm:px-6 lg:px-8 py-10 pb-20">

    <div class="mb-10">
        <h1 class="text-3xl font-bold tracking-tight mb-2 bg-clip-text text-transparent bg-gradient-to-r from-white to-zinc-400">
            My Bookings
        </h1>
        <p class="text-zinc-400 text-sm">View and manage your scheduled fitness sessions.</p>
    </div>

    <c:if test="${not empty requestScope.error}">
        <div class="mb-6 px-4 py-3 bg-red-500/10 border border-red-500/20 text-red-400 rounded-xl backdrop-blur-md text-sm">
            ${requestScope.error}
        </div>
    </c:if>

    <div class="bg-zinc-900/40 border border-zinc-800 rounded-2xl overflow-hidden backdrop-blur-xl shadow-2xl">
        <div class="overflow-x-auto custom-scrollbar">
            <table class="w-full text-left text-sm whitespace-nowrap">
                <thead class="bg-zinc-950/80 border-b border-zinc-800 text-zinc-400 text-xs uppercase tracking-wider">
                    <tr>
                        <th class="px-6 py-4 font-medium text-left">Class Details</th>
                        <th class="px-6 py-4 font-medium text-left">Schedule</th>
                        <th class="px-6 py-4 font-medium text-left">Booked On</th>
                        <th class="px-6 py-4 font-medium text-left">Status</th>
                        <th class="px-6 py-4 font-medium text-right">Actions</th>
                    </tr>
                </thead>
                <tbody class="divide-y divide-zinc-800/50 text-zinc-300">
                    <c:choose>
                        <c:when test="${not empty myBookings}">
                            <c:forEach items="${myBookings}" var="b">
                                <tr class="hover:bg-zinc-800/30 transition-colors">
                                    <td class="px-6 py-4">
                                        <div class="flex items-center gap-3">
                                            <div class="w-10 h-10 rounded-xl bg-zinc-800 border border-zinc-700 flex items-center justify-center text-lg font-bold text-zinc-400 uppercase">
                                                ${b.className.substring(0,1)}
                                            </div>
                                            <div class="font-medium text-white">${b.className}</div>
                                        </div>
                                    </td>
                                    <td class="px-6 py-4">
                                        <div class="text-zinc-300">${b.scheduleDate}</div>
                                        <div class="text-xs text-zinc-500">${b.scheduleTime}</div>
                                    </td>
                                    <td class="px-6 py-4 text-zinc-500 text-xs">
                                        ${b.bookingDate}
                                    </td>
                                    <td class="px-6 py-4">
                                        <c:choose>
                                            <c:when test="${b.status == 'confirmed'}">
                                                <span class="inline-flex items-center px-2.5 py-1 rounded-lg text-xs font-semibold bg-emerald-500/10 text-emerald-400 border border-emerald-500/20">
                                                    <span class="w-1 h-1 rounded-full bg-emerald-500 mr-1.5 animate-pulse"></span>
                                                    Confirmed
                                                </span>
                                            </c:when>
                                            <c:when test="${b.status == 'cancelled'}">
                                                <span class="inline-flex items-center px-2.5 py-1 rounded-lg text-xs font-semibold bg-red-500/10 text-red-400 border border-red-500/20">
                                                    <span class="w-1 h-1 rounded-full bg-red-500 mr-1.5"></span>
                                                    Cancelled
                                                </span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="inline-flex items-center px-2.5 py-1 rounded-lg text-xs font-semibold bg-zinc-500/10 text-zinc-400 border border-zinc-500/20">
                                                    ${b.status}
                                                </span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td class="px-6 py-4 text-right">
                                        <c:if test="${b.status == 'confirmed'}">
                                            <a href="${pageContext.request.contextPath}/member/book?action=cancel&bookingId=${b.bookingId}&classId=${b.classId}"
                                               class="inline-flex items-center justify-center px-4 py-2 text-xs font-semibold rounded-xl bg-red-500/10 text-red-400 hover:bg-red-500/20 transition-all border border-red-500/20 hover:border-red-500/30"
                                               onclick="return confirm('Are you sure you want to cancel this booking?');">
                                               Cancel Booking
                                            </a>
                                        </c:if>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:when>
                        <c:otherwise>
                            <tr>
                                <td colspan="5" class="px-6 py-16 text-center text-zinc-500 italic">
                                    You haven't booked any classes yet. 
                                    <a href="${pageContext.request.contextPath}/member/dashboard" class="text-zinc-300 hover:text-white underline ml-1">Browse classes</a>
                                </td>
                            </tr>
                        </c:otherwise>
                    </c:choose>
                </tbody>
            </table>
        </div>
    </div>

</main>

<%@ include file="../footer.jsp" %>
</body>
</html>
