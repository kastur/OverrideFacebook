.class Lcom/facebook/katana/activity/login/RealLoginActivity$6;
.super Ljava/lang/Object;
.source "RealLoginActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/login/RealLoginActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 582
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 585
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 586
    return-void
.end method
