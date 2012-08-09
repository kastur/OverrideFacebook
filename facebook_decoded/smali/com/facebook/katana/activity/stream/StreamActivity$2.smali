.class Lcom/facebook/katana/activity/stream/StreamActivity$2;
.super Ljava/lang/Object;
.source "StreamActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/stream/StreamActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/stream/StreamActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$2;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 238
    iget-object v0, p0, Lcom/facebook/katana/activity/stream/StreamActivity$2;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$2;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity$2;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->a(Lcom/facebook/katana/activity/stream/StreamActivity;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/app/Activity;J)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/stream/StreamActivity;->startActivity(Landroid/content/Intent;)V

    .line 239
    return-void
.end method
