<div id="quiz-app">
  <h2>GTU GIS ქვიზი – საცდელი ვერსია</h2>
  <p>შეავსე ქვემოთ მოცემული ველები და დაიწყე ქვიზი</p>

  <!-- User Info -->
  <div id="step-user-info">
    <input type="text" id="fname" placeholder="სახელი" />
    <input type="text" id="lname" placeholder="გვარი" />
    <input type="email" id="email" placeholder="ელ. ფოსტა" />
    <button onclick="startQuiz()">დაწყება</button>
  </div>

  <!-- Quiz Section -->
  <div id="quiz-section" style="display: none;">
    <div id="timer"></div>
    <div id="progress-bar-container"><div id="progress-bar"></div></div>
    <div id="quiz-container"></div>
    <button onclick="nextQuestion()">შემდეგი</button>
  </div>

  <!-- Results -->
  <div id="result-section" style="display: none;">
    <h3>მადლობა, <span id="user-name"></span>!</h3>
    <p>შენი ქულაა: <strong><span id="user-score"></span></strong></p>
    <button onclick="downloadJSON()">JSON-ის გადმოწერა</button>
    <button onclick="resetQuiz()">დასაწყისში დაბრუნება</button>
  </div>
</div>

<style>
#quiz-app {
  font-family: Arial, sans-serif;
  max-width: 600px;
  margin: auto;
  padding: 1em;
  background: #f9f9ff;
  border-radius: 12px;
  box-shadow: 0 0 10px rgba(132, 98, 255, 0.2);
}
#quiz-app input[type=text],
#quiz-app input[type=email] {
  width: 100%;
  padding: 8px;
  margin-bottom: 10px;
  border-radius: 8px;
  border: 1px solid #ccc;
}
#quiz-app button {
  background-color: #8462ff;
  color: white;
  border: none;
  padding: 10px 20px;
  margin-top: 10px;
  border-radius: 8px;
  cursor: pointer;
}
#quiz-app button:hover {
  background-color: #6d50e0;
}
#timer {
  font-weight: bold;
  color: red;
  margin-bottom: 10px;
}
#progress-bar-container {
  width: 100%;
  background: #ddd;
  border-radius: 10px;
  height: 10px;
  margin-bottom: 15px;
}
#progress-bar {
  height: 10px;
  background-color: #8462ff;
  width: 0%;
  border-radius: 10px;
}
</style>

<script>
const quizData = {
  user: {},
  answers: {},
  score: 0
};

const questions = [
  {
    question: "დედაქალაქი საქართველოს?",
    name: "q1",
    options: ["ბათუმი", "თბილისი", "ქუთაისი"],
    correct: "თბილისი"
  },
  {
    question: "რომელი მდინარე მიედინება თბილისზე?",
    name: "q2",
    options: ["მტკვარი", "რიონი", "ალაზანი"],
    correct: "მტკვარი"
  }
];

let shuffledQuestions = [];
let currentQuestion = 0;
let timerInterval;
let timeLeft = 60;

function startQuiz() {
  const fname = document.getElementById('fname').value.trim();
  const lname = document.getElementById('lname').value.trim();
  const email = document.getElementById('email').value.trim();

  if (!fname || !lname || !email) {
    alert("გთხოვ შეავსე ყველა ველი.");
    return;
  }

  quizData.user = { fname, lname, email };
  shuffledQuestions = [...questions].sort(() => Math.random() - 0.5);
  document.getElementById('step-user-info').style.display = 'none';
  document.getElementById('quiz-section').style.display = 'block';
  showQuestion();
  startTimer();
}

function showQuestion() {
  const q = shuffledQuestions[currentQuestion];
  const container = document.getElementById('quiz-container');
  container.innerHTML = `<p>${q.question}</p>` + 
    q.options.map(opt => `
      <label><input type="radio" name="${q.name}" value="${opt}"> ${opt}</label><br>
    `).join('');
  
  updateProgress();
}

function nextQuestion() {
  const q = shuffledQuestions[currentQuestion];
  const selected = document.querySelector(`input[name="${q.name}"]:checked`);
  if (selected) quizData.answers[q.name] = selected.value;

  currentQuestion++;
  if (currentQuestion < shuffledQuestions.length) {
    showQuestion();
  } else {
    finishQuiz();
  }
}

function finishQuiz() {
  clearInterval(timerInterval);
  shuffledQuestions.forEach(q => {
    if (quizData.answers[q.name] === q.correct) {
      quizData.score++;
    }
  });

  document.getElementById('quiz-section').style.display = 'none';
  document.getElementById('user-name').innerText = quizData.user.fname;
  document.getElementById('user-score').innerText = `${quizData.score}/${shuffledQuestions.length}`;
  document.getElementById('result-section').style.display = 'block';
}

function updateProgress() {
  const progress = ((currentQuestion) / shuffledQuestions.length) * 100;
  document.getElementById('progress-bar').style.width = `${progress}%`;
}

function startTimer() {
  timeLeft = 60;
  document.getElementById('timer').innerText = `დარჩენილი დრო: ${timeLeft} წთ`;
  timerInterval = setInterval(() => {
    timeLeft--;
    document.getElementById('timer').innerText = `დარჩენილი დრო: ${timeLeft} წთ`;
    if (timeLeft <= 0) finishQuiz();
  }, 1000);
}

function downloadJSON() {
  const dataStr = "data:text/json;charset=utf-8," + encodeURIComponent(JSON.stringify(quizData, null, 2));
  const dlAnchor = document.createElement('a');
  dlAnchor.setAttribute("href", dataStr);
  dlAnchor.setAttribute("download", "quiz_result.json");
  dlAnchor.click();
}

function resetQuiz() {
  quizData.user = {};
  quizData.answers = {};
  quizData.score = 0;
  currentQuestion = 0;
  document.getElementById('fname').value = '';
  document.getElementById('lname').value = '';
  document.getElementById('email').value = '';
  document.getElementById('step-user-info').style.display = 'block';
  document.getElementById('quiz-section').style.display = 'none';
  document.getElementById('result-section').style.display = 'none';
  document.getElementById('progress-bar').style.width = '0%';
}
</script>
