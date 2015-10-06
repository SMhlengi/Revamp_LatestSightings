var BILLBOARDS = [];

function constructBillboard(json) {
    BILLBOARDS = json;
}

$(document).ready(function () {
    console.log("---- homePageBillboard ---");
    console.log(BILLBOARDS);

});