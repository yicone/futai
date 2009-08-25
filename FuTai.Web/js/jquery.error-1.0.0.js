var Error = function(inputId, errId, accross) {
    this.inputId = inputId;
    this.accross = accross;

    var $errEle;
    var $input = $('#' + this.inputId);

    var init = function() {
        var offset = $input.offset();
        if (!offset) {
            return;
        }

        var height = $input.attr('offsetHeight') - 3;

        if (errId) {
            $errEle = $('#' + errId);
        }
        else {
            $errEle = $('<div></div>');

        }

        $errEle.addClass('TipBox2');
        $errEle.height(height);
        $errEle.css('position', 'absolute');

        $errEle.css('line-height', height + 'px');

        $errEle.hide();
        $input.after($errEle);
    };

    this.show = function(msg) {
        var offset = $input.offset();
        if (!offset) {
            return;
        }

        var width = $input.width();
        //浮动窗体位置判断
        $errEle.css('left', offset.left + width + (accross ? accross : 8));
        $errEle.css('top', offset.top);

        $errEle.html(msg);
        $errEle.show();
        //todo: 考虑去留
        $input.focus(function() {
            $errEle.hide();
        });
    };

    init();
};

(function($) {
    $.fn.error = function(msg, accross) {
        return this.each(function() {

            var err = new Error(this.id, null, accross);
            err.show(msg);
        });
    };

    // 隐藏的元素不需要验证
    $.fn.needValidate = function() {
        if (this.css("display") == "none" || this.css("visibility") == "hidden") {
            return false;
        }
        var list = this.parents(":hidden");
        for (var i = 0; i < list.length; i++) {
            if (this == $(list[i]) || list.css("display") == "none" ||
            list.css("visibility") == "hidden") {
                return false;
            }
        }
        return true;
    }
})(jQuery);

function ValidateRule(validate, showError) {
    this.validate = validate;
    this.showError = showError;

    if (typeof ValidateRule._initialized == 'undefined') {
        ValidateRule.prototype.Validate = function() {
            return this.validate();
        };

        ValidateRule.prototype.IfError = function() {
            var haserr = !this.validate();

            if (haserr) {
                this.showError();
            }

            return haserr;
        };

        ValidateRule._initialized = true;
    }
}
