<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Course Details
    </title>
    <link rel="stylesheet" href="styles.css">
</head>
<style>
body {
    font-family: Arial, sans-serif;
    background-color: #f5f5f5;
    margin: 0;
    padding-top: 100px;
}

.container {
    width: 80%;
    margin: auto;
    background: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 0px 10px rgba(0,0,0,0.1);
}

header {
    text-align: center;
    background: #002147;
    color: white;
    padding: 20px;
    border-radius: 10px 10px 0 0;
}

.apply-btn, .wishlist-btn {
    background: #002147;
    color: white;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
    margin-top: 10px;
}

.info, .details {
    margin-top: 20px;
    padding: 10px;
}
.info p{
 font-size: 25px;
 margin-top:15px;
}
.info h3{
margin-top:-20px;
text-align:center;
font-weight:bold;
font-size: 30px;
}

.details {
    background: #e3e3e3;
    padding: 15px;
    border-radius: 10px;
    font-size:20px;
}
.details ul{
	margin-left:20px;
	line-height: 1.5; /* Adjust as needed */
	}

.details h3{
	text-align:center;
	font-size:35px;
}

.code-container {
    background: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1);
    max-width: 50%;
    margin: 20px auto;
}

h1 {
    font-size: 24px;
    color: white;
    text-align:center;
	font-size:35px;
}

h3 {
    font-size: 18px;
    font-weight: bold;
    text-align: left;
}

.code-box {
    background: #f0f0f0;
    padding: 15px;
    border-radius: 5px;
    text-align: left;
    overflow-x: auto;
}

pre {
    white-space: pre-wrap;
    font-family: "Courier New", monospace;
    font-size: 14px;
    color: #d63384; /* Code color */
}

code {
    color: #black;
}

.try-btn {
    background: #008000;
    color: white;
    border: none;
    padding: 10px 20px;
    font-size: 16px;
    font-weight: bold;
    border-radius: 5px;
    cursor: pointer;
    margin-top: 10px;
}

.try-btn:hover {
    background: #006400;
}
#simple{
margin-top:15px;
color: black;
}

h2 {
    font-size: 24px;
    color: #222;
}

.example-list {
    background: white;
    padding: 15px;
    border-radius: 5px;
    box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.1);
    list-style-type: none;
    max-width: 80%;
    margin-left: 165px;
    margin-top:20px;
    line-height:1.5;
}

.example-list li {
    font-size: 16px;
    margin-bottom: 5px;

    
}

codebox {
    background: #f8f8f8;
    padding: 2px 5px;
    border-radius: 3px;
    font-family: "Courier New", monospace;
    color: #d63384;
}

pre {
    background: #f0f0f0;
    padding: 10px;
    border-radius: 5px;
    white-space: pre-wrap;
    font-family: "Courier New", monospace;
}

.html-table {
    width: 100%;
    border-collapse: collapse;
    margin-top: -20px;
    background: white;
}

.html-table th, .html-table td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: left;
}

.html-table th {
    background: #f0f0f0;
    font-weight: bold;
}

code {
    background: #f8f8f8;
    padding: 2px 5px;
    border-radius: 3px;
    font-family: "Courier New", monospace;
    color: #d63384;
}

pre {
    background: #f0f0f0;
    padding: 10px;
    border-radius: 5px;
    font-family: "Courier New", monospace;
}
h2{
margin-top:20px;
margin-left:165px;
font-weight:bold;
font-size:30px;
}
.element{
margin-top:10px;
margin-left:165px;

font-size:20px;
}
#tag{
margin-left:300px;
font-size:20px;
line-height:1.5;
color:black;
}/* Center the button */
.button-container {
    display: flex;
    justify-content: center; /* Horizontally center */
    margin-top: 20px;
}

/* Styling the Learn More Button */
.learn-more-btn {
    display: inline-block;
    padding: 12px 24px;
    background-color: #007BFF;
    color: white;
    text-decoration: none;
    font-size: 18px;
    font-weight: bold;
    border-radius: 8px;
    transition: 0.3s ease-in-out;
    border: none;
    cursor: pointer;
}

/* Hover Effect */
.learn-more-btn:hover {
    background-color: #0056b3;
    transform: scale(1.05);
}


</style>
<body>

<jsp:include page="Navbar.jsp"></jsp:include>
    <div class="container">
        <header>
            <h1>Introduction to HTML, CSS  & more</h1>
            
            <button class="apply-btn">Web Development</button>
        </header>

        <section class="info">
            <h3>About this course</h3>
            	
            <p>
               Web development is the process of creating and maintaining websites and web applications that run on the internet.
               It involves frontend development (UI/UX), backend development (server-side logic), and databases to build fully functional web solutions.
            </p>
        </section>

        <aside class="details">
            <h3>HTML Introduction</h3>
          
			<ul>
		    <li>HTML stands for Hyper Text Markup Language</li>
		    <li>HTML is the standard markup language for creating Web pages</li>
		    <li>HTML describes the structure of a Web page</li>
		    <li>HTML consists of a series of elements</li>
		    <li>HTML elements tell the browser how to display the content</li>
		    <li>HTML elements label pieces of content such as "this is a heading", "this is a paragraph", "this is a link", etc.</li>
		</ul>

        </aside>
    </div>
      <h1 id="simple">A Simple HTML Document</h1>

    <div class="code-container">
        <h3>Example</h3>
        <div class="code-box">
            <pre>
                <code>
&lt;!DOCTYPE html&gt;
&lt;html&gt;
&lt;head&gt;
    &lt;title&gt;Page Title&lt;/title&gt;
&lt;/head&gt;
&lt;body&gt;

    &lt;h1&gt;My First Heading&lt;/h1&gt;
    &lt;p&gt;My first paragraph.&lt;/p&gt;

&lt;/body&gt;
&lt;/html&gt;
                </code>
            </pre>
        </div>

        <button class="try-btn">Try it Yourself »</button>
    </div>
    
     <h2>Example Explained</h2>

    <ul class="example-list">
        <li>The <code>&lt;!DOCTYPE html&gt;</code> declaration defines that this document is an HTML5 document</li>
        <li>The <code>&lt;html&gt;</code> element is the root element of an HTML page</li>
        <li>The <code>&lt;head&gt;</code> element contains meta information about the HTML page</li>
        <li>The <code>&lt;title&gt;</code> element specifies a title for the HTML page (which is shown in the browser's title bar or in the page's tab)</li>
        <li>The <code>&lt;body&gt;</code> element defines the document's body, and is a container for all the visible contents, such as headings, paragraphs, images, hyperlinks, tables, lists, etc.</li>
        <li>The <code>&lt;h1&gt;</code> element defines a large heading</li>
        <li>The <code>&lt;p&gt;</code> element defines a paragraph</li>
    </ul>

    <h2>What is an HTML Element?</h2>
<div class="example-list"> 
    <p>An HTML element is defined by a start tag, some content, and an end tag:</p>
    <p><code>&lt;tagname&gt;</code> Content goes here... <code>&lt;/tagname&gt;</code></p>

    <p>The HTML <strong>element</strong> is everything from the start tag to the end tag:</p>
</div>
    <pre id="tag">
        <code >
&lt;h1&gt;My First Heading&lt;/h1&gt;
&lt;p&gt;My first paragraph.&lt;/p&gt;
        </code>
    </pre>

    <table class="html-table">
        <tr>
            <th>Start tag</th>
            <th>Element content</th>
            <th>End tag</th>
        </tr>
        <tr>
            <td><code>&lt;h1&gt;</code></td>
            <td>My First Heading</td>
            <td><code>&lt;/h1&gt;</code></td>
        </tr>
        <tr>
            <td><code>&lt;p&gt;</code></td>
            <td>My first paragraph.</td>
            <td><code>&lt;/p&gt;</code></td>
        </tr>
        <tr>
            <td><code>&lt;br&gt;</code></td>
            <td><em>none</em></td>
            <td><em>none</em></td>
        </tr>
    </table>
     <div class="button-container">
        <a href="https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Structuring_content/Basic_HTML_syntax/" target="_blank" class="learn-more-btn">Learn More</a>
    </div>
    

</body>
</html>
