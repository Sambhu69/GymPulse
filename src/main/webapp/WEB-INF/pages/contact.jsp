<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en" class="dark">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us — GymPulse</title>
    <meta name="description" content="Get in touch with GymPulse. We're here to help.">
</head>
<body class="min-h-screen flex flex-col">
<%@ include file="header.jsp" %>

<!-- Hero Section -->
<div class="relative overflow-hidden mb-16">
    <div class="absolute inset-0 bg-gradient-to-b from-zinc-800/20 via-transparent to-transparent pointer-events-none"></div>
    <div class="max-w-5xl mx-auto px-6 pt-8 pb-12 text-center">
        <p class="text-xs font-semibold uppercase tracking-[0.3em] text-zinc-500 mb-4">We're Here To Help</p>
        <h1 class="text-4xl md:text-5xl font-bold text-white tracking-tight mb-4">Contact Us</h1>
        <p class="text-zinc-400 text-lg max-w-2xl mx-auto leading-relaxed">Have a question or want to get started? Reach out and our team will get back to you within 24 hours.</p>
    </div>
</div>

<div class="max-w-6xl mx-auto px-6 pb-20 flex-1">
    <div class="grid grid-cols-1 lg:grid-cols-5 gap-8">

        <!-- Contact Info Column -->
        <div class="lg:col-span-2 space-y-6">
            <div class="bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-2xl p-8">
                <h3 class="text-xl font-bold text-white mb-6">Get In Touch</h3>

                <div class="space-y-5">
                    <div class="flex items-start gap-4">
                        <div class="w-10 h-10 flex-shrink-0 rounded-xl bg-white/5 border border-zinc-700 flex items-center justify-center">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#a1a1aa" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M20 10c0 6-8 12-8 12s-8-6-8-12a8 8 0 0 1 16 0Z"/><circle cx="12" cy="10" r="3"/></svg>
                        </div>
                        <div>
                            <p class="text-sm font-semibold text-zinc-300 mb-0.5">Address</p>
                            <p class="text-sm text-zinc-500 leading-relaxed">123 Fitness Avenue, Suite 100<br>New York, NY 10001</p>
                        </div>
                    </div>

                    <div class="flex items-start gap-4">
                        <div class="w-10 h-10 flex-shrink-0 rounded-xl bg-white/5 border border-zinc-700 flex items-center justify-center">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#a1a1aa" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"/></svg>
                        </div>
                        <div>
                            <p class="text-sm font-semibold text-zinc-300 mb-0.5">Phone</p>
                            <p class="text-sm text-zinc-500">+1 (555) 123-4567</p>
                        </div>
                    </div>

                    <div class="flex items-start gap-4">
                        <div class="w-10 h-10 flex-shrink-0 rounded-xl bg-white/5 border border-zinc-700 flex items-center justify-center">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#a1a1aa" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect width="20" height="16" x="2" y="4" rx="2"/><path d="m22 7-8.97 5.7a1.94 1.94 0 0 1-2.06 0L2 7"/></svg>
                        </div>
                        <div>
                            <p class="text-sm font-semibold text-zinc-300 mb-0.5">Email</p>
                            <p class="text-sm text-zinc-500">support@gympulse.com</p>
                        </div>
                    </div>

                    <div class="flex items-start gap-4">
                        <div class="w-10 h-10 flex-shrink-0 rounded-xl bg-white/5 border border-zinc-700 flex items-center justify-center">
                            <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="#a1a1aa" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><polyline points="12 6 12 12 16 14"/></svg>
                        </div>
                        <div>
                            <p class="text-sm font-semibold text-zinc-300 mb-0.5">Hours</p>
                            <p class="text-sm text-zinc-500 leading-relaxed">Mon – Fri: 6:00 AM – 10:00 PM<br>Sat – Sun: 8:00 AM – 8:00 PM</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Contact Form Column -->
        <div class="lg:col-span-3">
            <div class="bg-zinc-900/60 backdrop-blur-sm border border-zinc-800 rounded-2xl p-8">
                <h3 class="text-xl font-bold text-white mb-2">Send Us a Message</h3>
                <p class="text-zinc-500 text-sm mb-8">Fill out the form below and we'll get back to you shortly.</p>

                <form id="contact-form">
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-5 mb-5">
                        <div>
                            <label class="block text-xs font-semibold uppercase tracking-wider text-zinc-400 mb-2">Your Name</label>
                            <input type="text" placeholder="John Doe" required
                                   class="w-full px-4 py-3 bg-zinc-800/50 border border-zinc-700 rounded-xl text-sm text-white placeholder-zinc-600 focus:outline-none focus:border-zinc-500 transition-colors">
                        </div>
                        <div>
                            <label class="block text-xs font-semibold uppercase tracking-wider text-zinc-400 mb-2">Email Address</label>
                            <input type="email" placeholder="you@example.com" required
                                   class="w-full px-4 py-3 bg-zinc-800/50 border border-zinc-700 rounded-xl text-sm text-white placeholder-zinc-600 focus:outline-none focus:border-zinc-500 transition-colors">
                        </div>
                    </div>
                    <div class="mb-5">
                        <label class="block text-xs font-semibold uppercase tracking-wider text-zinc-400 mb-2">Subject</label>
                        <input type="text" placeholder="How can we help?" required
                               class="w-full px-4 py-3 bg-zinc-800/50 border border-zinc-700 rounded-xl text-sm text-white placeholder-zinc-600 focus:outline-none focus:border-zinc-500 transition-colors">
                    </div>
                    <div class="mb-6">
                        <label class="block text-xs font-semibold uppercase tracking-wider text-zinc-400 mb-2">Message</label>
                        <textarea rows="5" placeholder="Tell us more about your inquiry..." required
                                  class="w-full px-4 py-3 bg-zinc-800/50 border border-zinc-700 rounded-xl text-sm text-white placeholder-zinc-600 focus:outline-none focus:border-zinc-500 transition-colors resize-vertical"></textarea>
                    </div>
                    <button type="button" onclick="document.getElementById('contact-success').classList.remove('hidden'); this.textContent='Message Sent!'; this.disabled=true; this.classList.add('opacity-50');"
                            class="w-full py-3 bg-white text-black font-semibold text-sm rounded-xl hover:bg-zinc-200 transition-colors">
                        Send Message
                    </button>
                    <div id="contact-success" class="hidden mt-4 p-3 bg-emerald-500/10 border border-emerald-500/30 rounded-xl text-center">
                        <p class="text-emerald-400 text-sm font-medium">Thank you! Your message has been received. We'll get back to you soon.</p>
                    </div>
                </form>
            </div>
        </div>

    </div>
</div>

<%@ include file="footer.jsp" %>
</body>
</html>
