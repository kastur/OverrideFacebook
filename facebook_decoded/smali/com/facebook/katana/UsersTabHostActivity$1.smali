.class Lcom/facebook/katana/UsersTabHostActivity$1;
.super Ljava/lang/Object;
.source "UsersTabHostActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/facebook/katana/UsersTabHostActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/UsersTabHostActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/facebook/katana/UsersTabHostActivity$1;->a:Lcom/facebook/katana/UsersTabHostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 96
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 88
    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity$1;->a:Lcom/facebook/katana/UsersTabHostActivity;

    invoke-static {v0}, Lcom/facebook/katana/UsersTabHostActivity;->a(Lcom/facebook/katana/UsersTabHostActivity;)Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/katana/UsersTabProgressSource;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/facebook/katana/UsersTabHostActivity$1;->a:Lcom/facebook/katana/UsersTabHostActivity;

    invoke-static {v0}, Lcom/facebook/katana/UsersTabHostActivity;->a(Lcom/facebook/katana/UsersTabHostActivity;)Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/UsersTabProgressSource;

    invoke-interface {v0, v1}, Lcom/facebook/katana/UsersTabProgressSource;->a(Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method
