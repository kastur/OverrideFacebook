.class Lcom/facebook/katana/fragment/NotificationsFragment$1$1;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lcom/facebook/katana/fragment/NotificationsFragment$1;


# direct methods
.method constructor <init>(Lcom/facebook/katana/fragment/NotificationsFragment$1;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 144
    iput-object p1, p0, Lcom/facebook/katana/fragment/NotificationsFragment$1$1;->b:Lcom/facebook/katana/fragment/NotificationsFragment$1;

    iput-wide p2, p0, Lcom/facebook/katana/fragment/NotificationsFragment$1$1;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/facebook/katana/fragment/NotificationsFragment$1$1;->b:Lcom/facebook/katana/fragment/NotificationsFragment$1;

    iget-object v0, v0, Lcom/facebook/katana/fragment/NotificationsFragment$1;->a:Lcom/facebook/katana/fragment/NotificationsFragment;

    invoke-static {v0}, Lcom/facebook/katana/fragment/NotificationsFragment;->a(Lcom/facebook/katana/fragment/NotificationsFragment;)Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;

    move-result-object v0

    iget-wide v1, p0, Lcom/facebook/katana/fragment/NotificationsFragment$1$1;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/common/ui/widgets/refreshablelistview/RefreshableListViewContainer;->setLastLoadedTime(J)V

    .line 148
    return-void
.end method
