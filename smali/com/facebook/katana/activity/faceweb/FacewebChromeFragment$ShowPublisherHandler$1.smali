.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$1;
.super Ljava/lang/Object;
.source "FacewebChromeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;


# direct methods
.method constructor <init>(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 1666
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$1;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1669
    .line 1670
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$1;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->f(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 1671
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1672
    const-string v2, "extra_composer_title"

    const v3, 0x7f0b039a

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1676
    :goto_0
    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$1;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    iget-object v2, v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->h(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Lcom/facebook/katana/util/logging/InteractionLogger;

    move-result-object v2

    sget-object v3, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElements;->f:Ljava/lang/String;

    sget-object v4, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->i:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1680
    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$1;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    iget-object v2, v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 1681
    return-void

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
