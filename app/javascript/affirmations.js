document.addEventListener("DOMContentLoaded", () => {
  console.log("JavaScript is loaded and ready");
  document.body.addEventListener("click", () => {
    console.log("Body was clicked");
    // Fetch the next affirmation from the server
    fetch('/next_affirmation')
      .then(response => response.json())
      .then(data => {
        // Update the content of the affirmation element
        document.getElementById("affirmation").innerText = data.content;
      })
      .catch(error => console.error('Error fetching the next affirmation:', error));
  });
});