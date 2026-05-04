<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" class="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Privacy Policy — GymPulse</title>
    <meta name="description" content="GymPulse Privacy Policy — how we collect, use, and protect your data.">
</head>
<body class="min-h-screen flex flex-col">
<%@ include file="header.jsp" %>

<!-- Hero Section -->
<div class="relative overflow-hidden mb-16">
    <div class="absolute inset-0 bg-gradient-to-b from-zinc-800/20 via-transparent to-transparent pointer-events-none"></div>
    <div class="max-w-5xl mx-auto px-6 pt-8 pb-12 text-center">
        <p class="text-xs font-semibold uppercase tracking-[0.3em] text-zinc-500 mb-4">Legal</p>
        <h1 class="text-4xl md:text-5xl font-bold text-white tracking-tight mb-4">Privacy Policy</h1>
        <p class="text-zinc-400 text-lg max-w-2xl mx-auto leading-relaxed">Last updated: May 2026</p>
    </div>
</div>

<div class="max-w-4xl mx-auto px-6 pb-20 flex-1">
    <div class="space-y-8">

        <!-- Section 1 -->
        <section class="bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-2xl p-8">
            <div class="flex items-center gap-3 mb-4">
                <div class="w-8 h-8 rounded-lg bg-white/5 border border-zinc-700 flex items-center justify-center text-xs font-bold text-zinc-400">1</div>
                <h2 class="text-xl font-bold text-white">Information We Collect</h2>
            </div>
            <div class="text-zinc-400 text-sm leading-relaxed space-y-3">
                <p>When you create an account or use GymPulse, we may collect the following information:</p>
                <ul class="list-none space-y-2 ml-1">
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> <span><strong class="text-zinc-300">Personal Information:</strong> Name, email address, phone number, and date of birth.</span></li>
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> <span><strong class="text-zinc-300">Account Data:</strong> Login credentials (encrypted), membership plan, and account preferences.</span></li>
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> <span><strong class="text-zinc-300">Usage Data:</strong> Class bookings, attendance records, and interaction with our platform.</span></li>
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> <span><strong class="text-zinc-300">Technical Data:</strong> Browser type, IP address, device information, and cookies.</span></li>
                </ul>
            </div>
        </section>

        <!-- Section 2 -->
        <section class="bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-2xl p-8">
            <div class="flex items-center gap-3 mb-4">
                <div class="w-8 h-8 rounded-lg bg-white/5 border border-zinc-700 flex items-center justify-center text-xs font-bold text-zinc-400">2</div>
                <h2 class="text-xl font-bold text-white">How We Use Your Information</h2>
            </div>
            <div class="text-zinc-400 text-sm leading-relaxed space-y-3">
                <p>We use the information we collect to:</p>
                <ul class="list-none space-y-2 ml-1">
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> Provide, maintain, and improve our fitness management services.</li>
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> Process membership registrations and manage your account.</li>
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> Send important notifications about class schedules, membership renewals, and platform updates.</li>
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> Ensure security and prevent unauthorized access to accounts.</li>
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> Comply with legal obligations and resolve disputes.</li>
                </ul>
            </div>
        </section>

        <!-- Section 3 -->
        <section class="bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-2xl p-8">
            <div class="flex items-center gap-3 mb-4">
                <div class="w-8 h-8 rounded-lg bg-white/5 border border-zinc-700 flex items-center justify-center text-xs font-bold text-zinc-400">3</div>
                <h2 class="text-xl font-bold text-white">Data Protection & Security</h2>
            </div>
            <div class="text-zinc-400 text-sm leading-relaxed space-y-3">
                <p>We take the security of your data seriously and implement the following measures:</p>
                <ul class="list-none space-y-2 ml-1">
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> <span><strong class="text-zinc-300">Encryption:</strong> All passwords are encrypted using AES encryption before storage.</span></li>
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> <span><strong class="text-zinc-300">Secure Sessions:</strong> HTTP-only cookies and session-based authentication protect your login state.</span></li>
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> <span><strong class="text-zinc-300">Access Control:</strong> Role-based access ensures only authorized users can view sensitive data.</span></li>
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> <span><strong class="text-zinc-300">Account Lockout:</strong> Automatic lockout after multiple failed login attempts to prevent brute-force attacks.</span></li>
                </ul>
            </div>
        </section>

        <!-- Section 4 -->
        <section class="bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-2xl p-8">
            <div class="flex items-center gap-3 mb-4">
                <div class="w-8 h-8 rounded-lg bg-white/5 border border-zinc-700 flex items-center justify-center text-xs font-bold text-zinc-400">4</div>
                <h2 class="text-xl font-bold text-white">Data Sharing</h2>
            </div>
            <div class="text-zinc-400 text-sm leading-relaxed space-y-3">
                <p>We do <strong class="text-zinc-300">not</strong> sell, rent, or trade your personal information to third parties. We may share data only in the following circumstances:</p>
                <ul class="list-none space-y-2 ml-1">
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> With your explicit consent.</li>
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> To comply with applicable laws, regulations, or legal proceedings.</li>
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> With service providers who assist in operating our platform (bound by confidentiality agreements).</li>
                </ul>
            </div>
        </section>

        <!-- Section 5 -->
        <section class="bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-2xl p-8">
            <div class="flex items-center gap-3 mb-4">
                <div class="w-8 h-8 rounded-lg bg-white/5 border border-zinc-700 flex items-center justify-center text-xs font-bold text-zinc-400">5</div>
                <h2 class="text-xl font-bold text-white">Your Rights</h2>
            </div>
            <div class="text-zinc-400 text-sm leading-relaxed space-y-3">
                <p>As a GymPulse user, you have the right to:</p>
                <ul class="list-none space-y-2 ml-1">
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> <span><strong class="text-zinc-300">Access</strong> your personal data stored in our system.</span></li>
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> <span><strong class="text-zinc-300">Update or correct</strong> your personal information via your profile settings.</span></li>
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> <span><strong class="text-zinc-300">Request deletion</strong> of your account and associated data by contacting our support team.</span></li>
                    <li class="flex items-start gap-2"><span class="text-zinc-600 mt-0.5">•</span> <span><strong class="text-zinc-300">Withdraw consent</strong> for non-essential data processing at any time.</span></li>
                </ul>
            </div>
        </section>

        <!-- Section 6 -->
        <section class="bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-2xl p-8">
            <div class="flex items-center gap-3 mb-4">
                <div class="w-8 h-8 rounded-lg bg-white/5 border border-zinc-700 flex items-center justify-center text-xs font-bold text-zinc-400">6</div>
                <h2 class="text-xl font-bold text-white">Contact Us</h2>
            </div>
            <div class="text-zinc-400 text-sm leading-relaxed space-y-3">
                <p>If you have any questions about this Privacy Policy or how your data is handled, please contact us:</p>
                <div class="flex flex-col sm:flex-row gap-4 mt-4">
                    <div class="flex items-center gap-2 text-zinc-300">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect width="20" height="16" x="2" y="4" rx="2"/><path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7"/></svg>
                        <span class="text-sm">support@gympulse.com</span>
                    </div>
                    <div class="flex items-center gap-2 text-zinc-300">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"/></svg>
                        <span class="text-sm">+1 (555) 123-4567</span>
                    </div>
                </div>
            </div>
        </section>

    </div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
