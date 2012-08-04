.class Lcom/facebook/katana/fragment/NotificationsFragment$1;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Lcom/facebook/katana/provider/NotificationsLastUpdatedListener;


# instance fields
.field final synthetic a:Lcom/facebook/katana/fragment/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/facebook/katana/fragment/NotificationsFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/facebook/katana/fragment/NotificationsFragment$1;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2
    .parameter

    .prologue
    .line 143
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment$1;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-static {v0}, Lcom/facebook/katana/fragment/NotificationsFragment;->a(Lcom/facebook/katana/fragment/NotificationsFragment;)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/fragment/NotificationsFragment$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/katana/fragment/NotificationsFragment$1$1;-><init>(Lcom/facebook/katana/fragment/NotificationsFragment$1;J)V

    invoke-virtual {v0, v1}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->post(Ljava/lang/Runnable;)Z

    .line 151
    :cond_0
    return-void
.end method
