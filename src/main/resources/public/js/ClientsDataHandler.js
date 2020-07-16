function getName() {
    let name = document.getElementById('name').value;

    if (name === null) {
        alert('Name must be filled')
        throw new Error("Missing data");
    }
    return name;
}

function getSelectedOptions() {
    let selectedIds = [];
    let selectedSectors = document.getElementById('tree').selectedOptions;

    if (selectedSectors.length === 0) {
        alert('Sector(s) must be chosen')
        throw new Error("Missing data");
    }

    for (let i = 0; i < selectedSectors.length; i++) {
        selectedIds.push(selectedSectors[i].value);
    }
    return selectedIds;
}

function getAgreedToTerms() {
    let agreedToTerms = document.getElementById("agreedToTerms").checked

    if (agreedToTerms === false) {
        alert('Agreed to terms must be checked');
        throw new Error("Missing data");
    }

    return agreedToTerms;
}

function submitData() {
    let name = getName();
    let selectedIds = getSelectedOptions();
    let agreedToTerms = getAgreedToTerms();

    const options = {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(selectedIds)
    };

    fetch('http://localhost:8080/client?firstName=' + name + '&terms=' + agreedToTerms, options);

    document.getElementById('save').style.display = 'none';
    document.getElementById('update').style.display = 'unset';
}

function updateData() {
    let name = getName();
    let selectedIds = getSelectedOptions();
    let agreedToTerms = getAgreedToTerms();

    const options = {
        method: 'PUT',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(selectedIds)
    };

    fetch('http://localhost:8080/client?firstName=' + name + '&terms=' + agreedToTerms, options);

}

function getUserData() {
    fetch('http://localhost:8080/client')
        .then(function (response) {
            return response.json()
        }).then(function (clientData) {
        if (clientData.length !== 0) {
            existingUser = true;
            document.getElementById('save').style.display = 'none';
            fillUserData(clientData);
        } else {
            document.getElementById('update').style.display = 'none';
        }
    }).catch(function (error) {
        console.log("Sector loading failed.")
    })
}

function fillUserData(clientData) {
    console.log(clientData)
    document.getElementById('name').value = clientData[0].name;
    clientData.forEach(sector => {
        document.getElementById('itemId' + sector.sectorId).selected = "selected";
    })

}