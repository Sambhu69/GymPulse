<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="en" class="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Choose a Plan — GymPulse</title>
</head>
<body class="bg-gradient-to-br from-zinc-950 via-zinc-900 to-black text-white min-h-screen flex flex-col font-sans antialiased">
<%@ include file="../header.jsp" %>

<main class="flex-grow max-w-7xl mx-auto w-full px-4 sm:px-6 lg:px-8 py-12 pb-32">

    <!-- Header Section -->
    <div class="text-center max-w-3xl mx-auto mb-16">
        <p class="text-emerald-400 font-semibold tracking-widest uppercase text-xs mb-3">Upgrade Your Journey</p>
        <h1 class="text-4xl md:text-5xl font-bold tracking-tight mb-4 text-white">
            Choose a plan that's right for you
        </h1>
        <p class="text-zinc-400 text-lg">
            Unlock premium features, book unlimited classes, and track your fitness progress seamlessly. Switch plans or cancel anytime.
        </p>
    </div>

    <!-- Error Messages -->
    <c:if test="${param.error == 'failed'}">
        <div class="mb-8 max-w-3xl mx-auto px-4 py-3 bg-red-500/10 border border-red-500/20 text-red-400 rounded-xl text-center text-sm font-medium backdrop-blur-md">
            Failed to process subscription. Please try again or contact support.
        </div>
    </c:if>
    <c:if test="${param.error == 'invalid'}">
        <div class="mb-8 max-w-3xl mx-auto px-4 py-3 bg-amber-500/10 border border-amber-500/20 text-amber-400 rounded-xl text-center text-sm font-medium backdrop-blur-md">
            Invalid plan selection. Please select a valid plan.
        </div>
    </c:if>

    <!-- Pricing Cards Grid -->
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 max-w-6xl mx-auto relative z-10">
        <c:choose>
            <c:when test="${not empty plans}">
                <c:forEach items="${plans}" var="plan" varStatus="status">
                    
                    <%-- Assign a theme color based on iteration to make it visually distinct --%>
                    <c:set var="themeColor" value="blue" />
                    <c:if test="${status.index % 3 == 0}"><c:set var="themeColor" value="emerald" /></c:if>
                    <c:if test="${status.index % 3 == 1}"><c:set var="themeColor" value="indigo" /></c:if>
                    <c:if test="${status.index % 3 == 2}"><c:set var="themeColor" value="purple" /></c:if>

                    <div class="relative bg-zinc-900/50 backdrop-blur-xl border border-zinc-800 rounded-3xl p-8 flex flex-col hover:bg-zinc-800/50 hover:border-zinc-700 transition-all duration-300 shadow-2xl group overflow-hidden">
                        
                        <!-- Background glow effect -->
                        <div class="absolute -top-24 -right-24 w-48 h-48 bg-${themeColor}-500/10 rounded-full blur-3xl group-hover:bg-${themeColor}-500/20 transition-all duration-500 pointer-events-none"></div>

                        <div class="flex items-center justify-between mb-4 relative z-10">
                            <h3 class="text-2xl font-bold text-white">${plan.planName}</h3>
                            <div class="w-10 h-10 rounded-full bg-${themeColor}-500/10 border border-${themeColor}-500/20 flex items-center justify-center text-${themeColor}-400">
                                <c:choose>
                                    <c:when test="${plan.price == 0}"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/><path d="m9 11 3 3L22 4"/></svg></c:when>
                                    <c:when test="${status.index % 2 == 1}"><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2v20"/><path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"/></svg></c:when>
                                    <c:otherwise><svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M5 12h14"/><path d="m12 5 7 7-7 7"/></svg></c:otherwise>
                                </c:choose>
                            </div>
                        </div>

                        <p class="text-sm text-zinc-400 mb-6 h-10 line-clamp-2 relative z-10">${plan.description}</p>

                        <div class="mb-8 relative z-10 flex items-baseline gap-2">
                            <span class="text-4xl font-extrabold text-white">$${plan.price}</span>
                            <span class="text-zinc-500 font-medium">/ ${plan.durationMonths} mo</span>
                        </div>

                        <!-- Parse description into features if separated by commas -->
                        <div class="flex-grow mb-8 relative z-10">
                            <ul class="space-y-4">
                                <c:set var="features" value="${fn:split(plan.description, ',')}" />
                                <c:choose>
                                    <c:when test="${fn:length(features) > 1}">
                                        <c:forEach items="${features}" var="feature">
                                            <li class="flex items-start gap-3 text-sm text-zinc-300">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="text-emerald-500 mt-0.5 flex-shrink-0"><path d="M20 6 9 17l-5-5"/></svg>
                                                <span>${fn:trim(feature)}</span>
                                            </li>
                                        </c:forEach>
                                    </c:when>
                                    <c:otherwise>
                                        <li class="flex items-start gap-3 text-sm text-zinc-300">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="text-emerald-500 mt-0.5 flex-shrink-0"><path d="M20 6 9 17l-5-5"/></svg>
                                            <span>Full access to gym facilities</span>
                                        </li>
                                        <li class="flex items-start gap-3 text-sm text-zinc-300">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="text-emerald-500 mt-0.5 flex-shrink-0"><path d="M20 6 9 17l-5-5"/></svg>
                                            <span>Join group fitness classes</span>
                                        </li>
                                        <li class="flex items-start gap-3 text-sm text-zinc-300">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="text-emerald-500 mt-0.5 flex-shrink-0"><path d="M20 6 9 17l-5-5"/></svg>
                                            <span>24/7 Support</span>
                                        </li>
                                    </c:otherwise>
                                </c:choose>
                            </ul>
                        </div>

                        <form action="${pageContext.request.contextPath}/member/subscribe" method="POST" class="mt-auto relative z-10" onsubmit="return confirm('Are you sure you want to subscribe to ${plan.planName} for $${plan.price}?');">
                            <input type="hidden" name="planId" value="${plan.planId}">
                            <button type="submit" class="w-full py-3.5 bg-${themeColor}-600 hover:bg-${themeColor}-500 text-white font-bold rounded-xl transition-all shadow-lg hover:shadow-${themeColor}-500/25 active:scale-95">
                                <c:choose>
                                    <c:when test="${plan.price == 0}">Start Free Trial</c:when>
                                    <c:otherwise>Get Started</c:otherwise>
                                </c:choose>
                            </button>
                        </form>
                    </div>

                </c:forEach>
            </c:when>
            <c:otherwise>
                <div class="col-span-full bg-zinc-900/50 border border-zinc-800 rounded-3xl p-12 text-center backdrop-blur-xl">
                    <p class="text-zinc-400 text-lg">No plans are currently available. Please check back later.</p>
                </div>
            </c:otherwise>
        </c:choose>
    </div>

</main>

<%@ include file="../footer.jsp" %>
</body>
</html>
