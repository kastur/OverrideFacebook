.class Lcom/facebook/orca/threadview/ThreadNamePicker$1;
.super Ljava/lang/Object;
.source "ThreadNamePicker.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/ThreadNamePicker;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadNamePicker;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$1;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$1;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadNamePicker;->a(Lcom/facebook/orca/threadview/ThreadNamePicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/facebook/orca/common/util/StringUtil;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$1;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadNamePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(Landroid/content/Context;)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/orca/R$string;->thread_name_dialog_blank_error:I

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a(I)Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/common/dialogs/ErrorDialogBuilder;->a()Landroid/app/AlertDialog;

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$1;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadNamePicker;->b(Lcom/facebook/orca/threadview/ThreadNamePicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$1;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-virtual {v2}, Lcom/facebook/orca/threadview/ThreadNamePicker;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 80
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$1;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadNamePicker;->dismiss()V

    .line 81
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$1;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadNamePicker;->c(Lcom/facebook/orca/threadview/ThreadNamePicker;)Lcom/facebook/orca/threadview/ThreadNamePicker$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$1;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadNamePicker;->d(Lcom/facebook/orca/threadview/ThreadNamePicker;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/facebook/orca/threadview/ThreadNamePicker$Result;->NO_CHANGE:Lcom/facebook/orca/threadview/ThreadNamePicker$Result;

    .line 83
    :goto_1
    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$1;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-static {v2}, Lcom/facebook/orca/threadview/ThreadNamePicker;->c(Lcom/facebook/orca/threadview/ThreadNamePicker;)Lcom/facebook/orca/threadview/ThreadNamePicker$Listener;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/threadview/ThreadNamePicker$Listener;->a(Lcom/facebook/orca/threadview/ThreadNamePicker$Result;Ljava/lang/String;)V

    goto :goto_0

    .line 82
    :cond_2
    sget-object v0, Lcom/facebook/orca/threadview/ThreadNamePicker$Result;->CHANGE:Lcom/facebook/orca/threadview/ThreadNamePicker$Result;

    goto :goto_1
.end method
