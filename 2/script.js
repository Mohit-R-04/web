document.getElementById("bookingForm").addEventListener("submit", (event) => {

    event.preventDefault(); // Prevent page reload

    let valid = true;

    // Get values
    let name = document.getElementById("name").value.trim();
    let email = document.getElementById("email").value.trim();
    let mobile = document.getElementById("mobile").value.trim();
    let checkin = document.getElementById("checkin").value;
    let checkout = document.getElementById("checkout").value;
    let guests = document.getElementById("guests").value;
    let room = document.getElementById("room").value;

    // Clear previous messages
    document.getElementById("successMessage").innerText = "";

    // 1. Name Validation
    if(name === "" || !/^[A-Za-z ]+$/.test(name)){
        document.getElementById("nameError").innerText = "Enter valid name (alphabets only)";
        valid = false;
    } else {
        document.getElementById("nameError").innerText = "";
    }

    // 2. Email Validation
    if(!/^\S+@\S+\.\S+$/.test(email)){
        document.getElementById("emailError").innerText = "Enter valid email";
        valid = false;
    } else {
        document.getElementById("emailError").innerText = "";
    }

    // 3. Mobile Validation
    if(!/^\d{10}$/.test(mobile)){
        document.getElementById("mobileError").innerText = "Enter 10 digit mobile number";
        valid = false;
    } else {
        document.getElementById("mobileError").innerText = "";
    }

    // 4. Check-in Date Validation
    let today = new Date().toISOString().split("T")[0];
    if(checkin === "" || checkin < today){
        document.getElementById("checkinError").innerText = "Check-in cannot be past date";
        valid = false;
    } else {
        document.getElementById("checkinError").innerText = "";
    }

    // 5. Check-out Validation
    if(checkout === "" || checkout <= checkin){
        document.getElementById("checkoutError").innerText = "Check-out must be after check-in";
        valid = false;
    } else {
        document.getElementById("checkoutError").innerText = "";
    }

    // 6. Guests Validation
    if(guests <= 0 || guests > 6){
        document.getElementById("guestsError").innerText = "Guests must be between 1 and 6";
        valid = false;
    } else {
        document.getElementById("guestsError").innerText = "";
    }

    // 7. Room Type Validation
    if(room === "Select"){
        document.getElementById("roomError").innerText = "Please select room type";
        valid = false;
    } else {
        document.getElementById("roomError").innerText = "";
    }

    // Final Result
    if(valid){
        document.getElementById("successMessage").innerText = "Booking Successful";
    }

});