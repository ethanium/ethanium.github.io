document.addEventListener("click", function (event) {
    const trigger = event.target instanceof Element
        ? event.target.closest("[data-project-preview]")
        : null;

    if (!trigger) {
        return;
    }

    const image = trigger.querySelector("img");
    if (!image) {
        return;
    }

    const modalImage = document.getElementById("modal-image");
    modalImage.src = image.src;
    modalImage.alt = image.alt;
    document.getElementById("modal-caption").textContent = image.alt;
    document.getElementById("project-modal").showModal();
});
