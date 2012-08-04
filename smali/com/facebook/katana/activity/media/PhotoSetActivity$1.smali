.class Lcom/facebook/katana/activity/media/PhotoSetActivity$1;
.super Ljava/lang/Object;
.source "PhotoSetActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/facebook/katana/activity/media/PhotoSetActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/media/PhotoSetActivity;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$1;->b:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    iput-wide p2, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 338
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$1;->b:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    iget-wide v1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$1;->a:J

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Lcom/facebook/katana/activity/media/PhotoSetActivity;J)Lcom/facebook/katana/model/FacebookPhoto;

    move-result-object v0

    .line 339
    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 342
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$1;->b:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    iget-object v2, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$1;->b:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-static {v2}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->g(Lcom/facebook/katana/activity/media/PhotoSetActivity;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$1;->b:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/katana/model/FacebookPhoto;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v4, v0}, Lcom/facebook/katana/binding/AppSession;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->a(Lcom/facebook/katana/activity/media/PhotoSetActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$1;->b:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->removeDialog(I)V

    .line 345
    iget-object v0, p0, Lcom/facebook/katana/activity/media/PhotoSetActivity$1;->b:Lcom/facebook/katana/activity/media/PhotoSetActivity;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/facebook/katana/activity/media/PhotoSetActivity;->showDialog(I)V

    goto :goto_0
.end method
