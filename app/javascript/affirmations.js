document.addEventListener("DOMContentLoaded", () => {
  console.log("JavaScript is loaded and ready");

  const fetchAffirmation = () => {
    console.log("Fetching new affirmation");

    // Fetch the next affirmation from the server
    fetch('/next_affirmation')
      .then(response => response.json())
      .then(data => {
        // Update the content of the affirmation element
        const affirmationElement = document.getElementById("affirmation");
        if (affirmationElement) {
          const pElement = affirmationElement.querySelector("p");
          pElement.innerText = data.content;

          // Re-trigger the animation
          pElement.classList.remove("fade-in");
          void pElement.offsetWidth; // Trigger reflow
          pElement.classList.add("fade-in");
        }
      })
      .catch(error => console.error('Error fetching the next affirmation:', error));
  };

  document.addEventListener("click", fetchAffirmation);
  document.getElementById("refresh-button").addEventListener("click", fetchAffirmation);
});