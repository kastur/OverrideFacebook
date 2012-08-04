.class Lcom/facebook/katana/activity/stream/StreamActivity$5;
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
    .line 297
    iput-object p1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$5;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$5;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const-class v2, Lcom/facebook/katana/activity/profilelist/FriendMultiSelectorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 302
    const-string v1, "profiles"

    iget-object v2, p0, Lcom/facebook/katana/activity/stream/StreamActivity$5;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    iget-object v2, v2, Lcom/facebook/katana/activity/stream/StreamActivity;->n:Ljava/util/Set;

    invoke-static {v2}, Lcom/facebook/katana/util/IntentUtils;->a(Ljava/util/Set;)[J

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 305
    iget-object v1, p0, Lcom/facebook/katana/activity/stream/StreamActivity$5;->a:Lcom/facebook/katana/activity/stream/StreamActivity;

    const/16 v2, 0x64

    invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/activity/stream/StreamActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 306
    return-void
.end method
