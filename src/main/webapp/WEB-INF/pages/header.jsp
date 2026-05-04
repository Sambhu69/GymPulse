<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!-- Google Fonts: Outfit -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Outfit:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<script src="https://cdn.tailwindcss.com"></script>
<script>
    tailwind.config = {
        darkMode: 'class',
        theme: {
            extend: {
                fontFamily: {
                    sans: ['Outfit', 'sans-serif'],
                },
                colors: {
                    background: '#09090b', // zinc-950
                }
            }
        }
    }
</script>

<style>
    body {
        background-color: #09090b;
        color: white;
        font-family: 'Outfit', sans-serif;
    }
    .nav-tab-active {
        color: #ffffff !important;
    }
    .custom-scrollbar::-webkit-scrollbar {
        width: 4px;
        height: 4px;
    }
    .custom-scrollbar::-webkit-scrollbar-track {
        background: transparent;
    }
    .custom-scrollbar::-webkit-scrollbar-thumb {
        background: #27272a;
        border-radius: 10px;
    }
</style>

<% 
    String uri = request.getRequestURI();
    boolean isAdminDashboard = uri.contains("admin/dashboard");
    boolean isAdminMembers = uri.contains("admin/members");
    boolean isAdminClasses = uri.contains("admin/classes");
    boolean isAdminPlans = uri.contains("admin/plans");
    boolean isMemberDashboard = uri.contains("member/dashboard");
    boolean isMemberProfile = uri.contains("member/profile");
%>

<div class="w-full flex justify-center py-6 fixed top-0 z-50 pointer-events-none">
    <!-- Perfectly Aligned Premium Pill Navbar -->
    <ul id="animated-nav" class="relative mx-auto flex items-center w-fit rounded-full border border-zinc-800 bg-zinc-900/40 backdrop-blur-xl p-1 pointer-events-auto shadow-2xl overflow-visible">
        
        <!-- Logo Section -->
        <li class="nav-tab relative z-10 block cursor-pointer px-4 py-2 md:px-5 md:py-2.5 transition-colors duration-300">
            <a href="${pageContext.request.contextPath}/" class="flex items-center gap-2 group">
                <div class="h-6 w-6 md:h-7 md:w-7 bg-white rounded-lg flex items-center justify-center p-1 group-hover:scale-110 transition-transform duration-300 shadow-[0_0_15px_rgba(255,255,255,0.3)]">
                    <svg viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" class="w-full h-full text-black">
                        <path d="M2 12H5L8 4L12 20L16 12H22" stroke="currentColor" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"/>
                    </svg>
                </div>
                <span class="font-bold tracking-tight text-base md:text-lg text-white uppercase italic">GymPulse</span>
            </a>
        </li>

        <div class="h-6 w-[1px] bg-zinc-800 mx-1"></div>

        <c:choose>
            <c:when test="${sessionScope.loggedUser.role == 'admin'}">
                <li class="nav-tab relative z-10 block cursor-pointer px-3 py-2 text-xs font-semibold uppercase text-zinc-400 md:px-4 md:py-2.5 md:text-sm hover:text-white transition-colors <%= isAdminDashboard ? "nav-tab-active" : "" %>">
                    <a href="${pageContext.request.contextPath}/admin/dashboard">Dashboard</a>
                </li>
                <li class="nav-tab relative z-10 block cursor-pointer px-3 py-2 text-xs font-semibold uppercase text-zinc-400 md:px-4 md:py-2.5 md:text-sm hover:text-white transition-colors <%= isAdminMembers ? "nav-tab-active" : "" %>">
                    <a href="${pageContext.request.contextPath}/admin/members">Members</a>
                </li>
                <li class="nav-tab relative z-10 block cursor-pointer px-3 py-2 text-xs font-semibold uppercase text-zinc-400 md:px-4 md:py-2.5 md:text-sm hover:text-white transition-colors <%= isAdminClasses ? "nav-tab-active" : "" %>">
                    <a href="${pageContext.request.contextPath}/admin/classes">Classes</a>
                </li>
                <li class="nav-tab relative z-10 block cursor-pointer px-3 py-2 text-xs font-semibold uppercase text-zinc-400 md:px-4 md:py-2.5 md:text-sm hover:text-white transition-colors <%= isAdminPlans ? "nav-tab-active" : "" %>">
                    <a href="${pageContext.request.contextPath}/admin/plans">Plans</a>
                </li>
            </c:when>
            <c:when test="${sessionScope.loggedUser.role == 'member'}">
                <li class="nav-tab relative z-10 block cursor-pointer px-3 py-2 text-xs font-semibold uppercase text-zinc-400 md:px-4 md:py-2.5 md:text-sm hover:text-white transition-colors <%= isMemberDashboard ? "nav-tab-active" : "" %>">
                    <a href="${pageContext.request.contextPath}/member/dashboard">Dashboard</a>
                </li>
                <li class="nav-tab relative z-10 block cursor-pointer px-3 py-2 text-xs font-semibold uppercase text-zinc-400 md:px-4 md:py-2.5 md:text-sm hover:text-white transition-colors <%= isMemberProfile ? "nav-tab-active" : "" %>">
                    <a href="${pageContext.request.contextPath}/member/profile">My Profile</a>
                </li>
            </c:when>
            <c:otherwise>
                 <li class="nav-tab relative z-10 block cursor-pointer px-3 py-2 text-xs font-semibold uppercase text-zinc-400 md:px-4 md:py-2.5 md:text-sm hover:text-white transition-colors">
                    <a href="${pageContext.request.contextPath}/login">Login</a>
                </li>
            </c:otherwise>
        </c:choose>

        <c:if test="${sessionScope.loggedUser != null}">
            <div class="h-6 w-[1px] bg-zinc-800 mx-1"></div>
            

            <li class="nav-tab relative z-10 block cursor-pointer px-3 py-2 text-xs font-semibold uppercase text-zinc-400 md:px-4 md:py-2.5 md:text-sm hover:text-white transition-colors">
                <a href="${pageContext.request.contextPath}/logout">Logout</a>
            </li>
            <li class="nav-tab relative z-10 block cursor-pointer px-4 py-2 md:px-5 md:py-2.5">
                <div class="flex items-center gap-2 px-3 py-1 bg-zinc-800/50 rounded-full border border-zinc-700/50">
                    <div class="h-2 w-2 rounded-full bg-emerald-500 animate-pulse"></div>
                    <span class="text-[10px] md:text-xs font-bold text-zinc-300 uppercase tracking-wider">${sessionScope.loggedUser.fullName}</span>
                </div>
            </li>
        </c:if>

        <!-- Dynamic Sliding Cursor -->
        <li id="nav-cursor" class="absolute z-0 h-8 rounded-full md:h-10 pointer-events-none"
            style="opacity: 0; left: 0; width: 0; background-color: rgba(255,255,255,0.06); border: 1px solid rgba(255,255,255,0.15); transition: left 0.5s cubic-bezier(0.16,1,0.3,1), width 0.5s cubic-bezier(0.16,1,0.3,1), opacity 0.3s ease, background-color 0.3s ease, border-color 0.3s ease;"></li>
    </ul>
</div>

<div class="pt-24"></div>

<script>
    document.addEventListener("DOMContentLoaded", () => {
        const navBar = document.getElementById("animated-nav");
        const cursor = document.getElementById("nav-cursor");
        const tabs = document.querySelectorAll(".nav-tab");
        
        if (!navBar || !cursor) return;

        const STYLE_ACTIVE = { bg: "rgba(255,255,255,0.06)", border: "rgba(255,255,255,0.15)" };
        const STYLE_HOVER  = { bg: "rgba(255,255,255,0.10)", border: "rgba(255,255,255,0.22)" };

        const applyCursorStyle = (style) => {
            cursor.style.backgroundColor = style.bg;
            cursor.style.borderColor = style.border;
        };

        const updateCursor = (tab) => {
            const navRect = navBar.getBoundingClientRect();
            const tabRect = tab.getBoundingClientRect();
            cursor.style.width = tabRect.width + "px";
            cursor.style.left = (tabRect.left - navRect.left) + "px";
            cursor.style.opacity = "1";
        };

        // Active Tab Logic
        const activeTab = document.querySelector(".nav-tab-active");
        if (activeTab) {
            setTimeout(() => {
                updateCursor(activeTab);
                applyCursorStyle(STYLE_ACTIVE);
            }, 100);
        }

        tabs.forEach((tab) => {
            tab.addEventListener("mouseenter", () => {
                updateCursor(tab);
                applyCursorStyle(STYLE_HOVER);
            });
        });

        navBar.addEventListener("mouseleave", () => {
            if (activeTab) {
                updateCursor(activeTab);
                applyCursorStyle(STYLE_ACTIVE);
            } else {
                cursor.style.opacity = "0";
            }
        });
    });
</script>
