<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" class="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us — GymPulse</title>
    <meta name="description" content="Learn about GymPulse — your modern fitness management platform.">
</head>
<body class="min-h-screen flex flex-col">
<%@ include file="header.jsp" %>

<!-- Hero Section -->
<div class="relative overflow-hidden mb-16">
    <div class="absolute inset-0 bg-gradient-to-b from-zinc-800/20 via-transparent to-transparent pointer-events-none"></div>
    <div class="max-w-5xl mx-auto px-6 pt-8 pb-12 text-center">
        <p class="text-xs font-semibold uppercase tracking-[0.3em] text-zinc-500 mb-4">Est. 2024</p>
        <h1 class="text-4xl md:text-5xl font-bold text-white tracking-tight mb-4">About GymPulse</h1>
        <p class="text-zinc-400 text-lg max-w-2xl mx-auto leading-relaxed">A modern fitness management platform designed to connect gym owners, trainers, and members in one seamless ecosystem.</p>
    </div>
</div>

<div class="max-w-6xl mx-auto px-6 pb-20 flex-1">

    <!-- Mission -->
    <section class="mb-20">
        <div class="bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-2xl p-8 md:p-12">
            <div class="flex items-center gap-3 mb-6">
                <div class="w-10 h-10 rounded-xl bg-white/5 border border-zinc-700 flex items-center justify-center">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22c5.523 0 10-4.477 10-10S17.523 2 12 2 2 6.477 2 12s4.477 10 10 10z"/><path d="m9 12 2 2 4-4"/></svg>
                </div>
                <h2 class="text-2xl font-bold text-white">Our Mission</h2>
            </div>
            <p class="text-zinc-400 leading-relaxed text-base md:text-lg">We believe that fitness should be accessible, organized, and motivating. GymPulse streamlines class scheduling, membership management, and progress tracking so you can focus on what matters — your health. Our platform empowers gym owners with powerful admin tools while giving members an intuitive, frictionless experience.</p>
        </div>
    </section>

    <!-- Instructors -->
    <section class="mb-20">
        <div class="text-center mb-10">
            <p class="text-xs font-semibold uppercase tracking-[0.3em] text-zinc-500 mb-2">Meet The Team</p>
            <h2 class="text-3xl font-bold text-white">Our Instructors</h2>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-3 gap-6">
            <div class="group bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-2xl p-8 text-center hover:border-zinc-600 transition-all duration-300">
                <div class="w-16 h-16 mx-auto mb-5 rounded-2xl bg-gradient-to-br from-zinc-700 to-zinc-800 flex items-center justify-center text-3xl shadow-lg group-hover:scale-110 transition-transform duration-300">🏋️</div>
                <h4 class="text-lg font-bold text-white mb-1">Alex Johnson</h4>
                <p class="text-xs font-semibold uppercase tracking-wider text-zinc-500 mb-3">Strength & Conditioning</p>
                <p class="text-zinc-400 text-sm leading-relaxed">Certified Specialist with 10+ years of experience in powerlifting and functional training.</p>
            </div>
            <div class="group bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-2xl p-8 text-center hover:border-zinc-600 transition-all duration-300">
                <div class="w-16 h-16 mx-auto mb-5 rounded-2xl bg-gradient-to-br from-zinc-700 to-zinc-800 flex items-center justify-center text-3xl shadow-lg group-hover:scale-110 transition-transform duration-300">🧘</div>
                <h4 class="text-lg font-bold text-white mb-1">Priya Sharma</h4>
                <p class="text-xs font-semibold uppercase tracking-wider text-zinc-500 mb-3">Yoga & Mindfulness</p>
                <p class="text-zinc-400 text-sm leading-relaxed">RYT-500 certified instructor specializing in Vinyasa, Hatha, and meditation practices.</p>
            </div>
            <div class="group bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-2xl p-8 text-center hover:border-zinc-600 transition-all duration-300">
                <div class="w-16 h-16 mx-auto mb-5 rounded-2xl bg-gradient-to-br from-zinc-700 to-zinc-800 flex items-center justify-center text-3xl shadow-lg group-hover:scale-110 transition-transform duration-300">🥊</div>
                <h4 class="text-lg font-bold text-white mb-1">Marcus Chen</h4>
                <p class="text-xs font-semibold uppercase tracking-wider text-zinc-500 mb-3">Boxing & HIIT</p>
                <p class="text-zinc-400 text-sm leading-relaxed">Professional boxing coach and former amateur champion with a passion for high-energy group classes.</p>
            </div>
        </div>
    </section>

    <!-- Facilities -->
    <section class="mb-20">
        <div class="text-center mb-10">
            <p class="text-xs font-semibold uppercase tracking-[0.3em] text-zinc-500 mb-2">World Class</p>
            <h2 class="text-3xl font-bold text-white">Our Facilities</h2>
        </div>
        <div class="grid grid-cols-1 md:grid-cols-2 gap-5">
            <div class="flex items-start gap-5 bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-xl p-6 hover:border-zinc-600 transition-all duration-300">
                <div class="w-12 h-12 flex-shrink-0 rounded-xl bg-white/5 border border-zinc-700 flex items-center justify-center text-2xl">🏢</div>
                <div>
                    <h4 class="text-base font-bold text-white mb-1">Modern Gym Floor</h4>
                    <p class="text-zinc-400 text-sm leading-relaxed">10,000 sq ft of open training space with premium equipment from Rogue and Life Fitness.</p>
                </div>
            </div>
            <div class="flex items-start gap-5 bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-xl p-6 hover:border-zinc-600 transition-all duration-300">
                <div class="w-12 h-12 flex-shrink-0 rounded-xl bg-white/5 border border-zinc-700 flex items-center justify-center text-2xl">🏊</div>
                <div>
                    <h4 class="text-base font-bold text-white mb-1">Olympic Pool</h4>
                    <p class="text-zinc-400 text-sm leading-relaxed">25m heated pool with dedicated lap lanes and aqua fitness sessions.</p>
                </div>
            </div>
            <div class="flex items-start gap-5 bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-xl p-6 hover:border-zinc-600 transition-all duration-300">
                <div class="w-12 h-12 flex-shrink-0 rounded-xl bg-white/5 border border-zinc-700 flex items-center justify-center text-2xl">🧖</div>
                <div>
                    <h4 class="text-base font-bold text-white mb-1">Recovery Zone</h4>
                    <p class="text-zinc-400 text-sm leading-relaxed">Sauna, steam room, and cold plunge pools for post-workout recovery.</p>
                </div>
            </div>
            <div class="flex items-start gap-5 bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-xl p-6 hover:border-zinc-600 transition-all duration-300">
                <div class="w-12 h-12 flex-shrink-0 rounded-xl bg-white/5 border border-zinc-700 flex items-center justify-center text-2xl">🥤</div>
                <div>
                    <h4 class="text-base font-bold text-white mb-1">Nutrition Bar</h4>
                    <p class="text-zinc-400 text-sm leading-relaxed">Protein shakes, cold-pressed juices, and healthy snacks made fresh daily.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Why Choose Us -->
    <section class="mb-12">
        <div class="bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-2xl p-8 md:p-12">
            <div class="flex items-center gap-3 mb-8">
                <div class="w-10 h-10 rounded-xl bg-white/5 border border-zinc-700 flex items-center justify-center">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="white" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9.937 15.5A2 2 0 0 0 8.5 14.063l-6.135-1.582a.5.5 0 0 1 0-.962L8.5 9.936A2 2 0 0 0 9.937 8.5l1.582-6.135a.5.5 0 0 1 .963 0L14.063 8.5A2 2 0 0 0 15.5 9.937l6.135 1.581a.5.5 0 0 1 0 .964L15.5 14.063a2 2 0 0 0-1.437 1.437l-1.582 6.135a.5.5 0 0 1-.963 0z"/></svg>
                </div>
                <h2 class="text-2xl font-bold text-white">Why Choose GymPulse?</h2>
            </div>
            <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                <div class="flex items-center gap-3 p-3 rounded-lg">
                    <div class="w-6 h-6 rounded-full bg-emerald-500/10 border border-emerald-500/30 flex items-center justify-center flex-shrink-0">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="#10b981" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5"/></svg>
                    </div>
                    <span class="text-zinc-300 text-sm">Easy online class booking and real-time availability</span>
                </div>
                <div class="flex items-center gap-3 p-3 rounded-lg">
                    <div class="w-6 h-6 rounded-full bg-emerald-500/10 border border-emerald-500/30 flex items-center justify-center flex-shrink-0">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="#10b981" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5"/></svg>
                    </div>
                    <span class="text-zinc-300 text-sm">Flexible membership plans for every budget</span>
                </div>
                <div class="flex items-center gap-3 p-3 rounded-lg">
                    <div class="w-6 h-6 rounded-full bg-emerald-500/10 border border-emerald-500/30 flex items-center justify-center flex-shrink-0">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="#10b981" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5"/></svg>
                    </div>
                    <span class="text-zinc-300 text-sm">Certified and experienced instructors</span>
                </div>
                <div class="flex items-center gap-3 p-3 rounded-lg">
                    <div class="w-6 h-6 rounded-full bg-emerald-500/10 border border-emerald-500/30 flex items-center justify-center flex-shrink-0">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="#10b981" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5"/></svg>
                    </div>
                    <span class="text-zinc-300 text-sm">State-of-the-art equipment and facilities</span>
                </div>
                <div class="flex items-center gap-3 p-3 rounded-lg">
                    <div class="w-6 h-6 rounded-full bg-emerald-500/10 border border-emerald-500/30 flex items-center justify-center flex-shrink-0">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="#10b981" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5"/></svg>
                    </div>
                    <span class="text-zinc-300 text-sm">Secure member portal with profile management</span>
                </div>
                <div class="flex items-center gap-3 p-3 rounded-lg">
                    <div class="w-6 h-6 rounded-full bg-emerald-500/10 border border-emerald-500/30 flex items-center justify-center flex-shrink-0">
                        <svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="#10b981" stroke-width="3" stroke-linecap="round" stroke-linejoin="round"><path d="M20 6 9 17l-5-5"/></svg>
                    </div>
                    <span class="text-zinc-300 text-sm">Responsive design — manage your fitness on the go</span>
                </div>
            </div>
        </div>
    </section>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
