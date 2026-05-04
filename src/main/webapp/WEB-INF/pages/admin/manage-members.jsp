<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" class="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manage Members — GymPulse</title>
</head>
<body class="bg-gradient-to-br from-zinc-950 via-zinc-900 to-black text-white min-h-screen flex flex-col font-sans antialiased">
<%@ include file="../header.jsp" %>

<main class="flex-grow max-w-7xl mx-auto w-full px-4 sm:px-6 lg:px-8 py-10 pb-20">

    <!-- Page Header -->
    <div class="mb-8 flex flex-col md:flex-row md:items-end justify-between gap-4">
        <div>
            <p class="text-xs font-semibold uppercase tracking-[0.3em] text-zinc-500 mb-1">Administration</p>
            <h1 class="text-3xl font-bold tracking-tight text-white">Manage Members</h1>
            <p class="text-zinc-500 text-sm mt-1">
                <span class="text-zinc-300 font-medium">${members != null ? members.size() : 0}</span> total members registered
            </p>
        </div>
        <!-- Search -->
        <div class="relative w-full md:w-80">
            <div class="absolute inset-y-0 left-0 pl-3 flex items-center pointer-events-none">
                <svg class="h-4 w-4 text-zinc-500" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M21 21l-6-6m2-5a7 7 0 11-14 0 7 7 0 0114 0z"/>
                </svg>
            </div>
            <input type="text" id="memberSearch" placeholder="Search by name or email..." onkeyup="filterTable()"
                   class="w-full pl-10 pr-4 py-2.5 bg-zinc-900/50 border border-zinc-800 rounded-xl focus:border-zinc-600 outline-none text-sm text-white placeholder-zinc-600 transition-all backdrop-blur-md">
        </div>
    </div>

    <!-- Flash Messages -->
    <c:if test="${param.success == 'deleted'}"><div class="mb-6 flex items-center gap-3 px-4 py-3 bg-emerald-500/10 border border-emerald-500/20 text-emerald-400 rounded-xl text-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5"/></svg>Member deleted successfully.</div></c:if>
    <c:if test="${param.success == 'updated'}"><div class="mb-6 flex items-center gap-3 px-4 py-3 bg-emerald-500/10 border border-emerald-500/20 text-emerald-400 rounded-xl text-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5"/></svg>Member updated successfully.</div></c:if>
    <c:if test="${param.success == 'password_changed'}"><div class="mb-6 flex items-center gap-3 px-4 py-3 bg-emerald-500/10 border border-emerald-500/20 text-emerald-400 rounded-xl text-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5"/></svg>Password changed successfully.</div></c:if>
    <c:if test="${param.success == 'plan_assigned'}"><div class="mb-6 flex items-center gap-3 px-4 py-3 bg-emerald-500/10 border border-emerald-500/20 text-emerald-400 rounded-xl text-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5"/></svg>Plan assigned successfully.</div></c:if>
    <c:if test="${param.error == 'delete_failed'}"><div class="mb-6 flex items-center gap-3 px-4 py-3 bg-red-500/10 border border-red-500/20 text-red-400 rounded-xl text-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><path d="m15 9-6 6M9 9l6 6"/></svg>Failed to delete member.</div></c:if>
    <c:if test="${param.error == 'invalid_data'}"><div class="mb-6 flex items-center gap-3 px-4 py-3 bg-red-500/10 border border-red-500/20 text-red-400 rounded-xl text-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><path d="m15 9-6 6M9 9l6 6"/></svg>Invalid input data provided.</div></c:if>
    <c:if test="${param.error == 'weak_password'}"><div class="mb-6 flex items-center gap-3 px-4 py-3 bg-amber-500/10 border border-amber-500/20 text-amber-400 rounded-xl text-sm"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m21.73 18-8-14a2 2 0 0 0-3.48 0l-8 14A2 2 0 0 0 4 21h16a2 2 0 0 0 1.73-3Z"/><path d="M12 9v4M12 17h.01"/></svg>Weak password. Min 8 chars, 1 uppercase, 1 number, 1 special character.</div></c:if>

    <!-- Edit Panel (shown when a member is selected) -->
    <c:if test="${member != null}">
        <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-8">
            <!-- Edit Profile Card -->
            <div class="bg-zinc-900/50 border border-zinc-800 rounded-2xl p-6 backdrop-blur-xl shadow-2xl">
                <div class="flex items-center justify-between mb-5">
                    <div class="flex items-center gap-3">
                        <div class="w-10 h-10 rounded-xl bg-zinc-800 border border-zinc-700 flex items-center justify-center text-base font-bold text-zinc-300 uppercase">
                            ${member.fullName.substring(0,1)}
                        </div>
                        <div>
                            <h3 class="text-base font-bold text-white">${member.fullName}</h3>
                            <p class="text-xs text-zinc-500">${member.email}</p>
                        </div>
                    </div>
                    <a href="${pageContext.request.contextPath}/admin/members" class="text-xs text-zinc-500 hover:text-zinc-300 transition-colors flex items-center gap-1">
                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="m18 6-12 12M6 6l12 12"/></svg>
                        Close
                    </a>
                </div>
                <form action="${pageContext.request.contextPath}/admin/members" method="POST" class="space-y-4">
                    <input type="hidden" name="action" value="update">
                    <input type="hidden" name="userId" value="${member.userId}">
                    <div class="grid grid-cols-2 gap-4">
                        <div>
                            <label class="block text-xs font-medium text-zinc-400 mb-1.5">Full Name</label>
                            <input type="text" name="fullName" value="${member.fullName}" required
                                   class="w-full px-3 py-2.5 bg-zinc-950/80 border border-zinc-800 rounded-lg focus:border-zinc-600 outline-none text-white text-sm transition-colors">
                        </div>
                        <div>
                            <label class="block text-xs font-medium text-zinc-400 mb-1.5">Phone</label>
                            <input type="text" name="phone" value="${member.phone}" maxlength="10" required
                                   class="w-full px-3 py-2.5 bg-zinc-950/80 border border-zinc-800 rounded-lg focus:border-zinc-600 outline-none text-white text-sm transition-colors">
                        </div>
                    </div>
                    <div>
                        <label class="block text-xs font-medium text-zinc-400 mb-1.5">Account Status</label>
                        <select name="status" class="w-full px-3 py-2.5 bg-zinc-950/80 border border-zinc-800 rounded-lg focus:border-zinc-600 outline-none text-white text-sm transition-colors">
                            <option value="active" ${member.status == 'active' ? 'selected' : ''}>✅ Active</option>
                            <option value="locked" ${member.status == 'locked' ? 'selected' : ''}>🔒 Locked</option>
                            <option value="inactive" ${member.status == 'inactive' ? 'selected' : ''}>⚪ Inactive</option>
                        </select>
                    </div>
                    <button type="submit" class="w-full py-2.5 bg-white hover:bg-zinc-200 text-black font-semibold rounded-lg text-sm transition-colors">
                        Save Changes
                    </button>
                </form>
                <div class="border-t border-zinc-800 mt-5 pt-5">
                    <p class="text-xs font-semibold text-zinc-500 uppercase tracking-wider mb-3">Reset Password</p>
                    <form action="${pageContext.request.contextPath}/admin/members" method="POST" class="flex gap-2">
                        <input type="hidden" name="action" value="changePassword">
                        <input type="hidden" name="userId" value="${member.userId}">
                        <input type="password" name="newPassword" placeholder="New password..." required
                               class="flex-1 px-3 py-2.5 bg-zinc-950/80 border border-zinc-800 rounded-lg focus:border-zinc-600 outline-none text-white text-sm transition-colors">
                        <button type="submit" class="px-4 py-2.5 bg-zinc-800 hover:bg-zinc-700 text-zinc-200 text-sm font-medium rounded-lg transition-colors border border-zinc-700">
                            Reset
                        </button>
                    </form>
                </div>
            </div>

            <!-- Membership Card -->
            <div class="bg-zinc-900/50 border border-zinc-800 rounded-2xl p-6 backdrop-blur-xl shadow-2xl">
                <h3 class="text-base font-bold text-white mb-4">Membership Status</h3>
                <c:choose>
                    <c:when test="${activeMembership != null}">
                        <div class="bg-emerald-500/5 border border-emerald-500/20 rounded-xl p-4 mb-5">
                            <div class="flex items-center justify-between mb-2">
                                <span class="font-semibold text-emerald-400 text-sm">${activeMembership.planName}</span>
                                <div class="flex items-center gap-1.5 text-xs text-emerald-400">
                                    <span class="w-1.5 h-1.5 rounded-full bg-emerald-500 animate-pulse inline-block"></span>
                                    Active
                                </div>
                            </div>
                            <p class="text-xs text-zinc-400">Expires: <span class="text-zinc-200 font-medium">${activeMembership.endDate}</span></p>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <div class="bg-zinc-800/50 border border-zinc-700 rounded-xl p-4 mb-5 text-center">
                            <p class="text-sm text-zinc-500 font-medium">No active membership plan assigned.</p>
                        </div>
                    </c:otherwise>
                </c:choose>
                <div class="border-t border-zinc-800 pt-5">
                    <p class="text-xs font-semibold text-zinc-500 uppercase tracking-wider mb-3">Assign New Plan</p>
                    <form action="${pageContext.request.contextPath}/admin/members" method="POST" class="space-y-3">
                        <input type="hidden" name="action" value="assignPlan">
                        <input type="hidden" name="userId" value="${member.userId}">
                        <select name="planId" required
                                class="w-full px-3 py-2.5 bg-zinc-950/80 border border-zinc-800 rounded-lg focus:border-zinc-600 outline-none text-white text-sm transition-colors">
                            <option value="">— Select a plan —</option>
                            <c:forEach items="${allPlans}" var="plan">
                                <option value="${plan.planId}">${plan.planName} — $${plan.price} / ${plan.durationMonths} months</option>
                            </c:forEach>
                        </select>
                        <button type="submit" class="w-full py-2.5 bg-emerald-600 hover:bg-emerald-500 text-white font-semibold rounded-lg text-sm transition-colors shadow-lg shadow-emerald-900/20">
                            Assign Plan
                        </button>
                    </form>
                </div>
            </div>
        </div>
    </c:if>

    <!-- Members Table -->
    <div class="bg-zinc-900/40 border border-zinc-800 rounded-2xl overflow-hidden backdrop-blur-xl shadow-2xl">
        <div class="px-6 py-4 border-b border-zinc-800 flex items-center justify-between">
            <h2 class="text-sm font-semibold text-zinc-300">All Members</h2>
            <span class="text-xs text-zinc-600">${members != null ? members.size() : 0} records</span>
        </div>
        <div class="overflow-x-auto">
            <table id="membersTable" class="w-full text-left text-sm">
                <thead class="bg-zinc-950/60 border-b border-zinc-800 text-zinc-500 text-xs uppercase tracking-wider">
                    <tr>
                        <th class="px-6 py-3.5 font-medium">Member</th>
                        <th class="px-6 py-3.5 font-medium">Contact</th>
                        <th class="px-6 py-3.5 font-medium">Status</th>
                        <th class="px-6 py-3.5 font-medium text-right">Actions</th>
                    </tr>
                </thead>
                <tbody class="divide-y divide-zinc-800/50">
                    <c:choose>
                        <c:when test="${empty members}">
                            <tr>
                                <td colspan="4" class="px-6 py-16 text-center">
                                    <div class="flex flex-col items-center gap-3">
                                        <div class="w-14 h-14 rounded-2xl bg-zinc-800/50 border border-zinc-700 flex items-center justify-center">
                                            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="#52525b" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M16 21v-2a4 4 0 0 0-4-4H6a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M22 21v-2a4 4 0 0 0-3-3.87M16 3.13a4 4 0 0 1 0 7.75"/></svg>
                                        </div>
                                        <p class="text-sm text-zinc-500 font-medium">No members found</p>
                                        <p class="text-xs text-zinc-700">Members will appear here once they register.</p>
                                    </div>
                                </td>
                            </tr>
                        </c:when>
                        <c:otherwise>
                            <c:forEach items="${members}" var="m">
                                <tr class="hover:bg-zinc-800/20 transition-colors group ${member != null && member.userId == m.userId ? 'bg-zinc-800/30 border-l-2 border-l-white/20' : ''}">
                                    <td class="px-6 py-4">
                                        <div class="flex items-center gap-3">
                                            <div class="w-9 h-9 rounded-xl bg-zinc-800 border border-zinc-700 flex items-center justify-center text-sm font-bold text-zinc-300 uppercase flex-shrink-0">
                                                ${m.fullName.substring(0,1)}
                                            </div>
                                            <div>
                                                <p class="font-semibold text-white text-sm">${m.fullName}</p>
                                                <p class="text-xs text-zinc-500">#${m.userId}</p>
                                            </div>
                                        </div>
                                    </td>
                                    <td class="px-6 py-4">
                                        <p class="text-sm text-zinc-400">${m.email}</p>
                                        <p class="text-xs text-zinc-600 mt-0.5">${m.phone}</p>
                                    </td>
                                    <td class="px-6 py-4">
                                        <c:choose>
                                            <c:when test="${m.status == 'active'}">
                                                <span class="inline-flex items-center gap-1.5 px-2.5 py-1 rounded-lg text-xs font-semibold bg-emerald-500/10 text-emerald-400 border border-emerald-500/20">
                                                    <span class="w-1.5 h-1.5 rounded-full bg-emerald-500 animate-pulse"></span>Active
                                                </span>
                                            </c:when>
                                            <c:when test="${m.status == 'locked'}">
                                                <span class="inline-flex items-center gap-1.5 px-2.5 py-1 rounded-lg text-xs font-semibold bg-red-500/10 text-red-400 border border-red-500/20">
                                                    <span class="w-1.5 h-1.5 rounded-full bg-red-500"></span>Locked
                                                </span>
                                            </c:when>
                                            <c:otherwise>
                                                <span class="inline-flex items-center gap-1.5 px-2.5 py-1 rounded-lg text-xs font-semibold bg-zinc-700/30 text-zinc-500 border border-zinc-700/50">
                                                    <span class="w-1.5 h-1.5 rounded-full bg-zinc-600"></span>Inactive
                                                </span>
                                            </c:otherwise>
                                        </c:choose>
                                    </td>
                                    <td class="px-6 py-4 text-right">
                                        <div class="flex items-center justify-end gap-2">
                                            <a href="${pageContext.request.contextPath}/admin/members?action=view&userId=${m.userId}"
                                               class="inline-flex items-center gap-1.5 px-3 py-1.5 text-xs font-medium rounded-lg bg-zinc-800 text-zinc-200 hover:bg-zinc-700 transition-colors border border-zinc-700 hover:border-zinc-600">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M11 4H4a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2v-7"/><path d="M18.5 2.5a2.121 2.121 0 0 1 3 3L12 15l-4 1 1-4 9.5-9.5z"/></svg>
                                                Edit
                                            </a>
                                            <a href="${pageContext.request.contextPath}/admin/members?action=delete&userId=${m.userId}"
                                               class="inline-flex items-center gap-1.5 px-3 py-1.5 text-xs font-medium rounded-lg bg-red-500/10 text-red-400 hover:bg-red-500/20 transition-colors border border-red-500/20"
                                               onclick="return confirm('Delete ${m.fullName}? This cannot be undone.');">
                                                <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M3 6h18M19 6v14c0 1-1 2-2 2H7c-1 0-2-1-2-2V6M8 6V4c0-1 1-2 2-2h4c1 0 2 1 2 2v2"/></svg>
                                                Delete
                                            </a>
                                        </div>
                                    </td>
                                </tr>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                </tbody>
            </table>
        </div>
        <c:if test="${!empty members}">
            <div class="px-6 py-3 border-t border-zinc-800/50 flex items-center justify-between">
                <p class="text-xs text-zinc-600">Showing all <span class="text-zinc-400">${members.size()}</span> members</p>
                <p class="text-xs text-zinc-600" id="filterCount"></p>
            </div>
        </c:if>
    </div>

</main>

<%@ include file="../footer.jsp" %>

<script>
function filterTable() {
    const input = document.getElementById('memberSearch').value.toLowerCase().trim();
    const rows = document.querySelectorAll('#membersTable tbody tr');
    let visible = 0;
    rows.forEach(function(row) {
        if (row.cells.length < 2) return; // skip empty-state row
        const name = row.cells[0].textContent.toLowerCase();
        const contact = row.cells[1].textContent.toLowerCase();
        const show = name.includes(input) || contact.includes(input);
        row.style.display = show ? '' : 'none';
        if (show) visible++;
    });
    const counter = document.getElementById('filterCount');
    if (counter) {
        counter.textContent = input ? visible + ' match' + (visible !== 1 ? 'es' : '') + ' found' : '';
    }
}
</script>
</body>
</html>
