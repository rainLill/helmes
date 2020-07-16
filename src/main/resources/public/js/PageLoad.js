let existingUser = false;

function getAllSectors() {
    fetch('http://localhost:8080/sector')
        .then(function (response) {
            return response.json()
        }).then(function (sectorsData) {
        selector(sectorsData)
    }).catch(function (error) {
        console.log("Sector loading failed.")
    })
}


function selector(sectorsData) {
    let tree = [];

    sectorsData.forEach(item => {
        if (item.parentId === null) {
            let children = findChildren(sectorsData, item.id);

            tree.push({
                'id': item.id,
                'sector': item.sector,
                'parentId': item.parentId,
                'children': [children]
            })
        }
    })
    generateSelect(tree)
}


function findChildren(sectorsData, parentId) {
    let result = [];
    sectorsData.forEach(item => {
        if (item.parentId === parentId) {
            var children = findChildren(sectorsData, item.id);

            result.push({
                'id': item.id,
                'sector': item.sector,
                'parentId': item.parentId,
                'children': [children]
            })
        }
    })
    return result;
}


function generateSelect(tree) {
    let indent = 5;
    tree.forEach(child => {
        addOption('tree', indent, child.id, child.sector);

        if (child.children[0].length != 0) {
            addChildren(child.children[0], indent + 10);
        }
    })
    getUserData()
}


function addChildren(children, indent) {
    children.forEach(child => {
        addOption('tree', indent, child.id, child.sector)
        if (child.children[0].length != 0) {
            addChildren(child.children[0], indent + 10);
        }
    });
}

function addOption(element, indent, value, text) {
    let tree = document.getElementById(element);
    let option = document.createElement("option");
    option.style = 'padding: 5px 30px 0 ' + indent + 'px;';
    option.value = value;
    option.id = 'itemId' + value;
    let optionText = document.createTextNode(text);

    option.appendChild(optionText);
    tree.appendChild(option);
}


window.onload = () => {
    getAllSectors()
}