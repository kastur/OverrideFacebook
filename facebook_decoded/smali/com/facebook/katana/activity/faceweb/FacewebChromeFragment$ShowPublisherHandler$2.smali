.class Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$2;
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
    .line 1690
    iput-object p1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$2;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 1694
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$2;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v0}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->h(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)Lcom/facebook/katana/util/logging/InteractionLogger;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$UIElements;->g:Ljava/lang/String;

    sget-object v2, Lcom/facebook/katana/util/logging/FB4A_AnalyticEntities$Modules;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/util/logging/InteractionLogger;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1698
    iget-object v0, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$2;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    iget-object v0, v0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    iget-object v1, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$2;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    iget-object v1, v1, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-virtual {v1}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->k()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler$2;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;

    iget-object v2, v2, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment$ShowPublisherHandler;->a:Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;

    invoke-static {v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->e(Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/facebook/katana/activity/media/CameraActivity;->a(Landroid/app/Activity;J)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/activity/faceweb/FacewebChromeFragment;->a(Landroid/content/Intent;I)V

    .line 1701
    return-void
.end method
