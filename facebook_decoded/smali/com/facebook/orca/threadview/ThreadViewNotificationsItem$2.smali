.class Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$2;
.super Ljava/lang/Object;
.source "ThreadViewNotificationsItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$2;->a:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 99
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$2;->a:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->a(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;)V

    .line 100
    return-void
.end method
