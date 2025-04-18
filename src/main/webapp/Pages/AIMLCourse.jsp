<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="Navbar.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>AI/ML Course</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
    
    <style type="text/css">
    	
    	body{
    		margin-top: 70px;
    	}
    	
            h2 {
            color: #1e3a8a;
            margin-top: 16px;
            font-size: 30px;
            font-weight:bold;
            text-decoration: none;
        }
        .no-underline {
		    text-decoration: none !important;
		}
		
		.no-underline:hover {
		    text-decoration: none !important;
		}
    	
    	.resource-link:hover {
    background-color: var(--primary-light);
    /* Remove this line: text-decoration: underline; */
}
    	
    </style>
</head>

<body class="min-h-screen bg-gray-50 flex flex-col">

<main class="flex-grow container mx-auto px-4 sm:px-6 lg:px-8 py-8">
    <!-- Header -->
    <div class="bg-gradient-to-r from-red-800 to-orange-600 text-white rounded-xl shadow-xl overflow-hidden">
        <div class="px-8 py-12 text-center">
            <span class="inline-block bg-white/20 backdrop-blur-sm text-sm font-semibold px-4 py-1 rounded-full mb-4">
                Artificial Intelligence
            </span>
            <h1 class="text-4xl font-bold mb-2">Master AI & Machine Learning</h1>
            <p class="text-xl opacity-90 max-w-3xl mx-auto">
                From fundamentals to advanced models - build intelligent systems with Python
            </p>
        </div>
    </div>

    <!-- Grid -->
    <div class="mt-8 grid grid-cols-1 lg:grid-cols-3 gap-8">
        <!-- Main Content -->
        <div class="lg:col-span-2 space-y-8">
            <!-- About Section -->
            <section class="bg-white p-6 rounded-xl shadow-sm">
                <h2 class="text-2xl font-bold text-gray-800 mb-4">About this course</h2>
                <div class="text-gray-700 space-y-4">
                    <p>
                        Artificial Intelligence and Machine Learning are transforming industries worldwide. 
                        This comprehensive course takes you from the mathematical foundations to cutting-edge 
                        techniques in deep learning and neural networks.
                    </p>
                    <p>
                        You’ll gain hands-on experience building models for computer vision, natural language 
                        processing, and predictive analytics using industry-standard tools and frameworks.
                    </p>
                </div>
            </section>

            <!-- Technologies -->
            <section class="bg-white p-6 rounded-xl shadow-sm">
                <h2 class="text-2xl font-bold text-gray-800 mb-6">Technologies & Frameworks</h2>
                <div class="grid grid-cols-2 md:grid-cols-3 gap-4 text-center text-sm">
                    <div class="border rounded-lg p-4">
                        <div class="bg-blue-50 p-3 rounded-full mb-3">🐍</div>
                        <h3 class="font-semibold">Python</h3>
                        <p class="text-gray-600 mt-1">Programming</p>
                    </div>
                    <div class="border rounded-lg p-4">
                        <div class="bg-orange-100 p-3 rounded-full mb-3">🔶</div>
                        <h3 class="font-semibold">TensorFlow</h3>
                        <p class="text-gray-600 mt-1">Deep Learning</p>
                    </div>
                    <div class="border rounded-lg p-4">
                        <div class="bg-red-50 p-3 rounded-full mb-3">🔥</div>
                        <h3 class="font-semibold">PyTorch</h3>
                        <p class="text-gray-600 mt-1">Neural Networks</p>
                    </div>
                    <div class="border rounded-lg p-4">
                        <div class="bg-yellow-50 p-3 rounded-full mb-3">📊</div>
                        <h3 class="font-semibold">Scikit-learn</h3>
                        <p class="text-gray-600 mt-1">ML Algorithms</p>
                    </div>
                    <div class="border rounded-lg p-4">
                        <div class="bg-green-50 p-3 rounded-full mb-3">🧠</div>
                        <h3 class="font-semibold">NLP</h3>
                        <p class="text-gray-600 mt-1">Language Models</p>
                    </div>
                    <div class="border rounded-lg p-4">
                        <div class="bg-purple-50 p-3 rounded-full mb-3">🤖</div>
                        <h3 class="font-semibold">OpenCV</h3>
                        <p class="text-gray-600 mt-1">Vision</p>
                    </div>
                </div>
            </section>

            <!-- Curriculum -->
            <section class="bg-white p-6 rounded-xl shadow-sm">
                <h2 class="text-2xl font-bold text-gray-800 mb-6">Course Curriculum</h2>
                <div class="space-y-6 text-gray-700">
                    <div class="border-l-4 border-red-500 pl-4">
                        <h3 class="text-lg font-semibold">Module 1: AI/ML Foundations</h3>
                        <ul class="list-disc list-inside">
                            <li>Mathematics for ML (Linear Algebra, Calculus)</li>
                            <li>Python for Data Science (NumPy, Pandas)</li>
                            <li>Data Preprocessing & Visualization</li>
                        </ul>
                    </div>
                    <div class="border-l-4 border-orange-500 pl-4">
                        <h3 class="text-lg font-semibold">Module 2: Machine Learning</h3>
                        <ul class="list-disc list-inside">
                            <li>Supervised Learning (Regression, Classification)</li>
                            <li>Unsupervised Learning (Clustering, Dimensionality Reduction)</li>
                            <li>Model Evaluation & Hyperparameter Tuning</li>
                        </ul>
                    </div>
                    <div class="border-l-4 border-yellow-500 pl-4">
                        <h3 class="text-lg font-semibold">Module 3: Deep Learning</h3>
                        <ul class="list-disc list-inside">
                            <li>Neural Networks Fundamentals</li>
                            <li>CNNs for Computer Vision</li>
                            <li>RNNs & Transformers for NLP</li>
                        </ul>
                    </div>
                </div>
            </section>

            <!-- Code Example -->
            <section class="bg-white p-6 rounded-xl shadow-sm">
                <div class="flex justify-between items-center mb-4">
                    <h2 class="text-2xl font-bold text-gray-800">Neural Network Example</h2>
                    <button class="text-sm bg-red-600 hover:bg-red-700 text-white px-4 py-2 rounded-md transition-colors">
                        Run in Colab
                    </button>
                </div>
                <div class="bg-gray-800 rounded-lg overflow-hidden">
                    <div class="px-4 py-2 bg-gray-700 text-sm text-gray-300">neural_network.py</div>
                    <pre class="p-4 text-sm text-white overflow-x-auto">
<code>import tensorflow as tf
from tensorflow.keras import layers

model = tf.keras.Sequential([
    layers.Dense(64, activation='relu', input_shape=(784,)),
    layers.Dense(64, activation='relu'),
    layers.Dense(10, activation='softmax')
])

model.compile(optimizer='adam',
              loss='sparse_categorical_crossentropy',
              metrics=['accuracy'])

model.fit(train_images, train_labels, epochs=5)
test_loss, test_acc = model.evaluate(test_images, test_labels)
print(f'Test accuracy: {test_acc}')
</code>
                    </pre>
                </div>
            </section>
        </div>

        <!-- Sidebar -->
        <div class="space-y-6">
            <!-- Course Details -->
            <div class="bg-white p-6 rounded-xl shadow-sm">
                <h3 class="text-xl font-bold text-gray-800 mb-4">Course Details</h3>
                <div class="space-y-4">
                    <p><strong>Duration:</strong> 12 weeks</p>
                    <p><strong>Level:</strong> Intermediate</p>
                    <p><strong>Prerequisites:</strong> Python basics, Linear Algebra</p>
                    <div>
                        <strong>Projects:</strong>
                        <ul class="list-disc list-inside">
                            <li>Image Classifier</li>
                            <li>Sentiment Analysis</li>
                            <li>Recommendation System</li>
                        </ul>
                    </div>
                </div>
                <button class="w-full mt-6 bg-red-600 hover:bg-red-700 text-white py-3 px-4 rounded-lg">
                    Enroll Now
                </button>
            </div>

            <!-- Instructor -->
            <div class="bg-white p-6 rounded-xl shadow-sm">
                <h3 class="text-xl font-bold text-gray-800 mb-4">Instructor</h3>
                <div class="flex items-center">
                    <img src="https://randomuser.me/api/portraits/men/32.jpg" alt="Instructor" class="w-16 h-16 rounded-full object-cover mr-4" />
                    <div>
                        <h4 class="font-semibold">Dr. Raj Patel</h4>
                        <p class="text-sm text-gray-600">AI Research Scientist</p>
                        <p class="text-yellow-500 mt-1">⭐⭐⭐⭐⭐</p>
                    </div>
                </div>
                <p class="mt-4 text-sm text-gray-700">
                    Former Google AI researcher with PhD in Machine Learning. Published over 30 papers in top AI conferences.
                </p>
            </div>
            <div class="bg-white p-4 mb-4 rounded shadow-card">
                <h2>Resources</h2>
			<ul class="resource-list">
			    <li><a href="Images/AIMLdetail.pdf" target="_blank" class="no-underline">📄 Download Course PDF</a></li>
			    <li><a href="#" class="no-underline">🔗 Share this Course</a></li>
			    <li><a href="#" class="no-underline">📘 Course Syllabus</a></li>
			</ul>
            </div>
        </div>
    </div>
</main>

<%@ include file="Footer.jsp" %>
</body>
</html>
