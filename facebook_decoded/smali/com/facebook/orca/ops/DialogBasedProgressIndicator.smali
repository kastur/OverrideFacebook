.class public Lcom/facebook/orca/ops/DialogBasedProgressIndicator;
.super Ljava/lang/Object;
.source "DialogBasedProgressIndicator.java"

# interfaces
.implements Lcom/facebook/orca/ops/OperationProgressIndicator;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private c:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;->a:Landroid/content/Context;

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;->b:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;->a:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;->b:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 33
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;->c:Landroid/app/ProgressDialog;

    .line 34
    iget-object v0, p0, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 35
    iget-object v0, p0, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;->c:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 36
    iget-object v0, p0, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 37
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;->c:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;->c:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/orca/ops/DialogBasedProgressIndicator;->c:Landroid/app/ProgressDialog;

    .line 45
    :cond_0
    return-void
.end method
