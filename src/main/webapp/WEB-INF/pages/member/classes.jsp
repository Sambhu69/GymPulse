<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" class="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Fitness Classes — GymPulse</title>
</head>
<body class="bg-gradient-to-br from-zinc-950 via-zinc-900 to-black text-white min-h-screen flex flex-col font-sans antialiased">
<%@ include file="../header.jsp" %>

<main class="flex-grow max-w-7xl mx-auto w-full px-4 sm:px-6 lg:px-8 py-10 pb-20">

    <div class="mb-10">
        <h1 class="text-3xl md:text-4xl font-bold tracking-tight mb-2 bg-clip-text text-transparent bg-gradient-to-r from-white to-zinc-400">
            Available Fitness Classes
        </h1>
        <p class="text-zinc-400 text-sm md:text-base">Find the perfect session for your goals and schedule.</p>
    </div>

    <div class="space-y-4 mb-8">
        <c:if test="${param.success == 'booked'}">
            <div class="px-4 py-3 bg-emerald-500/10 border border-emerald-500/20 text-emerald-400 rounded-xl backdrop-blur-md text-sm flex items-center gap-2">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5"/></svg>
                Class booked successfully!
            </div>
        </c:if>
        <c:if test="${param.error == 'alreadybooked'}">
            <div class="px-4 py-3 bg-amber-500/10 border border-amber-500/20 text-amber-400 rounded-xl backdrop-blur-md text-sm flex items-center gap-2">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m21.73 18-8-14a2 2 0 0 0-3.48 0l-8 14A2 2 0 0 0 4 21h16a2 2 0 0 0 1.73-3Z"/><path d="M12 9v4"/><path d="M12 17h.01"/></svg>
                You have already booked this class.
            </div>
        </c:if>
    </div>

    <c:choose>
        <c:when test="${not empty availableClasses}">
            <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6">
                <c:forEach items="${availableClasses}" var="cls">
                    <div class="bg-zinc-900/50 backdrop-blur-xl border border-zinc-800 rounded-2xl p-6 hover:bg-zinc-800/50 hover:border-zinc-700 transition-all group flex flex-col shadow-xl">
                        <div class="flex items-start justify-between mb-4">
                            <h4 class="text-xl font-bold text-white group-hover:text-zinc-200 transition-colors">${cls.className}</h4>
                            <div class="w-10 h-10 rounded-xl bg-zinc-800 border border-zinc-700 flex items-center justify-center text-lg shadow-inner">
                                <c:choose>
                                    <c:when test="${cls.className.toLowerCase().contains('yoga')}">🧘</c:when>
                                    <c:when test="${cls.className.toLowerCase().contains('boxing')}">🥊</c:when>
                                    <c:when test="${cls.className.toLowerCase().contains('hiit')}">⚡</c:when>
                                    <c:when test="${cls.className.toLowerCase().contains('spin')}">🚴</c:when>
                                    <c:otherwise>🏋️</c:otherwise>
                                </c:choose>
                            </div>
                        </div>
                        
                        <div class="space-y-2.5 mb-6 text-sm">
                            <div class="flex items-center gap-3 text-zinc-300">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="text-zinc-500"><path d="M19 21v-2a4 4 0 0 0-4-4H9a4 4 0 0 0-4 4v2"/><circle cx="12" cy="7" r="4"/></svg>
                                <span><strong>Instructor:</strong> ${cls.instructor}</span>
                            </div>
                            <div class="flex items-center gap-3 text-zinc-300">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="text-zinc-500"><rect width="18" height="18" x="3" y="4" rx="2" ry="2"/><line x1="16" x2="16" y1="2" y2="6"/><line x1="8" x2="8" y1="2" y2="6"/><line x1="3" x2="21" y1="10" y2="10"/></svg>
                                <span>${cls.scheduleDate} at ${cls.scheduleTime}</span>
                            </div>
                        </div>

                        <p class="text-sm text-zinc-500 mb-8 flex-grow leading-relaxed line-clamp-3">${cls.description}</p>
                        
                        <div class="flex items-center justify-between pt-5 border-t border-zinc-800/50 mt-auto">
                            <div class="flex flex-col">
                                <span class="text-[10px] uppercase tracking-wider font-bold text-zinc-600 mb-0.5">Capacity</span>
                                <span class="text-sm font-semibold text-zinc-300">${cls.enrolled} / ${cls.capacity}</span>
                            </div>
                            
                            <form action="${pageContext.request.contextPath}/member/book" method="POST">
                                <input type="hidden" name="classId" value="${cls.classId}">
                                <button type="submit" class="px-5 py-2.5 bg-white hover:bg-zinc-200 text-black font-bold text-sm rounded-xl transition-all shadow-lg hover:shadow-white/10 active:scale-95">
                                    Book Now
                                </button>
                            </form>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </c:when>
        <c:otherwise>
            <div class="bg-zinc-900/40 border border-zinc-800 rounded-2xl p-12 text-center backdrop-blur-xl">
                <div class="w-16 h-16 bg-zinc-800/50 border border-zinc-700 rounded-2xl flex items-center justify-center mx-auto mb-4">
                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="text-zinc-600"><rect width="18" height="18" x="3" y="4" rx="2" ry="2"/><line x1="16" x2="16" y1="2" y2="6"/><line x1="8" x2="8" y1="2" y2="6"/><line x1="3" x2="21" y1="10" y2="10"/><line x1="8" x2="8.01" y1="14" y2="14"/><line x1="12" x2="12.01" y1="14" y2="14"/><line x1="16" x2="16.01" y1="14" y2="14"/><line x1="8" x2="8.01" y1="18" y2="18"/><line x1="12" x2="12.01" y1="18" y2="18"/><line x1="16" x2="16.01" y1="18" y2="18"/></svg>
                </div>
                <h3 class="text-xl font-bold text-zinc-300 mb-2">No Classes Found</h3>
                <p class="text-zinc-500 text-sm">There are no fitness classes available at the moment.<br>Please check back later.</p>
            </div>
        </c:otherwise>
    </c:choose>
</main>

<%@ include file="../footer.jsp" %>
</body>
</html>
