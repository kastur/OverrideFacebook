.class Lcom/facebook/katana/ComposerActivity$19;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1529
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 1530
    return-void
.end method
