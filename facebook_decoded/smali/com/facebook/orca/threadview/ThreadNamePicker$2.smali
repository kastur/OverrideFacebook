.class Lcom/facebook/orca/threadview/ThreadNamePicker$2;
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
    .line 88
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$2;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$2;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadNamePicker;->b(Lcom/facebook/orca/threadview/ThreadNamePicker;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$2;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-virtual {v1}, Lcom/facebook/orca/threadview/ThreadNamePicker;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 93
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$2;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-virtual {v0}, Lcom/facebook/orca/threadview/ThreadNamePicker;->dismiss()V

    .line 94
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$2;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadNamePicker;->c(Lcom/facebook/orca/threadview/ThreadNamePicker;)Lcom/facebook/orca/threadview/ThreadNamePicker$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$2;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadNamePicker;->c(Lcom/facebook/orca/threadview/ThreadNamePicker;)Lcom/facebook/orca/threadview/ThreadNamePicker$Listener;

    move-result-object v0

    sget-object v1, Lcom/facebook/orca/threadview/ThreadNamePicker$Result;->NO_CHANGE:Lcom/facebook/orca/threadview/ThreadNamePicker$Result;

    iget-object v2, p0, Lcom/facebook/orca/threadview/ThreadNamePicker$2;->a:Lcom/facebook/orca/threadview/ThreadNamePicker;

    invoke-static {v2}, Lcom/facebook/orca/threadview/ThreadNamePicker;->d(Lcom/facebook/orca/threadview/ThreadNamePicker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/threadview/ThreadNamePicker$Listener;->a(Lcom/facebook/orca/threadview/ThreadNamePicker$Result;Ljava/lang/String;)V

    .line 97
    :cond_0
    return-void
.end method
