// https://stackoverflow.com/questions/70548841/how-to-add-custom-js-file-to-new-rails-7-project

function onChangeType() {
  let input = document.getElementById("transaction_transaction_type_id");
  let value = input.options[0].text;

  let nameInput = document.getElementsByClassName("field-unit")[2];
  let materialInput = document.getElementsByClassName("field-unit")[3];

  if (value == 'Outcome') {
    nameInput.classList.add('hidden');
    materialInput.classList.remove('hidden');
  } else {
    nameInput.classList.remove('hidden');
    materialInput.classList.add('hidden');
  }
}

function onChangeMaterial(allData) {
  let input = document.getElementById("transaction_material_id");
  let value = input.options[0].value;

  let selectedData = allData.find(el => el.id == Number(value));

  let inputPrice = document.getElementById("transaction_price");
  inputPrice.value = selectedData.price;

  let inputName = document.getElementById("transaction_name");
  inputName.value = selectedData.name;
}

document.addEventListener("DOMContentLoaded", function() {
  onChangeType();
});

window.Transaction = {
  onChangeMaterial,
  onChangeType,
}