function createPerson(data) {
  var url = '/people/';
  var headers = new Headers();
  headers.set('Accept', 'application/json');
  var fetchOptions  = {
    method:  'POST',
    headers,
    body: data
  }
  return fetch(url, fetchOptions)
}

function people() {
  var personForm
  personForm = document.getElementById('personForm')

  personForm.addEventListener('submit', function(event){
    event.preventDefault();
    var formData = new FormData(this)
    // data = serializeArray(this)
     var response = createPerson(formData)
    response.then(function(response){
      console.log('Success');
      console.log(response.json());

    }).then(function(response){
      console.log('Error');
      console.log(JSON.stringify(response));
    });
  });
};

document.addEventListener('DOMContentLoaded', () => {
  people();
});
