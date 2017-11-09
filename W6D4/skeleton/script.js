document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const listForm = document.querySelector('.list-container form');
  listForm.addEventListener('submit', (e) => {
    e.preventDefault();
    const place = listForm.querySelector('.favorite-input').value;
    listForm.querySelector('.favorite-input').value = '';
    const places = document.getElementById('sf-places');
    const li = document.createElement('li');
    li.textContent = place;
    places.appendChild(li);
  });

  // adding new photos

  // --- your code here!
  const photoButton = document.querySelector('.photo-show-button');
  photoButton.addEventListener('click', e => {
    document.querySelector('.photo-form-container').className = 'photo-form-container';
  });

  const photoSubmit = document.querySelector('.photo-url-submit');
  photoSubmit.addEventListener('click', e => {
    e.preventDefault();
    const url = document.querySelector('.photo-url-input').value;
    document.querySelector('.photo-url-input').value = '';
    const li = document.createElement('li');
    const img = document.createElement('img');
    img.src = url;
    li.appendChild(img);
    document.querySelector('.dog-photos').appendChild(li);
  });
});
