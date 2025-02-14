// Import Firebase functions
import { initializeApp } from "firebase/app";
import { getFirestore, collection, addDoc, getDocs, deleteDoc, doc, updateDoc } from "firebase/firestore"; 

// Firebase Configuration
const firebaseConfig = {
  apiKey: "AIzaSyA67lSjtXjdnUGYHtJCmFuJW2H7WQMKrGI",
  authDomain: "personal-task-management-192d3.firebaseapp.com",
  projectId: "personal-task-management-192d3",
  storageBucket: "personal-task-management-192d3.firebasestorage.app",
  messagingSenderId: "1085566331818",
  appId: "1:1085566331818:web:0325fe94d2d2ed05b259d3",
  measurementId: "G-JMDN5RN2GL"
};

// Initialize Firebase
const app = initializeApp(firebaseConfig);
const db = getFirestore(app);

document.addEventListener("DOMContentLoaded", async function() {
    const taskInput = document.getElementById("taskInput");
    const addTaskButton = document.getElementById("addTask");
    const taskList = document.getElementById("taskList");

    async function fetchTasks() {
        taskList.innerHTML = "";
        const querySnapshot = await getDocs(collection(db, "tasks"));
        querySnapshot.forEach((taskDoc) => {
            const task = taskDoc.data();
            const li = document.createElement("li");
            li.innerHTML = `
                <span class="${task.completed ? 'completed' : ''}" onclick="toggleTask('${taskDoc.id}', ${task.completed})">${task.text}</span>
                <button onclick="deleteTask('${taskDoc.id}')">Delete</button>
            `;
            taskList.appendChild(li);
        });
    }

    addTaskButton.addEventListener("click", async function() {
        if (taskInput.value.trim() !== "") {
            await addDoc(collection(db, "tasks"), {
                text: taskInput.value,
                completed: false
            });
            taskInput.value = "";
            fetchTasks();
        }
    });

    window.deleteTask = async function(taskId) {
        await deleteDoc(doc(db, "tasks", taskId));
        fetchTasks();
    };

    window.toggleTask = async function(taskId, currentStatus) {
        await updateDoc(doc(db, "tasks", taskId), {
            completed: !currentStatus
        });
        fetchTasks();
    };

    fetchTasks();
});

// Dark Mode Toggle
const darkModeButton = document.getElementById("toggleDarkMode");

darkModeButton.addEventListener("click", function() {
    document.body.classList.toggle("dark-mode");
    localStorage.setItem("darkMode", document.body.classList.contains("dark-mode"));
});

// Load dark mode setting
if (localStorage.getItem("darkMode") === "true") {
    document.body.classList.add("dark-mode");
}
