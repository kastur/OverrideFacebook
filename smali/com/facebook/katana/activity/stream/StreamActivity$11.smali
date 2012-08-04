.class Lcom/facebook/katana/activity/stream/StreamActivity$11;
.super Ljava/lang/Object;
.source "StreamActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 993
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 996
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 997
    return-void
.end method
