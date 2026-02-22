// Generate Month Dropdown
let monthSelect = document.getElementById("month");
for(let i = 1; i <= 12; i++){
    let option = document.createElement("option");
    option.value = i;
    option.text = i;
    monthSelect.add(option);
}

// Generate Year Dropdown (Next 10 years)
let yearSelect = document.getElementById("year");
let currentYear = new Date().getFullYear();

for(let i = 0; i < 10; i++){
    let option = document.createElement("option");
    option.value = currentYear + i;
    option.text = currentYear + i;
    yearSelect.add(option);
}

document.getElementById("paymentForm").addEventListener("submit", function(event){

    event.preventDefault();

    let valid = true;

    let name = document.getElementById("cardName").value.trim();
    let cardNumber = document.getElementById("cardNumber").value.trim();
    let cvv = document.getElementById("cvv").value.trim();
    let month = document.getElementById("month").value;
    let year = document.getElementById("year").value;

    document.getElementById("paymentSuccess").innerText = "";

    // Name validation
    if(!/^[A-Za-z ]+$/.test(name)){
        document.getElementById("nameErr").innerText = "Enter valid name";
        valid = false;
    } else {
        document.getElementById("nameErr").innerText = "";
    }

    // Card number validation (example: must start with 4 and 16 digits)
    if(!/^4\d{15}$/.test(cardNumber)){
        document.getElementById("cardErr").innerText = "Invalid card number";
        valid = false;
    } else {
        document.getElementById("cardErr").innerText = "";
    }

    // CVV validation
    if(!/^\d{3}$/.test(cvv)){
        document.getElementById("cvvErr").innerText = "Invalid CVV";
        valid = false;
    } else {
        document.getElementById("cvvErr").innerText = "";
    }

    // Expiry validation
    let today = new Date();
    let expiryDate = new Date(year, month - 1);

    if(expiryDate <= today){
        document.getElementById("expiryErr").innerText = "Card expired";
        valid = false;
    } else {
        document.getElementById("expiryErr").innerText = "";
    }

    if(valid){
        document.getElementById("paymentSuccess").innerText = "Payment Successful";
    }

});