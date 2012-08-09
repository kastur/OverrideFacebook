.class Lcom/facebook/katana/features/uberbar/UberbarDelegate$1;
.super Ljava/lang/Object;
.source "UberbarDelegate.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private synthetic a:Lcom/facebook/katana/features/uberbar/UberbarDelegate;


# direct methods
.method constructor <init>(Lcom/facebook/katana/features/uberbar/UberbarDelegate;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate$1;->a:Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/facebook/katana/features/uberbar/UberbarDelegate$1;->a:Lcom/facebook/katana/features/uberbar/UberbarDelegate;

    invoke-static {v0, p1}, Lcom/facebook/katana/features/uberbar/UberbarDelegate;->a(Lcom/facebook/katana/features/uberbar/UberbarDelegate;Landroid/text/Editable;)V

    .line 52
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 43
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 46
    return-void
.end method
