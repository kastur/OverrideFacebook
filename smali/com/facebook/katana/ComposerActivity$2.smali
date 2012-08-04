.class Lcom/facebook/katana/ComposerActivity$2;
.super Ljava/lang/Object;
.source "ComposerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/ComposerActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/ComposerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 687
    iput-object p1, p0, Lcom/facebook/katana/ComposerActivity$2;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    const-wide/16 v7, 0x0

    const/4 v4, 0x1

    .line 690
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$2;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->f(Lcom/facebook/katana/ComposerActivity;)[Lcom/facebook/katana/model/FacebookPhotoTag;

    move-result-object v1

    .line 693
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$2;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->g(Lcom/facebook/katana/ComposerActivity;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    .line 694
    const/4 v3, 0x2

    .line 695
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$2;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->h(Lcom/facebook/katana/ComposerActivity;)Landroid/net/Uri;

    move-result-object v2

    .line 705
    :goto_0
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$2;->a:Lcom/facebook/katana/ComposerActivity;

    iget-object v5, p0, Lcom/facebook/katana/ComposerActivity$2;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v5}, Lcom/facebook/katana/ComposerActivity;->j(Lcom/facebook/katana/ComposerActivity;)J

    move-result-wide v5

    invoke-static/range {v0 .. v6}, Lcom/facebook/katana/activity/media/CameraReviewActivity;->a(Landroid/content/Context;[Lcom/facebook/katana/model/FacebookPhotoTag;Landroid/net/Uri;IZJ)Landroid/content/Intent;

    move-result-object v0

    .line 707
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity$2;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v1}, Lcom/facebook/katana/ComposerActivity;->i(Lcom/facebook/katana/ComposerActivity;)J

    move-result-wide v1

    cmp-long v1, v1, v7

    if-lez v1, :cond_0

    .line 708
    const-string v1, "extra_vault_fbid"

    iget-object v2, p0, Lcom/facebook/katana/ComposerActivity$2;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v2}, Lcom/facebook/katana/ComposerActivity;->i(Lcom/facebook/katana/ComposerActivity;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 710
    :cond_0
    iget-object v1, p0, Lcom/facebook/katana/ComposerActivity$2;->a:Lcom/facebook/katana/ComposerActivity;

    const/16 v2, 0x7c

    invoke-virtual {v1, v0, v2}, Lcom/facebook/katana/ComposerActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 711
    return-void

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$2;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->g(Lcom/facebook/katana/ComposerActivity;)Landroid/net/Uri;

    move-result-object v2

    .line 698
    iget-object v0, p0, Lcom/facebook/katana/ComposerActivity$2;->a:Lcom/facebook/katana/ComposerActivity;

    invoke-static {v0}, Lcom/facebook/katana/ComposerActivity;->i(Lcom/facebook/katana/ComposerActivity;)J

    move-result-wide v5

    cmp-long v0, v5, v7

    if-lez v0, :cond_2

    .line 699
    const/4 v3, 0x3

    goto :goto_0

    :cond_2
    move v3, v4

    .line 701
    goto :goto_0
.end method
