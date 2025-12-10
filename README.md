<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>MTI考研自学平台 - 登录</title>
    <!-- Tailwind CSS v3 -->
    <script src="https://cdn.tailwindcss.com"></script>
    <!-- Font Awesome -->
    <link href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- Chart.js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@4.4.8/dist/chart.umd.min.js"></script>
    <!-- 统一的 Tailwind 配置 -->
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        primary: '#3B82F6',
                        secondary: '#10B981',
                        danger: '#EF4444',
                        warning: '#F59E0B',
                        light: '#F3F4F6',
                        dark: '#1F2937'
                    },
                    fontFamily: {
                        sans: ['Inter', 'system-ui', 'sans-serif'],
                    },
                    boxShadow: {
                        'card': '0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06)',
                        'card-hover': '0 10px 15px -3px rgba(0, 0, 0, 0.1), 0 4px 6px -2px rgba(0, 0, 0, 0.05)',
                    }
                }
            }
        }
    </script>
    <style type="text/tailwindcss">
        @layer utilities {
            .content-auto {
                content-visibility: auto;
            }
            .transition-all-300 {
                transition: all 0.3s ease;
            }
            .card-hover {
                @apply transition-all-300 hover:shadow-card-hover hover:-translate-y-1;
            }
            .btn-primary {
                @apply bg-primary text-white px-4 py-2 rounded-md hover:bg-blue-600 transition-all-300;
            }
            .btn-secondary {
                @apply bg-secondary text-white px-4 py-2 rounded-md hover:bg-green-600 transition-all-300;
            }
            .btn-danger {
                @apply bg-danger text-white px-4 py-2 rounded-md hover:bg-red-600 transition-all-300;
            }
            .btn-outline {
                @apply border border-primary text-primary px-4 py-2 rounded-md hover:bg-primary hover:text-white transition-all-300;
            }
            .nav-link {
                @apply flex items-center gap-2 px-4 py-3 rounded-md transition-all-300;
            }
            .nav-link.active {
                @apply bg-primary text-white;
            }
            .nav-link:not(.active) {
                @apply text-gray-600 hover:bg-blue-50;
            }
            .input-field {
                @apply w-full px-4 py-2 border border-gray-300 rounded-md focus:outline-none focus:ring-2 focus:ring-primary focus:border-transparent;
            }
            .badge {
                @apply px-2 py-1 text-xs font-medium rounded-full;
            }
            .badge-primary {
                @apply bg-blue-100 text-blue-800;
            }
            .badge-secondary {
                @apply bg-green-100 text-green-800;
            }
            .badge-danger {
                @apply bg-red-100 text-red-800;
            }
            .badge-warning {
                @apply bg-yellow-100 text-yellow-800;
            }
        }
    </style>
</head>
<body class="bg-gray-50 font-sans">
    <!-- 登录页面 -->
    <div id="login-page" class="min-h-screen flex items-center justify-center bg-gray-100">
        <div class="bg-white p-8 rounded-lg shadow-lg w-full max-w-md">
            <div class="flex items-center justify-center mb-6">
                <div class="bg-primary text-white p-2 rounded-lg">
                    <i class="fa fa-graduation-cap text-2xl"></i>
                </div>
                <h1 class="text-2xl font-bold ml-3 text-gray-800">MTI考研自学平台</h1>
            </div>
            
            <div class="mb-6">
                <div class="flex border-b border-gray-200">
                    <button class="w-1/2 py-2 px-4 text-center font-medium text-primary border-b-2 border-primary" data-role="user">
                        用户登录
                    </button>
                    <button class="w-1/2 py-2 px-4 text-center font-medium text-gray-500 hover:text-primary" data-role="developer">
                        开发者登录
                    </button>
                </div>
            </div>
            
            <form id="login-form" class="space-y-4">
                <div>
                    <label for="username" class="block text-sm font-medium text-gray-700 mb-1">用户名</label>
                    <input type="text" id="username" name="username" class="input-field" placeholder="请输入用户名" required>
                </div>
                
                <div>
                    <label for="password" class="block text-sm font-medium text-gray-700 mb-1">密码</label>
                    <input type="password" id="password" name="password" class="input-field" placeholder="请输入密码" required>
                </div>
                
                <div class="flex items-center">
                    <input type="checkbox" id="remember" name="remember" class="mr-2 h-4 w-4 text-primary focus:ring-primary border-gray-300 rounded">
                    <label for="remember" class="text-sm text-gray-600">记住我</label>
                </div>
                
                <button type="submit" class="w-full btn-primary">
                    <i class="fa fa-sign-in mr-2"></i>登录
                </button>
            </form>
        </div>
    </div>
    <!-- 主应用内容 -->
    <div id="app-container" class="hidden min-h-screen flex flex-col md:flex-row">
        <!-- 侧边导航栏 -->
        <aside class="w-full md:w-64 bg-white shadow-md md:min-h-screen p-4">
            <!-- 开发者端导航 -->
            <div id="developer-nav" class="hidden mt-4 pt-4 border-t border-gray-200">
                <h3 class="text-sm font-semibold text-gray-700 mb-2 px-2">开发者管理</h3>
                <nav class="space-y-1">
                    <a href="#user-management" class="nav-link" data-page="user-management">
                        <i class="fa fa-users w-5 text-center"></i>
                        <span>用户管理</span>
                    </a>
                    <a href="#question-bank-upload" class="nav-link" data-page="question-bank-upload">
                        <i class="fa fa-upload w-5 text-center"></i>
                        <span>题库上传</span>
                    </a>
                </nav>
            </div>
            <div class="flex items-center justify-center md:justify-start mb-8 pt-2">
                <div class="bg-primary text-white p-2 rounded-lg">
                    <i class="fa fa-graduation-cap text-xl"></i>
                </div>
                <h1 class="text-xl font-bold ml-2 text-gray-800">MTI考研自学平台</h1>
            </div>
            
            <nav class="space-y-1">
                <a href="#home" class="nav-link active" data-page="home">
                    <i class="fa fa-home w-5 text-center"></i>
                    <span>首页</span>
                </a>
                <a href="#question-bank" class="nav-link" data-page="question-bank">
                    <i class="fa fa-list-alt w-5 text-center"></i>
                    <span>题库系统</span>
                </a>
                <a href="#materials" class="nav-link" data-page="materials">
                    <i class="fa fa-book w-5 text-center"></i>
                    <span>资料中心</span>
                </a>
                <a href="#profile" class="nav-link" data-page="profile">
                    <i class="fa fa-user w-5 text-center"></i>
                    <span>个人中心</span>
                </a>
            </nav>
            
            <div class="mt-8 pt-4 border-t border-gray-200">
                <div class="bg-blue-50 p-4 rounded-lg">
                    <h3 class="font-medium text-gray-800 mb-2">学习进度</h3>
                    <div class="space-y-2">
                        <div>
                            <div class="flex justify-between text-xs text-gray-600 mb-1">
                                <span>211科目</span>
                                <span>35%</span>
                            </div>
                            <div class="w-full bg-gray-200 rounded-full h-2">
                                <div class="bg-primary h-2 rounded-full" style="width: 35%"></div>
                            </div>
                        </div>
                        <div>
                            <div class="flex justify-between text-xs text-gray-600 mb-1">
                                <span>357科目</span>
                                <span>20%</span>
                            </div>
                            <div class="w-full bg-gray-200 rounded-full h-2">
                                <div class="bg-primary h-2 rounded-full" style="width: 20%"></div>
                            </div>
                        </div>
                        <div>
                            <div class="flex justify-between text-xs text-gray-600 mb-1">
                                <span>448科目</span>
                                <span>15%</span>
                            </div>
                            <div class="w-full bg-gray-200 rounded-full h-2">
                                <div class="bg-primary h-2 rounded-full" style="width: 15%"></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </aside>
        
        <!-- 主内容区 -->
        <main class="flex-1 p-4 md:p-6">
            <!-- 开发者管理页面 -->
            <section id="user-management" class="page hidden">
                <div class="mb-6">
                    <h2 class="text-2xl font-bold text-gray-800">用户管理</h2>
                    <p class="text-gray-600">管理平台用户账号</p>
                </div>
                
                <div class="bg-white rounded-lg shadow-card p-6 mb-6">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="text-lg font-semibold text-gray-800">用户列表</h3>
                        <button id="add-user-btn" class="btn-primary">
                            <i class="fa fa-plus mr-2"></i>添加用户
                        </button>
                    </div>
                    
                    <div class="overflow-x-auto">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead>
                                <tr>
                                    <th class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">用户名</th>
                                    <th class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">邮箱</th>
                                    <th class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">角色</th>
                                    <th class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">状态</th>
                                    <th class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">操作</th>
                                </tr>
                            </thead>
                            <tbody id="users-table-body" class="bg-white divide-y divide-gray-200">
                                <!-- 用户列表将通过JavaScript动态生成 -->
                            </tbody>
                        </table>
                    </div>
                </div>
            </section>
            
            <section id="question-bank-upload" class="page hidden">
                <div class="mb-6">
                    <h2 class="text-2xl font-bold text-gray-800">题库上传</h2>
                    <p class="text-gray-600">上传和管理MTI考研题库</p>
                </div>
                
                <div class="bg-white rounded-lg shadow-card p-6">
                    <form id="upload-question-form" class="space-y-4">
                        <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                            <div>
                                <label for="question-bank-name" class="block text-sm font-medium text-gray-700 mb-1">题库名称</label>
                                <input type="text" id="question-bank-name" name="question-bank-name" class="input-field" required>
                            </div>
                            
                            <div>
                                <label for="question-subject" class="block text-sm font-medium text-gray-700 mb-1">科目</label>
                                <select id="question-subject" name="question-subject" class="input-field" required>
                                    <option value="211">211 翻译硕士英语</option>
                                    <option value="357">357 英语翻译基础</option>
                                    <option value="448">448 汉语写作与百科知识</option>
                                </select>
                            </div>
                            
                            <div>
                                <label for="question-difficulty" class="block text-sm font-medium text-gray-700 mb-1">难度</label>
                                <select id="question-difficulty" name="question-difficulty" class="input-field" required>
                                    <option value="easy">简单</option>
                                    <option value="medium">中等</option>
                                    <option value="hard">困难</option>
                                </select>
                            </div>
                            
                            <div>
                                <label for="question-type" class="block text-sm font-medium text-gray-700 mb-1">题型</label>
                                <select id="question-type" name="question-type" class="input-field" required>
                                    <option value="single">单选题</option>
                                    <option value="multiple">多选题</option>
                                    <option value="blank">填空题</option>
                                    <option value="translation">翻译题</option>
                                    <option value="writing">写作题</option>
                                </select>
                            </div>
                        </div>
                        
                        <div>
                            <label for="question-content" class="block text-sm font-medium text-gray-700 mb-1">题目内容</label>
                            <textarea id="question-content" name="question-content" rows="5" class="input-field" required></textarea>
                        </div>
                        
                        <div>
                            <label for="question-answer" class="block text-sm font-medium text-gray-700 mb-1">正确答案</label>
                            <textarea id="question-answer" name="question-answer" rows="3" class="input-field" required></textarea>
                        </div>
                        
                        <div>
                            <label for="question-explanation" class="block text-sm font-medium text-gray-700 mb-1">解析</label>
                            <textarea id="question-explanation" name="question-explanation" rows="3" class="input-field"></textarea>
                        </div>
                        
                        <div class="flex justify-end">
                            <button type="submit" class="btn-primary">
                                <i class="fa fa-upload mr-2"></i>上传题目
                            </button>
                        </div>
                    </form>
                </div>
            </section>
            <!-- 首页 -->
            <section id="home" class="page active">
                <div class="mb-6">
                    <h2 class="text-2xl font-bold text-gray-800">欢迎回来，考研er！</h2>
<p class="text-gray-600 font-bold text-right" id="target-school-container">金秋九月，<input type="text" class="border-b border-gray-400 focus:border-primary focus:outline-none px-2 py-1 w-24 text-center" placeholder="XX大学" id="target-school-input" />等你</p>
<script>
document.getElementById('target-school-input').addEventListener('input', function() {
    if (this.value.trim() !== '') {
        this.style.width = 'auto';
        this.style.minWidth = '6rem';
    } else {
        this.style.width = '6rem';
    }
});
</script>
                    <p class="text-gray-600">继续你的MTI考研备考之旅</p>
                </div>
                
                <!-- 学习概览卡片 -->
                <div class="grid grid-cols-1 md:grid-cols-3 gap-6 mb-8">
                    <div class="bg-white rounded-lg shadow-card p-6 card-hover">
                        <div class="flex items-center justify-between mb-4">
                            <h3 class="text-lg font-semibold text-gray-800">今日学习</h3>
                            <span class="badge badge-primary">进行中</span>
                        </div>
                        <div class="flex items-center">
                            <div class="text-3xl font-bold text-primary">45</div>
                            <div class="ml-2 text-gray-600">分钟</div>
                        </div>
                        <div class="mt-4">
                            <div class="flex justify-between text-xs text-gray-600 mb-1">
                                <span>目标: 60分钟</span>
                                <span>75%</span>
                            </div>
                            <div class="w-full bg-gray-200 rounded-full h-2">
                                <div class="bg-primary h-2 rounded-full" style="width: 75%"></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="bg-white rounded-lg shadow-card p-6 card-hover">
                        <div class="flex items-center justify-between mb-4">
                            <h3 class="text-lg font-semibold text-gray-800">本周完成</h3>
                            <span class="badge badge-secondary">已完成</span>
                        </div>
                        <div class="flex items-center">
                            <div class="text-3xl font-bold text-secondary">85</div>
                            <div class="ml-2 text-gray-600">题</div>
                        </div>
                        <div class="mt-4">
                            <div class="flex justify-between text-xs text-gray-600 mb-1">
                                <span>正确率</span>
                                <span>68%</span>
                            </div>
                            <div class="w-full bg-gray-200 rounded-full h-2">
                                <div class="bg-secondary h-2 rounded-full" style="width: 68%"></div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="bg-white rounded-lg shadow-card p-6 card-hover">
                        <div class="flex items-center justify-between mb-4">
                            <h3 class="text-lg font-semibold text-gray-800">错题复习</h3>
                            <span class="badge badge-warning">待完成</span>
                        </div>
                        <div class="flex items-center">
                            <div class="text-3xl font-bold text-warning">24</div>
                            <div class="ml-2 text-gray-600">题</div>
                        </div>
                        <button class="mt-4 w-full btn-primary">
                            <i class="fa fa-refresh mr-2"></i>开始复习
                        </button>
                    </div>
                </div>
                
                <!-- 学习统计图表 -->
                <div class="grid grid-cols-1 lg:grid-cols-2 gap-6 mb-8">
                    <div class="bg-white rounded-lg shadow-card p-6">
                        <h3 class="text-lg font-semibold text-gray-800 mb-4">学习时长统计</h3>
                        <div class="h-64">
                            <canvas id="studyTimeChart"></canvas>
                        </div>
                    </div>
                    
                    <div class="bg-white rounded-lg shadow-card p-6">
                        <h3 class="text-lg font-semibold text-gray-800 mb-4">答题正确率</h3>
                        <div class="h-64">
                            <canvas id="accuracyChart"></canvas>
                        </div>
                    </div>
                </div>
                
                <!-- 推荐练习 -->
                <div class="bg-white rounded-lg shadow-card p-6 mb-8">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="text-lg font-semibold text-gray-800">智能推荐练习</h3>
                        <span class="text-xs text-gray-500">基于你的学习数据</span>
                    </div>
                    
                    <div class="space-y-4">
                        <div class="border border-gray-200 rounded-lg p-4 card-hover">
                            <div class="flex items-center justify-between">
                                <div>
                                    <span class="badge badge-primary mb-2">211科目</span>
                                    <h4 class="font-medium text-gray-800">阅读理解专项练习</h4>
                                    <p class="text-sm text-gray-600 mt-1">针对你的弱项：长难句理解</p>
                                </div>
                                <button class="btn-primary">开始练习</button>
                            </div>
                        </div>
                        
                        <div class="border border-gray-200 rounded-lg p-4 card-hover">
                            <div class="flex items-center justify-between">
                                <div>
                                    <span class="badge badge-secondary mb-2">357科目</span>
                                    <h4 class="font-medium text-gray-800">英汉互译实战</h4>
                                    <p class="text-sm text-gray-600 mt-1">经济类文本翻译练习</p>
                                </div>
                                <button class="btn-primary">开始练习</button>
                            </div>
                        </div>
                        
                        <div class="border border-gray-200 rounded-lg p-4 card-hover">
                            <div class="flex items-center justify-between">
                                <div>
                                    <span class="badge badge-warning mb-2">448科目</span>
                                    <h4 class="font-medium text-gray-800">百科知识测试</h4>
                                    <p class="text-sm text-gray-600 mt-1">文学常识与翻译理论</p>
                                </div>
                                <button class="btn-primary">开始练习</button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- 最近学习资料 -->
                <div class="bg-white rounded-lg shadow-card p-6">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="text-lg font-semibold text-gray-800">最近学习资料</h3>
                        <a href="#materials" class="text-primary text-sm hover:underline">查看全部</a>
                    </div>
                    
                    <div class="space-y-4">
                        <div class="flex items-center p-3 border border-gray-200 rounded-lg card-hover">
                            <div class="bg-blue-100 p-3 rounded-lg text-primary">
                                <i class="fa fa-file-pdf-o text-xl"></i>
                            </div>
                            <div class="ml-4">
                                <h4 class="font-medium text-gray-800">MTI翻译硕士英语核心词汇</h4>
                                <p class="text-xs text-gray-500">211科目 · 浏览于 2小时前</p>
                            </div>
                            <button class="ml-auto btn-outline text-sm">
                                <i class="fa fa-eye mr-1"></i>查看
                            </button>
                        </div>
                        
                        <div class="flex items-center p-3 border border-gray-200 rounded-lg card-hover">
                            <div class="bg-green-100 p-3 rounded-lg text-secondary">
                                <i class="fa fa-file-word-o text-xl"></i>
                            </div>
                            <div class="ml-4">
                                <h4 class="font-medium text-gray-800">英汉翻译技巧与实践</h4>
                                <p class="text-xs text-gray-500">357科目 · 浏览于 昨天</p>
                            </div>
                            <button class="ml-auto btn-outline text-sm">
                                <i class="fa fa-eye mr-1"></i>查看
                            </button>
                        </div>
                        
                        <div class="flex items-center p-3 border border-gray-200 rounded-lg card-hover">
                            <div class="bg-yellow-100 p-3 rounded-lg text-warning">
                                <i class="fa fa-file-text-o text-xl"></i>
                            </div>
                            <div class="ml-4">
                                <h4 class="font-medium text-gray-800">中国文学常识汇总</h4>
                                <p class="text-xs text-gray-500">448科目 · 浏览于 3天前</p>
                            </div>
                            <button class="ml-auto btn-outline text-sm">
                                <i class="fa fa-eye mr-1"></i>查看
                            </button>
                        </div>
                    </div>
                </div>
            </section>
            
            <!-- 题库系统 -->
            <section id="question-bank" class="page hidden">
                <div class="mb-6">
                    <h2 class="text-2xl font-bold text-gray-800">题库系统</h2>
                    <p class="text-gray-600">练习MTI考研相关题目，提高应试能力</p>
                </div>
                
                <!-- 题库筛选 -->
                <div class="bg-white rounded-lg shadow-card p-6 mb-6">
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-1">科目</label>
                            <select class="input-field">
                                <option value="all">全部科目</option>
                                <option value="211">211 翻译硕士英语</option>
                                <option value="357">357 英语翻译基础</option>
                                <option value="448">448 汉语写作与百科知识</option>
                            </select>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-1">题型</label>
                            <select class="input-field">
                                <option value="all">全部题型</option>
                                <option value="single">单选题</option>
                                <option value="multiple">多选题</option>
                                <option value="blank">填空题</option>
                                <option value="translation">翻译题</option>
                                <option value="writing">写作题</option>
                            </select>
                        </div>
                        <div>
                            <label class="block text-sm font-medium text-gray-700 mb-1">难度</label>
                            <select class="input-field">
                                <option value="all">全部难度</option>
                                <option value="easy">简单</option>
                                <option value="medium">中等</option>
                                <option value="hard">困难</option>
                            </select>
                        </div>
                    </div>
                    <div class="mt-4 flex justify-end">
                        <button class="btn-primary">
                            <i class="fa fa-search mr-2"></i>筛选
                        </button>
                    </div>
                </div>
                
                <!-- 题库列表 -->
                <div class="bg-white rounded-lg shadow-card p-6 mb-6">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="text-lg font-semibold text-gray-800">题库列表</h3>
                        <button class="btn-outline text-sm" id="upload-question-btn">
                            <i class="fa fa-upload mr-1"></i>上传题库
                        </button>
                    </div>
                    
                    <div class="overflow-x-auto">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead>
                                <tr>
                                    <th class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">题库名称</th>
                                    <th class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">科目</th>
                                    <th class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">题目数量</th>
                                    <th class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">难度</th>
                                    <th class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">操作</th>
                                </tr>
                            </thead>
                            <tbody class="bg-white divide-y divide-gray-200">
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <div class="text-sm font-medium text-gray-900">211英语词汇练习</div>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="badge badge-primary">211科目</span>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">50题</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="badge badge-warning">中等</span>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                        <button class="text-primary hover:text-blue-800 mr-3">开始练习</button>
                                        <button class="text-gray-600 hover:text-gray-900">查看详情</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <div class="text-sm font-medium text-gray-900">英汉互译实战练习</div>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="badge badge-secondary">357科目</span>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">30题</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="badge badge-danger">困难</span>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                        <button class="text-primary hover:text-blue-800 mr-3">开始练习</button>
                                        <button class="text-gray-600 hover:text-gray-900">查看详情</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <div class="text-sm font-medium text-gray-900">百科知识选择题</div>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="badge badge-warning">448科目</span>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">100题</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="badge badge-secondary">简单</span>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                        <button class="text-primary hover:text-blue-800 mr-3">开始练习</button>
                                        <button class="text-gray-600 hover:text-gray-900">查看详情</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <div class="text-sm font-medium text-gray-900">英语阅读理解专项</div>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="badge badge-primary">211科目</span>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">20题</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="badge badge-warning">中等</span>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                        <button class="text-primary hover:text-blue-800 mr-3">开始练习</button>
                                        <button class="text-gray-600 hover:text-gray-900">查看详情</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <div class="text-sm font-medium text-gray-900">翻译理论与实践</div>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="badge badge-secondary">357科目</span>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">40题</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="badge badge-danger">困难</span>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm font-medium">
                                        <button class="text-primary hover:text-blue-800 mr-3">开始练习</button>
                                        <button class="text-gray-600 hover:text-gray-900">查看详情</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <!-- 错题集 -->
                <div class="bg-white rounded-lg shadow-card p-6">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="text-lg font-semibold text-gray-800">错题集</h3>
                        <span class="text-sm text-gray-500">共 24 题</span>
                    </div>
                    
                    <div class="space-y-4">
                        <div class="border border-gray-200 rounded-lg p-4">
                            <div class="flex items-start">
                                <div class="bg-red-100 text-danger p-2 rounded-lg">
                                    <i class="fa fa-times-circle"></i>
                                </div>
                                <div class="ml-4 flex-1">
                                    <div class="flex items-center justify-between">
                                        <span class="badge badge-primary">211科目</span>
                                        <span class="text-xs text-gray-500">2023-07-18</span>
                                    </div>
                                    <h4 class="font-medium text-gray-800 mt-1">Which of the following is NOT a synonym of "abundant"?</h4>
                                    <div class="mt-2 flex items-center">
                                        <span class="text-sm text-gray-600 mr-2">你的答案:</span>
                                        <span class="text-danger font-medium">B. Scarce</span>
                                    </div>
                                    <div class="mt-1 flex items-center">
                                        <span class="text-sm text-gray-600 mr-2">正确答案:</span>
                                        <span class="text-secondary font-medium">C. Plentiful</span>
                                    </div>
                                    <div class="mt-3 flex justify-end">
                                        <button class="btn-outline text-sm mr-2">
                                            <i class="fa fa-eye mr-1"></i>查看解析
                                        </button>
                                        <button class="btn-primary text-sm">
                                            <i class="fa fa-refresh mr-1"></i>重新练习
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="border border-gray-200 rounded-lg p-4">
                            <div class="flex items-start">
                                <div class="bg-red-100 text-danger p-2 rounded-lg">
                                    <i class="fa fa-times-circle"></i>
                                </div>
                                <div class="ml-4 flex-1">
                                    <div class="flex items-center justify-between">
                                        <span class="badge badge-secondary">357科目</span>
                                        <span class="text-xs text-gray-500">2023-07-19</span>
                                    </div>
                                    <h4 class="font-medium text-gray-800 mt-1">将下列句子翻译成英文：中国的发展不仅造福中国人民，也为世界和平与发展作出了重要贡献。</h4>
                                    <div class="mt-2">
                                        <span class="text-sm text-gray-600 block">你的答案:</span>
                                        <p class="text-danger text-sm mt-1">China's development not only benefits Chinese people, but also make important contribution to world peace and development.</p>
                                    </div>
                                    <div class="mt-1">
                                        <span class="text-sm text-gray-600 block">正确答案:</span>
                                        <p class="text-secondary text-sm mt-1">China's development not only benefits the Chinese people, but also makes important contributions to world peace and development.</p>
                                    </div>
                                    <div class="mt-3 flex justify-end">
                                        <button class="btn-outline text-sm mr-2">
                                            <i class="fa fa-eye mr-1"></i>查看解析
                                        </button>
                                        <button class="btn-primary text-sm">
                                            <i class="fa fa-refresh mr-1"></i>重新练习
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        <div class="border border-gray-200 rounded-lg p-4">
                            <div class="flex items-start">
                                <div class="bg-red-100 text-danger p-2 rounded-lg">
                                    <i class="fa fa-times-circle"></i>
                                </div>
                                <div class="ml-4 flex-1">
                                    <div class="flex items-center justify-between">
                                        <span class="badge badge-warning">448科目</span>
                                        <span class="text-xs text-gray-500">2023-07-20</span>
                                    </div>
                                    <h4 class="font-medium text-gray-800 mt-1">下列哪位翻译家提出了"信、达、雅"的翻译标准？</h4>
                                    <div class="mt-2 flex items-center">
                                        <span class="text-sm text-gray-600 mr-2">你的答案:</span>
                                        <span class="text-danger font-medium">C. 钱钟书</span>
                                    </div>
                                    <div class="mt-1 flex items-center">
                                        <span class="text-sm text-gray-600 mr-2">正确答案:</span>
                                        <span class="text-secondary font-medium">B. 严复</span>
                                    </div>
                                    <div class="mt-3 flex justify-end">
                                        <button class="btn-outline text-sm mr-2">
                                            <i class="fa fa-eye mr-1"></i>查看解析
                                        </button>
                                        <button class="btn-primary text-sm">
                                            <i class="fa fa-refresh mr-1"></i>重新练习
                                        </button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="mt-4 flex justify-center">
                        <nav class="inline-flex rounded-md shadow">
                            <a href="#" class="py-2 px-4 bg-white border border-gray-300 rounded-l-md text-gray-700 hover:bg-gray-50">上一页</a>
                            <a href="#" class="py-2 px-4 bg-primary text-white border border-primary">1</a>
                            <a href="#" class="py-2 px-4 bg-white border border-gray-300 text-gray-700 hover:bg-gray-50">2</a>
                            <a href="#" class="py-2 px-4 bg-white border border-gray-300 text-gray-700 hover:bg-gray-50">3</a>
                            <a href="#" class="py-2 px-4 bg-white border border-gray-300 rounded-r-md text-gray-700 hover:bg-gray-50">下一页</a>
                        </nav>
                    </div>
                </div>
            </section>
            
            <!-- 资料中心 -->
            <section id="materials" class="page hidden">
                <div class="mb-6">
                    <h2 class="text-2xl font-bold text-gray-800">资料中心</h2>
                    <p class="text-gray-600">浏览和下载MTI考研相关学习资料</p>
                </div>
                
                <!-- 资料分类标签 -->
                <div class="mb-6 border-b border-gray-200">
                    <ul class="flex flex-wrap -mb-px">
                        <li class="mr-2">
                            <a href="#" class="inline-block p-4 border-b-2 border-primary text-primary font-medium">全部资料</a>
                        </li>
                        <li class="mr-2">
                            <a href="#" class="inline-block p-4 border-b-2 border-transparent hover:text-gray-600 hover:border-gray-300">211 翻译硕士英语</a>
                        </li>
                        <li class="mr-2">
                            <a href="#" class="inline-block p-4 border-b-2 border-transparent hover:text-gray-600 hover:border-gray-300">357 英语翻译基础</a>
                        </li>
                        <li class="mr-2">
                            <a href="#" class="inline-block p-4 border-b-2 border-transparent hover:text-gray-600 hover:border-gray-300">448 汉语写作与百科知识</a>
                        </li>
                    </ul>
                </div>
                
                <!-- 资料搜索 -->
                <div class="bg-white rounded-lg shadow-card p-6 mb-6">
                    <div class="flex flex-col md:flex-row gap-4">
                        <div class="flex-1">
                            <input type="text" placeholder="搜索资料..." class="input-field">
                        </div>
                        <div>
                            <button class="btn-primary">
                                <i class="fa fa-search mr-2"></i>搜索
                            </button>
                        </div>
                    </div>
                </div>
                
                <!-- 资料列表 -->
                <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-6 mb-8">
                    <!-- 211科目资料 -->
                    <div class="bg-white rounded-lg shadow-card overflow-hidden card-hover">
                        <div class="bg-blue-100 p-4 flex justify-between items-center">
                            <span class="badge badge-primary">211科目</span>
                            <button class="text-gray-500 hover:text-gray-700">
                                <i class="fa fa-bookmark-o"></i>
                            </button>
                        </div>
                        <div class="p-4">
                            <h3 class="font-semibold text-gray-800 mb-2">MTI翻译硕士英语核心词汇</h3>
                            <p class="text-sm text-gray-600 mb-4">汇总MTI考研英语科目必备词汇，按主题分类整理，包含释义和例句。</p>
                            <div class="flex items-center justify-between text-xs text-gray-500 mb-4">
                                <span><i class="fa fa-file-pdf-o mr-1"></i>PDF文档</span>
                                <span><i class="fa fa-calendar mr-1"></i>2023-06-15</span>
                                <span><i class="fa fa-eye mr-1"></i>1.2k次浏览</span>
                            </div>
                            <div class="flex justify-between">
                                <button class="btn-outline text-sm">
                                    <i class="fa fa-eye mr-1"></i>在线阅读
                                </button>
                                <button class="btn-primary text-sm">
                                    <i class="fa fa-download mr-1"></i>下载
                                </button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="bg-white rounded-lg shadow-card overflow-hidden card-hover">
                        <div class="bg-blue-100 p-4 flex justify-between items-center">
                            <span class="badge badge-primary">211科目</span>
                            <button class="text-gray-500 hover:text-gray-700">
                                <i class="fa fa-bookmark-o"></i>
                            </button>
                        </div>
                        <div class="p-4">
                            <h3 class="font-semibold text-gray-800 mb-2">英语阅读理解高分技巧</h3>
                            <p class="text-sm text-gray-600 mb-4">详细讲解MTI考研英语阅读理解解题技巧，包含真题分析和模拟练习。</p>
                            <div class="flex items-center justify-between text-xs text-gray-500 mb-4">
                                <span><i class="fa fa-file-word-o mr-1"></i>Word文档</span>
                                <span><i class="fa fa-calendar mr-1"></i>2023-05-28</span>
                                <span><i class="fa fa-eye mr-1"></i>956次浏览</span>
                            </div>
                            <div class="flex justify-between">
                                <button class="btn-outline text-sm">
                                    <i class="fa fa-eye mr-1"></i>在线阅读
                                </button>
                                <button class="btn-primary text-sm">
                                    <i class="fa fa-download mr-1"></i>下载
                                </button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="bg-white rounded-lg shadow-card overflow-hidden card-hover">
                        <div class="bg-blue-100 p-4 flex justify-between items-center">
                            <span class="badge badge-primary">211科目</span>
                            <button class="text-gray-500 hover:text-gray-700">
                                <i class="fa fa-bookmark"></i>
                            </button>
                        </div>
                        <div class="p-4">
                            <h3 class="font-semibold text-gray-800 mb-2">英语写作模板与范文</h3>
                            <p class="text-sm text-gray-600 mb-4">提供MTI考研英语写作常用模板和高分范文，帮助考生快速提升写作水平。</p>
                            <div class="flex items-center justify-between text-xs text-gray-500 mb-4">
                                <span><i class="fa fa-file-pdf-o mr-1"></i>PDF文档</span>
                                <span><i class="fa fa-calendar mr-1"></i>2023-06-10</span>
                                <span><i class="fa fa-eye mr-1"></i>1.5k次浏览</span>
                            </div>
                            <div class="flex justify-between">
                                <button class="btn-outline text-sm">
                                    <i class="fa fa-eye mr-1"></i>在线阅读
                                </button>
                                <button class="btn-primary text-sm">
                                    <i class="fa fa-download mr-1"></i>下载
                                </button>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 357科目资料 -->
                    <div class="bg-white rounded-lg shadow-card overflow-hidden card-hover">
                        <div class="bg-green-100 p-4 flex justify-between items-center">
                            <span class="badge badge-secondary">357科目</span>
                            <button class="text-gray-500 hover:text-gray-700">
                                <i class="fa fa-bookmark-o"></i>
                            </button>
                        </div>
                        <div class="p-4">
                            <h3 class="font-semibold text-gray-800 mb-2">英汉翻译技巧与实践</h3>
                            <p class="text-sm text-gray-600 mb-4">系统介绍英汉翻译的基本理论和实用技巧，包含大量实例分析和练习。</p>
                            <div class="flex items-center justify-between text-xs text-gray-500 mb-4">
                                <span><i class="fa fa-file-pdf-o mr-1"></i>PDF文档</span>
                                <span><i class="fa fa-calendar mr-1"></i>2023-06-05</span>
                                <span><i class="fa fa-eye mr-1"></i>2.3k次浏览</span>
                            </div>
                            <div class="flex justify-between">
                                <button class="btn-outline text-sm">
                                    <i class="fa fa-eye mr-1"></i>在线阅读
                                </button>
                                <button class="btn-primary text-sm">
                                    <i class="fa fa-download mr-1"></i>下载
                                </button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="bg-white rounded-lg shadow-card overflow-hidden card-hover">
                        <div class="bg-green-100 p-4 flex justify-between items-center">
                            <span class="badge badge-secondary">357科目</span>
                            <button class="text-gray-500 hover:text-gray-700">
                                <i class="fa fa-bookmark-o"></i>
                            </button>
                        </div>
                        <div class="p-4">
                            <h3 class="font-semibold text-gray-800 mb-2">汉英翻译常用表达</h3>
                            <p class="text-sm text-gray-600 mb-4">汇总汉英翻译中常用的固定表达和句型，帮助考生提高翻译的地道性。</p>
                            <div class="flex items-center justify-between text-xs text-gray-500 mb-4">
                                <span><i class="fa fa-file-excel-o mr-1"></i>Excel文档</span>
                                <span><i class="fa fa-calendar mr-1"></i>2023-05-20</span>
                                <span><i class="fa fa-eye mr-1"></i>1.8k次浏览</span>
                            </div>
                            <div class="flex justify-between">
                                <button class="btn-outline text-sm">
                                    <i class="fa fa-eye mr-1"></i>在线阅读
                                </button>
                                <button class="btn-primary text-sm">
                                    <i class="fa fa-download mr-1"></i>下载
                                </button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="bg-white rounded-lg shadow-card overflow-hidden card-hover">
                        <div class="bg-green-100 p-4 flex justify-between items-center">
                            <span class="badge badge-secondary">357科目</span>
                            <button class="text-gray-500 hover:text-gray-700">
                                <i class="fa fa-bookmark"></i>
                            </button>
                        </div>
                        <div class="p-4">
                            <h3 class="font-semibold text-gray-800 mb-2">翻译硕士经典译文赏析</h3>
                            <p class="text-sm text-gray-600 mb-4">精选名家翻译作品和高分译文，进行详细分析，帮助考生理解翻译精髓。</p>
                            <div class="flex items-center justify-between text-xs text-gray-500 mb-4">
                                <span><i class="fa fa-file-pdf-o mr-1"></i>PDF文档</span>
                                <span><i class="fa fa-calendar mr-1"></i>2023-06-18</span>
                                <span><i class="fa fa-eye mr-1"></i>1.4k次浏览</span>
                            </div>
                            <div class="flex justify-between">
                                <button class="btn-outline text-sm">
                                    <i class="fa fa-eye mr-1"></i>在线阅读
                                </button>
                                <button class="btn-primary text-sm">
                                    <i class="fa fa-download mr-1"></i>下载
                                </button>
                            </div>
                        </div>
                    </div>
                    
                    <!-- 448科目资料 -->
                    <div class="bg-white rounded-lg shadow-card overflow-hidden card-hover">
                        <div class="bg-yellow-100 p-4 flex justify-between items-center">
                            <span class="badge badge-warning">448科目</span>
                            <button class="text-gray-500 hover:text-gray-700">
                                <i class="fa fa-bookmark-o"></i>
                            </button>
                        </div>
                        <div class="p-4">
                            <h3 class="font-semibold text-gray-800 mb-2">中国文学常识汇总</h3>
                            <p class="text-sm text-gray-600 mb-4">系统整理中国古代和现当代文学常识，包括作家作品、文学流派等知识点。</p>
                            <div class="flex items-center justify-between text-xs text-gray-500 mb-4">
                                <span><i class="fa fa-file-pdf-o mr-1"></i>PDF文档</span>
                                <span><i class="fa fa-calendar mr-1"></i>2023-06-08</span>
                                <span><i class="fa fa-eye mr-1"></i>2.1k次浏览</span>
                            </div>
                            <div class="flex justify-between">
                                <button class="btn-outline text-sm">
                                    <i class="fa fa-eye mr-1"></i>在线阅读
                                </button>
                                <button class="btn-primary text-sm">
                                    <i class="fa fa-download mr-1"></i>下载
                                </button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="bg-white rounded-lg shadow-card overflow-hidden card-hover">
                        <div class="bg-yellow-100 p-4 flex justify-between items-center">
                            <span class="badge badge-warning">448科目</span>
                            <button class="text-gray-500 hover:text-gray-700">
                                <i class="fa fa-bookmark"></i>
                            </button>
                        </div>
                        <div class="p-4">
                            <h3 class="font-semibold text-gray-800 mb-2">翻译理论简明教程</h3>
                            <p class="text-sm text-gray-600 mb-4">简明扼要介绍国内外主要翻译理论和流派，帮助考生掌握翻译理论基础知识。</p>
                            <div class="flex items-center justify-between text-xs text-gray-500 mb-4">
                                <span><i class="fa fa-file-pdf-o mr-1"></i>PDF文档</span>
                                <span><i class="fa fa-calendar mr-1"></i>2023-05-30</span>
                                <span><i class="fa fa-eye mr-1"></i>1.7k次浏览</span>
                            </div>
                            <div class="flex justify-between">
                                <button class="btn-outline text-sm">
                                    <i class="fa fa-eye mr-1"></i>在线阅读
                                </button>
                                <button class="btn-primary text-sm">
                                    <i class="fa fa-download mr-1"></i>下载
                                </button>
                            </div>
                        </div>
                    </div>
                    
                    <div class="bg-white rounded-lg shadow-card overflow-hidden card-hover">
                        <div class="bg-yellow-100 p-4 flex justify-between items-center">
                            <span class="badge badge-warning">448科目</span>
                            <button class="text-gray-500 hover:text-gray-700">
                                <i class="fa fa-bookmark-o"></i>
                            </button>
                        </div>
                        <div class="p-4">
                            <h3 class="font-semibold text-gray-800 mb-2">汉语写作高分范文</h3>
                            <p class="text-sm text-gray-600 mb-4">收集MTI考研汉语写作部分的高分范文，包含议论文、说明文等多种文体。</p>
                            <div class="flex items-center justify-between text-xs text-gray-500 mb-4">
                                <span><i class="fa fa-file-word-o mr-1"></i>Word文档</span>
                                <span><i class="fa fa-calendar mr-1"></i>2023-06-12</span>
                                <span><i class="fa fa-eye mr-1"></i>1.3k次浏览</span>
                            </div>
                            <div class="flex justify-between">
                                <button class="btn-outline text-sm">
                                    <i class="fa fa-eye mr-1"></i>在线阅读
                                </button>
                                <button class="btn-primary text-sm">
                                    <i class="fa fa-download mr-1"></i>下载
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                
                <!-- 分页 -->
                <div class="flex justify-center">
                    <nav class="inline-flex rounded-md shadow">
                        <a href="#" class="py-2 px-4 bg-white border border-gray-300 rounded-l-md text-gray-700 hover:bg-gray-50">上一页</a>
                        <a href="#" class="py-2 px-4 bg-primary text-white border border-primary">1</a>
                        <a href="#" class="py-2 px-4 bg-white border border-gray-300 text-gray-700 hover:bg-gray-50">2</a>
                        <a href="#" class="py-2 px-4 bg-white border border-gray-300 text-gray-700 hover:bg-gray-50">3</a>
                        <a href="#" class="py-2 px-4 bg-white border border-gray-300 rounded-r-md text-gray-700 hover:bg-gray-50">下一页</a>
                    </nav>
                </div>
            </section>
            
            <!-- 个人中心 -->
            <section id="profile" class="page hidden">
                <div class="mb-6">
                    <h2 class="text-2xl font-bold text-gray-800">个人中心</h2>
                    <p class="text-gray-600">管理你的学习记录和个人信息</p>
                </div>
                
                <!-- 个人信息卡片 -->
                <div class="bg-white rounded-lg shadow-card p-6 mb-6">
                    <div class="flex flex-col md:flex-row items-center md:items-start">
                        <div class="w-24 h-24 rounded-full bg-primary text-white flex items-center justify-center text-4xl font-bold">
                            M
                        </div>
                        <div class="mt-4 md:mt-0 md:ml-6">
                            <h3 class="text-xl font-semibold text-gray-800">MTI考研er</h3>
                            <p class="text-gray-600">2024年考研备考中</p>
                            <div class="mt-2 flex items-center text-sm text-gray-500">
                                <span class="mr-4"><i class="fa fa-calendar mr-1"></i>注册时间: 2023-05-01</span>
                                <span><i class="fa fa-clock-o mr-1"></i>学习天数: 76天</span>
                            </div>
                        </div>
                        <button class="mt-4 md:mt-0 md:ml-auto btn-outline">
                            <i class="fa fa-pencil mr-2"></i>编辑资料
                        </button>
                    </div>
                </div>
                
                <!-- 学习统计 -->
                <div class="bg-white rounded-lg shadow-card p-6 mb-6">
                    <h3 class="text-lg font-semibold text-gray-800 mb-4">学习统计</h3>
                    
                    <div class="grid grid-cols-1 md:grid-cols-4 gap-4 mb-6">
                        <div class="bg-blue-50 p-4 rounded-lg text-center">
                            <div class="text-3xl font-bold text-primary">120</div>
                            <div class="text-sm text-gray-600">总学习时长(小时)</div>
                        </div>
                        <div class="bg-green-50 p-4 rounded-lg text-center">
                            <div class="text-3xl font-bold text-secondary">580</div>
                            <div class="text-sm text-gray-600">完成题目数</div>
                        </div>
                        <div class="bg-yellow-50 p-4 rounded-lg text-center">
                            <div class="text-3xl font-bold text-warning">72%</div>
                            <div class="text-sm text-gray-600">平均正确率</div>
                        </div>
                        <div class="bg-red-50 p-4 rounded-lg text-center">
                            <div class="text-3xl font-bold text-danger">162</div>
                            <div class="text-sm text-gray-600">收藏资料数</div>
                        </div>
                    </div>
                    
                    <div class="h-64">
                        <canvas id="subjectProgressChart"></canvas>
                    </div>
                </div>
                
                <!-- 学习记录 -->
                <div class="bg-white rounded-lg shadow-card p-6 mb-6">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="text-lg font-semibold text-gray-800">学习记录</h3>
                        <a href="#" class="text-primary text-sm hover:underline">查看全部</a>
                    </div>
                    
                    <div class="overflow-x-auto">
                        <table class="min-w-full divide-y divide-gray-200">
                            <thead>
                                <tr>
                                    <th class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">日期</th>
                                    <th class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">学习内容</th>
                                    <th class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">学习时长</th>
                                    <th class="px-6 py-3 bg-gray-50 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">完成情况</th>
                                </tr>
                            </thead>
                            <tbody class="bg-white divide-y divide-gray-200">
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">2023-07-20</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <div class="text-sm font-medium text-gray-900">211英语词汇练习</div>
                                        <div class="text-xs text-gray-500">211科目</div>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">45分钟</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="badge badge-secondary">已完成</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">2023-07-19</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <div class="text-sm font-medium text-gray-900">英汉互译实战练习</div>
                                        <div class="text-xs text-gray-500">357科目</div>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">60分钟</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="badge badge-secondary">已完成</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">2023-07-18</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <div class="text-sm font-medium text-gray-900">百科知识测试</div>
                                        <div class="text-xs text-gray-500">448科目</div>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">30分钟</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="badge badge-secondary">已完成</span>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">2023-07-17</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <div class="text-sm font-medium text-gray-900">英语阅读理解专项</div>
                                        <div class="text-xs text-gray-500">211科目</div>
                                    </td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">50分钟</td>
                                    <td class="px-6 py-4 whitespace-nowrap">
                                        <span class="badge badge-secondary">已完成</span>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                
                <!-- 收藏夹 -->
                <div class="bg-white rounded-lg shadow-card p-6">
                    <div class="flex items-center justify-between mb-4">
                        <h3 class="text-lg font-semibold text-gray-800">我的收藏</h3>
                        <a href="#" class="text-primary text-sm hover:underline">查看全部</a>
                    </div>
                    
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div class="border border-gray-200 rounded-lg p-4 flex items-center card-hover">
                            <div class="bg-blue-100 p-3 rounded-lg text-primary">
                                <i class="fa fa-file-pdf-o text-xl"></i>
                            </div>
                            <div class="ml-4">
                                <h4 class="font-medium text-gray-800">英语写作模板与范文</h4>
                                <p class="text-xs text-gray-500">211科目 · 收藏于 2023-06-15</p>
                            </div>
                            <button class="ml-auto btn-outline text-sm">
                                <i class="fa fa-eye mr-1"></i>查看
                            </button>
                        </div>
                        
                        <div class="border border-gray-200 rounded-lg p-4 flex items-center card-hover">
                            <div class="bg-green-100 p-3 rounded-lg text-secondary">
                                <i class="fa fa-file-pdf-o text-xl"></i>
                            </div>
                            <div class="ml-4">
                                <h4 class="font-medium text-gray-800">翻译硕士经典译文赏析</h4>
                                <p class="text-xs text-gray-500">357科目 · 收藏于 2023-06-18</p>
                            </div>
                            <button class="ml-auto btn-outline text-sm">
                                <i class="fa fa-eye mr-1"></i>查看
                            </button>
                        </div>
                        
                        <div class="border border-gray-200 rounded-lg p-4 flex items-center card-hover">
                            <div class="bg-yellow-100 p-3 rounded-lg text-warning">
                                <i class="fa fa-file-pdf-o text-xl"></i>
                            </div>
                            <div class="ml-4">
                                <h4 class="font-medium text-gray-800">翻译理论简明教程</h4>
                                <p class="text-xs text-gray-500">448科目 · 收藏于 2023-05-30</p>
                            </div>
                            <button class="ml-auto btn-outline text-sm">
                                <i class="fa fa-eye mr-1"></i>查看
                            </button>
                        </div>
                        
                        <div class="border border-gray-200 rounded-lg p-4 flex items-center card-hover">
                            <div class="bg-blue-100 p-3 rounded-lg text-primary">
                                <i class="fa fa-file-word-o text-xl"></i>
                            </div>
                            <div class="ml-4">
                                <h4 class="font-medium text-gray-800">英语阅读理解高分技巧</h4>
                                <p class="text-xs text-gray-500">211科目 · 收藏于 2023-05-28</p>
                            </div>
                            <button class="ml-auto btn-outline text-sm">
                                <i class="fa fa-eye mr-1"></i>查看
                            </button>
                        </div>
                    </div>
                </div>
            </section>
        </main>
    </div>
    
    <!-- 题库上传模态框 -->
    <div id="upload-question-modal" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 hidden">
        <div class="bg-white rounded-lg shadow-lg w-full max-w-md">
            <div class="p-4 border-b border-gray-200 flex justify-between items-center">
                <h3 class="text-lg font-semibold text-gray-800">上传题库</h3>
                <button id="close-upload-modal" class="text-gray-500 hover:text-gray-700">
                    <i class="fa fa-times"></i>
                </button>
            </div>
            <div class="p-6">
                <div class="mb-4">
                    <label class="block text-sm font-medium text-gray-700 mb-1">题库名称</label>
                    <input type="text" class="input-field" placeholder="请输入题库名称">
                </div>
                <div class="mb-4">
                    <label class="block text-sm font-medium text-gray-700 mb-1">所属科目</label>
                    <select class="input-field">
                        <option value="">请选择科目</option>
                        <option value="211">211 翻译硕士英语</option>
                        <option value="357">357 英语翻译基础</option>
                        <option value="448">448 汉语写作与百科知识</option>
                    </select>
                </div>
                <div class="mb-4">
                    <label class="block text-sm font-medium text-gray-700 mb-1">难度级别</label>
                    <select class="input-field">
                        <option value="">请选择难度</option>
                        <option value="easy">简单</option>
                        <option value="medium">中等</option>
                        <option value="hard">困难</option>
                    </select>
                </div>
                <div class="mb-4">
                    <label class="block text-sm font-medium text-gray-700 mb-1">题库文件</label>
                    <div class="mt-1 flex justify-center px-6 pt-5 pb-6 border-2 border-gray-300 border-dashed rounded-md">
                        <div class="space-y-1 text-center">
                            <i class="fa fa-cloud-upload text-gray-400 text-3xl"></i>
                            <div class="flex text-sm text-gray-600">
                                <label for="file-upload" class="relative cursor-pointer bg-white rounded-md font-medium text-primary hover:text-blue-500 focus-within:outline-none">
                                    <span>上传文件</span>
                                    <input id="file-upload" name="file-upload" type="file" class="sr-only">
                                </label>
                                <p class="pl-1">或拖拽文件到此处</p>
                            </div>
                            <p class="text-xs text-gray-500">支持 .xlsx, .csv, .json 格式</p>
                        </div>
                    </div>
                </div>
                <div class="mb-4">
                    <label class="block text-sm font-medium text-gray-700 mb-1">题库描述</label>
                    <textarea class="input-field" rows="3" placeholder="请输入题库描述"></textarea>
                </div>
                <div class="flex justify-end">
                    <button class="btn-outline mr-2">取消</button>
                    <button class="btn-primary">上传</button>
                </div>
            </div>
        </div>
    </div>
    
    <!-- 答题模态框 -->
    <div id="answer-modal" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 hidden">
        <div class="bg-white rounded-lg shadow-lg w-full max-w-4xl">
            <div class="p-4 border-b border-gray-200 flex justify-between items-center">
                <h3 class="text-lg font-semibold text-gray-800">答题</h3>
                <button id="close-answer-modal" class="text-gray-500 hover:text-gray-700">
                    <i class="fa fa-times"></i>
                </button>
            </div>
            <div class="p-6">
                <div class="mb-6">
                    <div class="flex items-center justify-between mb-2">
                        <span class="badge badge-primary">211科目</span>
                        <span class="text-sm text-gray-500">题目 1/20</span>
                    </div>
                    <h4 class="text-lg font-medium text-gray-800 mb-4">Which of the following is NOT a synonym of "abundant"?</h4>
                    <div class="space-y-2">
                        <div class="flex items-center p-3 border border-gray-200 rounded-lg hover:bg-gray-50 cursor-pointer">
                            <input type="radio" id="option-a" name="answer" class="mr-3">
                            <label for="option-a" class="cursor-pointer">A. Plentiful</label>
                        </div>
                        <div class="flex items-center p-3 border border-gray-200 rounded-lg hover:bg-gray-50 cursor-pointer">
                            <input type="radio" id="option-b" name="answer" class="mr-3">
                            <label for="option-b" class="cursor-pointer">B. Scarce</label>
                        </div>
                        <div class="flex items-center p-3 border border-gray-200 rounded-lg hover:bg-gray-50 cursor-pointer">
                            <input type="radio" id="option-c" name="answer" class="mr-3">
                            <label for="option-c" class="cursor-pointer">C. Ample</label>
                        </div>
                        <div class="flex items-center p-3 border border-gray-200 rounded-lg hover:bg-gray-50 cursor-pointer">
                            <input type="radio" id="option-d" name="answer" class="mr-3">
                            <label for="option-d" class="cursor-pointer">D. Copious</label>
                        </div>
                    </div>
                </div>
                
                <div class="flex justify-between">
                    <button class="btn-outline" disabled>上一题</button>
                    <button class="btn-primary">下一题</button>
                </div>
            </div>
        </div>
    </div>
    
    <!-- 资料阅读模态框 -->
    <div id="read-material-modal" class="fixed inset-0 bg-black bg-opacity-50 flex items-center justify-center z-50 hidden">
        <div class="bg-white rounded-lg shadow-lg w-full max-w-4xl max-h-[90vh] flex flex-col">
            <div class="p-4 border-b border-gray-200 flex justify-between items-center">
                <h3 class="text-lg font-semibold text-gray-800">MTI翻译硕士英语核心词汇</h3>
                <button id="close-read-modal" class="text-gray-500 hover:text-gray-700">
                    <i class="fa fa-times"></i>
                </button>
            </div>
            <div class="p-6 overflow-y-auto flex-1">
                <div class="prose max-w-none">
                    <h1>MTI翻译硕士英语核心词汇</h1>
                    <h2>第一部分：基础词汇</h2>
                    <p>本部分收录MTI考研英语科目中最基础、最常用的核心词汇，是考生必须掌握的词汇基础。</p>
                    <h3>1.1 名词 (Nouns)</h3>
                    <ul>
                        <li><strong>abandon</strong> n. 放弃；抛弃</li>
                        <li><strong>ability</strong> n. 能力；才能</li>
                        <li><strong>abroad</strong> n. 国外；海外</li>
                        <li><strong>absence</strong> n. 缺席；缺乏</li>
                        <li><strong>academy</strong> n. 学院；研究院</li>
                        <li><strong>accelerator</strong> n. 加速器；油门</li>
                        <li><strong>accent</strong> n. 口音；重音</li>
                        <li><strong>acceptance</strong> n. 接受；认可</li>
                        <li><strong>access</strong> n. 通道；入口；接近</li>
                        <li><strong>accommodation</strong> n. 住宿；调节</li>
                    </ul>
                    <h3>1.2 动词 (Verbs)</h3>
                    <ul>
                        <li><strong>abandon</strong> v. 放弃；抛弃</li>
                        <li><strong>abide</strong> v. 遵守；忍受</li>
                        <li><strong>abound</strong> v. 大量存在；充满</li>
                        <li><strong>abridge</strong> v. 缩短；删节</li>
                        <li><strong>absorb</strong> v. 吸收；吸引</li>
                        <li><strong>abstract</strong> v. 提取；抽象化</li>
                        <li><strong>abuse</strong> v. 滥用；虐待</li>
                        <li><strong>accelerate</strong> v. 加速；促进</li>
                        <li><strong>accentuate</strong> v. 强调；重读</li>
                        <li><strong>accept</strong> v. 接受；同意</li>
                    </ul>
                    <h2>第二部分：专业词汇</h2>
                    <p>本部分收录与翻译、语言学、文学等相关的专业词汇，是MTI考研的重点词汇。</p>
                    <h3>2.1 翻译相关词汇</h3>
                    <ul>
                        <li><strong>equivalence</strong> n. 对等；等值</li>
                        <li><strong>literal translation</strong> n. 直译</li>
                        <li><strong>free translation</strong> n. 意译</li>
                        <li><strong>domestication</strong> n. 归化</li>
                        <li><strong>foreignization</strong> n. 异化</li>
                        <li><strong>transference</strong> n. 转移；转换</li>
                        <li><strong>calque</strong> n. 仿译；直译</li>
                        <li><strong>loanword</strong> n. 外来词</li>
                        <li><strong>neologism</strong> n. 新词；新义</li>
                        <li><strong>semantic field</strong> n. 语义场</li>
                    </ul>
                </div>
            </div>
            <div class="p-4 border-t border-gray-200 flex justify-between">
                <button class="btn-outline">
                    <i class="fa fa-download mr-2"></i>下载资料
                </button>
                <button class="btn-primary">
                    <i class="fa fa-bookmark-o mr-2"></i>收藏
                </button>
            </div>
        </div>
    </div>
    
    <script>
        // 页面切换功能
        document.addEventListener('DOMContentLoaded', function() {
            const navLinks = document.querySelectorAll('.nav-link');
            const pages = document.querySelectorAll('.page');
            
            navLinks.forEach(link => {
                link.addEventListener('click', function(e) {
                    e.preventDefault();
                    
                    // 更新导航链接状态
                    navLinks.forEach(l => l.classList.remove('active'));
                    this.classList.add('active');
                    
                    // 显示对应页面
                    const targetPage = this.getAttribute('data-page');
                    pages.forEach(page => {
                        page.classList.add('hidden');
                        if (page.id === targetPage) {
                            page.classList.remove('hidden');
                        }
                    });
                });
            });
            
            // 登录功能
            const loginForm = document.getElementById('login-form');
            const roleButtons = document.querySelectorAll('[data-role]');
            let currentRole = 'user';
            
            // 角色选择
            roleButtons.forEach(button => {
                button.addEventListener('click', function() {
                    roleButtons.forEach(btn => {
                        btn.classList.remove('active');
                        btn.classList.remove('text-primary', 'border-primary');
                        btn.classList.add('text-gray-500');
                    });
                    this.classList.add('active', 'text-primary', 'border-primary');
                    this.classList.remove('text-gray-500');
                    currentRole = this.getAttribute('data-role');
                });
            });
            
            // 登录表单提交
            loginForm.addEventListener('submit', function(e) {
                e.preventDefault();
                
                const username = document.getElementById('username').value;
                const password = document.getElementById('password').value;
                
                // 简单的登录验证（实际应用中应该使用后端API）
                if (currentRole === 'developer') {
                    // 开发者默认账号密码
                    if (username === 'admin' && password === 'admin123') {
                        loginSuccess(currentRole);
                    } else {
                        alert('开发者账号或密码错误！');
                    }
                } else {
                    // 用户登录验证（模拟）
                    const users = JSON.parse(localStorage.getItem('users') || '[]');
                    const user = users.find(u => u.username === username && u.password === password);
                    
                    if (user) {
                        loginSuccess(currentRole);
                    } else {
                        alert('用户账号或密码错误！');
                    }
                }
            });
            
            // 登录成功处理
            function loginSuccess(role) {
                // 隐藏登录页面
                document.getElementById('login-page').classList.add('hidden');
                
                // 显示应用内容
                document.getElementById('app-container').classList.remove('hidden');
                
                // 根据角色显示不同的导航
                if (role === 'developer') {
                    document.getElementById('developer-nav').classList.remove('hidden');
                } else {
                    document.getElementById('developer-nav').classList.add('hidden');
                }
            }
            
            // 开发者功能 - 用户管理
            // 模拟用户数据
            let users = JSON.parse(localStorage.getItem('users') || JSON.stringify([
                { id: 1, username: 'student1', password: '123456', role: 'user' },
                { id: 2, username: 'student2', password: '654321', role: 'user' }
            ]));
            
            // 显示用户列表
            function displayUsers() {
                const userList = document.getElementById('user-list');
                userList.innerHTML = '';
                
                users.forEach(user => {
                    const userRow = document.createElement('tr');
                    userRow.innerHTML = `
                        <td>${user.id}</td>
                        <td>${user.username}</td>
                        <td>${user.password}</td>
                        <td>
                            <button class="btn-primary text-sm px-3 py-1 mr-2 edit-user-btn" data-id="${user.id}">编辑</button>
                            <button class="btn-danger text-sm px-3 py-1 delete-user-btn" data-id="${user.id}">删除</button>
                        </td>
                    `;
                    userList.appendChild(userRow);
                });
                
                // 添加编辑和删除事件监听器
                addUserActionListeners();
            }
            
            // 添加用户操作监听器
            function addUserActionListeners() {
                // 编辑用户
                document.querySelectorAll('.edit-user-btn').forEach(btn => {
                    btn.addEventListener('click', function() {
                        const userId = parseInt(this.getAttribute('data-id'));
                        const user = users.find(u => u.id === userId);
                        
                        document.getElementById('edit-user-id').value = user.id;
                        document.getElementById('edit-username').value = user.username;
                        document.getElementById('edit-password').value = user.password;
                        
                        // 显示编辑模态框
                        document.getElementById('edit-user-modal').classList.remove('hidden');
                    });
                });
                
                // 删除用户
                document.querySelectorAll('.delete-user-btn').forEach(btn => {
                    btn.addEventListener('click', function() {
                        const userId = parseInt(this.getAttribute('data-id'));
                        if (confirm('确定要删除这个用户吗？')) {
                            users = users.filter(u => u.id !== userId);
                            localStorage.setItem('users', JSON.stringify(users));
                            displayUsers();
                        }
                    });
                });
            }
            
            // 添加用户表单提交
            document.getElementById('add-user-form').addEventListener('submit', function(e) {
                e.preventDefault();
                
                const username = document.getElementById('new-username').value;
                const password = document.getElementById('new-password').value;
                
                // 检查用户名是否已存在
                if (users.some(u => u.username === username)) {
                    alert('用户名已存在！');
                    return;
                }
                
                // 创建新用户
                const newUser = {
                    id: users.length > 0 ? Math.max(...users.map(u => u.id)) + 1 : 1,
                    username: username,
                    password: password,
                    role: 'user'
                };
                
                users.push(newUser);
                localStorage.setItem('users', JSON.stringify(users));
                
                // 清空表单
                this.reset();
                
                // 更新用户列表
                displayUsers();
                
                alert('用户添加成功！');
            });
            
            // 编辑用户表单提交
            document.getElementById('edit-user-form').addEventListener('submit', function(e) {
                e.preventDefault();
                
                const userId = parseInt(document.getElementById('edit-user-id').value);
                const username = document.getElementById('edit-username').value;
                const password = document.getElementById('edit-password').value;
                
                // 检查用户名是否已存在（排除当前用户）
                if (users.some(u => u.username === username && u.id !== userId)) {
                    alert('用户名已存在！');
                    return;
                }
                
                // 更新用户
                const userIndex = users.findIndex(u => u.id === userId);
                users[userIndex].username = username;
                users[userIndex].password = password;
                
                localStorage.setItem('users', JSON.stringify(users));
                
                // 关闭模态框
                document.getElementById('edit-user-modal').classList.add('hidden');
                
                // 更新用户列表
                displayUsers();
                
                alert('用户编辑成功！');
            });
            
            // 关闭编辑模态框
            document.getElementById('close-edit-modal').addEventListener('click', function() {
                document.getElementById('edit-user-modal').classList.add('hidden');
            });
            
            // 开发者功能 - 题库上传
            document.getElementById('upload-question-form').addEventListener('submit', function(e) {
                e.preventDefault();
                
                // 获取表单数据
                const questionBankName = document.getElementById('question-bank-name').value;
                const subject = document.getElementById('subject').value;
                const difficulty = document.getElementById('difficulty').value;
                const questionType = document.getElementById('question-type').value;
                const file = document.getElementById('question-file').files[0];
                
                // 简单验证
                if (!questionBankName || !subject || !difficulty || !questionType || !file) {
                    alert('请填写所有字段并选择文件！');
                    return;
                }
                
                // 模拟文件上传（实际应用中应该使用后端API）
                alert('题库上传成功！\n题库名称：' + questionBankName + '\n科目：' + subject + '\n难度：' + difficulty + '\n题型：' + questionType + '\n文件名：' + file.name);
                
                // 清空表单
                this.reset();
            });
            
            // 初始化
            displayUsers();
            
            // 题库上传模态框
            const uploadQuestionBtn = document.getElementById('upload-question-btn');
            const uploadQuestionModal = document.getElementById('upload-question-modal');
            const closeUploadModal = document.getElementById('close-upload-modal');
            
            uploadQuestionBtn.addEventListener('click', function() {
                uploadQuestionModal.classList.remove('hidden');
            });
            
            closeUploadModal.addEventListener('click', function() {
                uploadQuestionModal.classList.add('hidden');
            });
            
            // 答题模态框
            const startPracticeBtns = document.querySelectorAll('.text-primary.hover\\:text-blue-800');
            const answerModal = document.getElementById('answer-modal');
            const closeAnswerModal = document.getElementById('close-answer-modal');
            
            startPracticeBtns.forEach(btn => {
                btn.addEventListener('click', function() {
                    answerModal.classList.remove('hidden');
                });
            });
            
            closeAnswerModal.addEventListener('click', function() {
                answerModal.classList.add('hidden');
            });
            
            // 资料阅读模态框
            const readMaterialBtns = document.querySelectorAll('.btn-outline.text-sm');
            const readMaterialModal = document.getElementById('read-material-modal');
            const closeReadModal = document.getElementById('close-read-modal');
            
            readMaterialBtns.forEach(btn => {
                if (btn.innerHTML.includes('查看')) {
                    btn.addEventListener('click', function() {
                        readMaterialModal.classList.remove('hidden');
                    });
                }
            });
            
            closeReadModal.addEventListener('click', function() {
                readMaterialModal.classList.add('hidden');
            });
            
            // 点击模态框外部关闭模态框
            window.addEventListener('click', function(e) {
                if (e.target === uploadQuestionModal) {
                    uploadQuestionModal.classList.add('hidden');
                }
                if (e.target === answerModal) {
                    answerModal.classList.add('hidden');
                }
                if (e.target === readMaterialModal) {
                    readMaterialModal.classList.add('hidden');
                }
            });
            
            // 学习时长统计图表
            const studyTimeCtx = document.getElementById('studyTimeChart').getContext('2d');
            const studyTimeChart = new Chart(studyTimeCtx, {
                type: 'bar',
                data: {
                    labels: ['周一', '周二', '周三', '周四', '周五', '周六', '周日'],
                    datasets: [{
                        label: '学习时长（分钟）',
                        data: [45, 60, 30, 90, 45, 120, 75],
                        backgroundColor: '#3B82F6',
                        borderRadius: 4
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });
            
            // 答题正确率图表
            const accuracyCtx = document.getElementById('accuracyChart').getContext('2d');
            const accuracyChart = new Chart(accuracyCtx, {
                type: 'line',
                data: {
                    labels: ['第1周', '第2周', '第3周', '第4周', '第5周', '第6周', '第7周'],
                    datasets: [{
                        label: '正确率',
                        data: [60, 65, 62, 70, 75, 72, 78],
                        borderColor: '#10B981',
                        backgroundColor: 'rgba(16, 185, 129, 0.1)',
                        fill: true,
                        tension: 0.4
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            display: false
                        }
                    },
                    scales: {
                        y: {
                            beginAtZero: true,
                            max: 100,
                            ticks: {
                                callback: function(value) {
                                    return value + '%';
                                }
                            }
                        }
                    }
                }
            });
            
            // 科目进度图表
            const subjectProgressCtx = document.getElementById('subjectProgressChart').getContext('2d');
            const subjectProgressChart = new Chart(subjectProgressCtx, {
                type: 'doughnut',
                data: {
                    labels: ['211 翻译硕士英语', '357 英语翻译基础', '448 汉语写作与百科知识'],
                    datasets: [{
                        data: [35, 20, 15],
                        backgroundColor: ['#3B82F6', '#10B981', '#F59E0B'],
                        borderWidth: 0
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    plugins: {
                        legend: {
                            position: 'bottom'
                        },
                        tooltip: {
                            callbacks: {
                                label: function(context) {
                                    return context.label + ': ' + context.raw + '%';
                                }
                            }
                        }
                    }
                }
            });
        });
    </script>
    
    <!-- 编辑用户模态框 -->
    <div id="edit-user-modal" class="fixed inset-0 bg-gray-500 bg-opacity-75 flex items-center justify-center z-50 hidden">
        <div class="bg-white rounded-lg shadow-xl p-6 w-full max-w-md">
            <div class="flex justify-between items-center mb-4">
                <h3 class="text-lg font-semibold text-gray-800">编辑用户</h3>
                <button id="close-edit-modal" class="text-gray-500 hover:text-gray-700 focus:outline-none">
                    <i class="fas fa-times"></i>
                </button>
            </div>
            <form id="edit-user-form">
                <input type="hidden" id="edit-user-id">
                <div class="mb-4">
                    <label class="block text-sm font-medium text-gray-700 mb-1">用户名</label>
                    <input type="text" id="edit-username" class="input-field" required>
                </div>
                <div class="mb-4">
                    <label class="block text-sm font-medium text-gray-700 mb-1">密码</label>
                    <input type="password" id="edit-password" class="input-field" required>
                </div>
                <div class="flex justify-end">
                    <button type="submit" class="btn-primary px-4 py-2 mr-2">保存</button>
                    <button type="button" id="close-edit-modal" class="btn-outline px-4 py-2">取消</button>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
