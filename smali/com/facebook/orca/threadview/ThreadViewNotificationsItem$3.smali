.class Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$3;
.super Ljava/lang/Object;
.source "ThreadViewNotificationsItem.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Landroid/content/Context;

.field private synthetic b:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;


# direct methods
.method constructor <init>(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$3;->b:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    iput-object p2, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$3;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$3;->b:Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;

    invoke-static {v0}, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;->b(Lcom/facebook/orca/threadview/ThreadViewNotificationsItem;)Lcom/facebook/orca/intents/MessagingIntentUris;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$3;->a:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/facebook/orca/intents/MessagingIntentUris;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/facebook/orca/threadview/ThreadViewNotificationsItem$3;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 158
    return-void
.end method
