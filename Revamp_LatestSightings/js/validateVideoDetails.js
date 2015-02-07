$(document).ready(function () {
    $(".updateVideoDetails").click(function () {
        ClearErrorWarningOnVideoDetailsTextBoxes();
        HideMessageErrorsOnVideoDetails();
        var status = ValidateVidDetails();
        if (status) {
            $(".registerSpinner").show();
            $("#videoTitle").attr("disabled", "disabled");
            $("#alias").attr("disabled", "disabled");
            $("#keywords").attr("disabled", "disabled");
            $("#notes").attr("disabled", "disabled");
            UpdateVideoDetails($("#videoTitle").val(), $("#alias").val(), $("#keywords").val(), $("#notes").val());
        }
    });


    function ClearErrorWarningOnVideoDetailsTextBoxes() {
        ClearErrorStateOfVideoDetailsTextBoxes("#videoTitle");
        ClearErrorStateOfVideoDetailsTextBoxes("#alias");
        ClearErrorStateOfVideoDetailsTextBoxes("#keywords");
        ClearErrorStateOfVideoDetailsTextBoxes("#notes");
    }

    function ClearErrorStateOfVideoDetailsTextBoxes(control) {
        classAttr = $(control).parent().removeClass("has-error");
    }

    function HideMessageErrorsOnVideoDetails() {
        HideErrorMessageOnVideoDetails(".videoTitle");
        HideErrorMessageOnVideoDetails(".alias");
        HideErrorMessageOnVideoDetails(".keywords");
        HideErrorMessageOnVideoDetails(".notes");
    }

    function HideErrorMessageOnVideoDetails(control) {
        $("div " + control).hide();
    }

    function ValidateVidDetails() {
        var valid = true;
        if (isEmpty("#videoTitle")) {
            $("#videoTitle").parent().addClass("has-error");
            $("div .videoTitle").show();
            valid = false;
        }

        if (isEmpty("#alias")) {
            $("#alias").parent().addClass("has-error");
            $("div .alias").show();
            valid = false;
        }

        if (isEmpty("#keywords")) {
            $("#keywords").parent().addClass("has-error");
            $("div .keywords").show();
            valid = false;
        }

        if (isEmpty("#notes")) {
            $("#notes").parent().addClass("has-error");
            $("div .notes").show();
            valid = false;
        }
        return valid;
    }

    function isEmpty(control) {
        if ($(control).val() == "") {
            return true;
        }
        return false;
    }

    function UpdateVideoDetails(videoTitle, alias, keywords, notes) {
        var postUrl = "/AjaxOperation.aspx/SaveVideoDetails";
        $.ajax({
            type: "POST",
            url: postUrl,
            data: "{'videoTitle' : '" + videoTitle + "', 'alias' : '" + alias + "', 'keywords' : '" + keywords + "', 'notes' : '" + notes + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json"
        }).done(
            function (data, textStatus, jqXHR) {
                if (data.d == true) {
                    $(".registerSpinner").hide();
                    //$("#videoTitle").removeAttr("disabled");
                    //$("#alias").removeAttr("disabled");
                    //$("#keywords").removeAttr("disabled");
                    //$("#notes").removeAttr("disabled");
                    $(".videoDetailsSaved").show();

                    setTimeout(function () { location.href = "/dashboard.aspx"; }, 7500);
                } else {
                    $(".registerSpinner").hide();
                    $("#videoTitle").removeAttr("disabled");
                    $("#alias").removeAttr("disabled");
                    $("#keywords").removeAttr("disabled");
                    $("#notes").removeAttr("disabled");
                    $(".videoDetailsSavedError").show();
                }
            }
        ).fail(
            function (data, textStatus, jqXHR) {
            }
        );
    }

});