({
	fireCompEvent : function(cmp, evt, hlp) {
        var evt = cmp.getEvent("compEvent");
        var msg = cmp.get("v.src");
        evt.setParam("message", msg);
        evt.fire();
	},
    fireAppEvent : function(cmp, evt, hlp) {
        var evt = cmp.getEvent("appEvent");
        var msg = cmp.get("v.src");
        evt.setParam("message", msg);
        evt.fire();
	}
})