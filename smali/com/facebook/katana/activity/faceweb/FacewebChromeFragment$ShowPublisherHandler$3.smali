.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$3;
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
    .line 1708
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$3;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1711
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1712
    const-string v1, "extra_is_checkin"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1714
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$3;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    iget-object v1, v1, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->h(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Lcom/facebook/katana/util/logging/InteractionLogger;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElements;->h:Ljava/lang/String;

    sget-object v3, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1719
    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$3;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    iget-object v1, v1, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/Integer;)V

    .line 1720
    return-void
.end method
