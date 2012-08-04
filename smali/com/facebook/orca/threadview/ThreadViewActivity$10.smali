.class Lcom/facebook/orca/threadview/ThreadViewActivity$10;
.super Ljava/lang/Object;
.source "ThreadViewActivity.java"

# interfaces
.implements Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu$OnQuickActionListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/ThreadViewActivity;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1359
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$10;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;)V
    .locals 1
    .parameter

    .prologue
    .line 1368
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$10;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/common/ui/titlebar/QuickActionPopMenu;)V

    .line 1369
    return-void
.end method

.method public final a(Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;)V
    .locals 1
    .parameter

    .prologue
    .line 1363
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewActivity$10;->a:Lcom/facebook/orca/threadview/ThreadViewActivity;

    invoke-static {v0, p1}, Lcom/facebook/orca/threadview/ThreadViewActivity;->a(Lcom/facebook/orca/threadview/ThreadViewActivity;Lcom/facebook/orca/common/ui/titlebar/TitleBarQuickActionItem;)V

    .line 1364
    return-void
.end method
